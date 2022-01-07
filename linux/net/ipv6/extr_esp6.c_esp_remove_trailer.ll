; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_remove_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_remove_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.xfrm_state = type { %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }
%struct.xfrm_offload = type { i32, i32 }

@XFRM_ESP_NO_TRAILER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ipsec esp packet is garbage padlen=%d, elen=%d\0A\00", align 1
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @esp_remove_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_remove_trailer(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.xfrm_offload*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %14)
  store %struct.xfrm_state* %15, %struct.xfrm_state** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %16)
  store %struct.xfrm_offload* %17, %struct.xfrm_offload** %4, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 0
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %19, align 8
  store %struct.crypto_aead* %20, %struct.crypto_aead** %5, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %22 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %24 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %23)
  %25 = sext i32 %24 to i64
  %26 = add i64 4, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.xfrm_offload*, %struct.xfrm_offload** %4, align 8
  %34 = icmp ne %struct.xfrm_offload* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load %struct.xfrm_offload*, %struct.xfrm_offload** %4, align 8
  %37 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XFRM_ESP_NO_TRAILER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.xfrm_offload*, %struct.xfrm_offload** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  br label %116

46:                                               ; preds = %35, %1
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 2
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %55 = call i32 @skb_copy_bits(%struct.sk_buff* %47, i32 %53, i32* %54, i32 2)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 2
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %46
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 2
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  br label %116

75:                                               ; preds = %46
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %10, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %75
  %86 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @skb_checksum(%struct.sk_buff* %86, i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i32 @csum_block_sub(i32 %96, i32 %97, i32 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %85, %75
  %107 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @pskb_trim(%struct.sk_buff* %107, i32 %112)
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %106, %68, %42
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @csum_block_sub(i32, i32, i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
