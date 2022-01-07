; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_remove_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_remove_trailer.c"
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
  br label %118

46:                                               ; preds = %35, %1
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 2
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %55 = call i64 @skb_copy_bits(%struct.sk_buff* %47, i32 %53, i32* %54, i32 2)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 2
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 2
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75)
  br label %118

77:                                               ; preds = %59
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %10, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @skb_checksum(%struct.sk_buff* %88, i32 %93, i32 %94, i32 0)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @csum_block_sub(i32 %98, i32 %99, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %87, %77
  %109 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @pskb_trim(%struct.sk_buff* %109, i32 %114)
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %108, %70, %42
  %119 = load i32, i32* %13, align 4
  ret i32 %119
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

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
