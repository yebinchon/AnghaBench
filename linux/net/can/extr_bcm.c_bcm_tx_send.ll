; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_tx_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_tx_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MHSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, i32, %struct.sock*, i32)* @bcm_tx_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_tx_send(%struct.msghdr* %0, i32 %1, %struct.sock* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sock* %2, %struct.sock** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %85

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %85

30:                                               ; preds = %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = call i32 @can_skb_reserve(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @skb_put(%struct.sk_buff* %33, i32 %34)
  %36 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @memcpy_from_msg(i32 %35, %struct.msghdr* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %85

45:                                               ; preds = %30
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = call i32 @sock_net(%struct.sock* %46)
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.net_device* @dev_get_by_index(i32 %47, i32 %48)
  store %struct.net_device* %49, %struct.net_device** %11, align 8
  %50 = load %struct.net_device*, %struct.net_device** %11, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %85

57:                                               ; preds = %45
  %58 = load %struct.net_device*, %struct.net_device** %11, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = call %struct.TYPE_2__* @can_skb_prv(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = call %struct.TYPE_2__* @can_skb_prv(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %11, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store %struct.net_device* %67, %struct.net_device** %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = call i32 @can_skb_set_owner(%struct.sk_buff* %70, %struct.sock* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = call i32 @can_send(%struct.sk_buff* %73, i32 1)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.net_device*, %struct.net_device** %11, align 8
  %76 = call i32 @dev_put(%struct.net_device* %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %57
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MHSIZ, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %79, %52, %41, %27, %15
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @can_skb_reserve(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_from_msg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @can_skb_prv(%struct.sk_buff*) #1

declare dso_local i32 @can_skb_set_owner(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @can_send(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
