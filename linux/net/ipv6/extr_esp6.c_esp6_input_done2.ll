; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_input_done2.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_input_done2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_3__, %struct.crypto_aead* }
%struct.TYPE_3__ = type { i64 }
%struct.crypto_aead = type { i32 }
%struct.xfrm_offload = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CRYPTO_DONE = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@IPPROTO_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp6_input_done2(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_offload*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %10)
  store %struct.xfrm_state* %11, %struct.xfrm_state** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %12)
  store %struct.xfrm_offload* %13, %struct.xfrm_offload** %6, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 1
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %15, align 8
  store %struct.crypto_aead* %16, %struct.crypto_aead** %7, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %18 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %17)
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @skb_network_header_len(%struct.sk_buff* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %25 = icmp ne %struct.xfrm_offload* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %28 = icmp ne %struct.xfrm_offload* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %31 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CRYPTO_DONE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_4__* @ESP_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kfree(i32 %40)
  br label %42

42:                                               ; preds = %36, %29, %26
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %88

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @esp_remove_trailer(%struct.sk_buff* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %88

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32 @skb_network_header(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @skb_network_header_len(%struct.sk_buff* %60)
  %62 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %57, i32 %59, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @skb_pull_rcsum(%struct.sk_buff* %63, i32 %64)
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %56
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @skb_reset_transport_header(%struct.sk_buff* %73)
  br label %80

75:                                               ; preds = %56
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @skb_set_transport_header(%struct.sk_buff* %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @IPPROTO_NONE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %55, %46
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.TYPE_4__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @esp_remove_trailer(%struct.sk_buff*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
