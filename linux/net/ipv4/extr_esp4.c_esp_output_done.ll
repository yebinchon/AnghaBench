; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.xfrm_offload = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.TYPE_3__ = type { %struct.xfrm_state* }
%struct.TYPE_4__ = type { i8* }

@XFRM_DEV_RESUME = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTSTATEPROTOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @esp_output_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_output_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_offload*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.sec_path*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %10, i32 0, i32 0
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %13)
  store %struct.xfrm_offload* %14, %struct.xfrm_offload** %6, align 8
  %15 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %16 = icmp ne %struct.xfrm_offload* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XFRM_DEV_RESUME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %25)
  store %struct.sec_path* %26, %struct.sec_path** %9, align 8
  %27 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %28 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %27, i32 0, i32 1
  %29 = load %struct.xfrm_state**, %struct.xfrm_state*** %28, align 8
  %30 = load %struct.sec_path*, %struct.sec_path** %9, align 8
  %31 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %29, i64 %34
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %35, align 8
  store %struct.xfrm_state* %36, %struct.xfrm_state** %8, align 8
  br label %42

37:                                               ; preds = %17, %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_3__* @skb_dst(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %40, align 8
  store %struct.xfrm_state* %41, %struct.xfrm_state** %8, align 8
  br label %42

42:                                               ; preds = %37, %24
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call %struct.TYPE_4__* @ESP_SKB_CB(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %7, align 8
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @esp_ssg_unref(%struct.xfrm_state* %47, i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %53 = icmp ne %struct.xfrm_offload* %52, null
  br i1 %53, label %54, label %84

54:                                               ; preds = %42
  %55 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %56 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @XFRM_DEV_RESUME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %66 = call i32 @xs_net(%struct.xfrm_state* %65)
  %67 = load i32, i32* @LINUX_MIB_XFRMOUTSTATEPROTOERROR, align 4
  %68 = call i32 @XFRM_INC_STATS(i32 %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %88

71:                                               ; preds = %61
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i64 @skb_mac_header(%struct.sk_buff* %76)
  %78 = sub nsw i64 %75, %77
  %79 = call i32 @skb_push(%struct.sk_buff* %72, i64 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @secpath_reset(%struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @xfrm_dev_resume(%struct.sk_buff* %82)
  br label %88

84:                                               ; preds = %54, %42
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @xfrm_output_resume(%struct.sk_buff* %85, i32 %86)
  br label %88

88:                                               ; preds = %64, %84, %71
  ret void
}

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @esp_ssg_unref(%struct.xfrm_state*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @XFRM_INC_STATS(i32, i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_dev_resume(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_output_resume(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
