; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_can_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_can_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i32, i32, i32, i32, i32, i32, %struct.canfd_frame* }
%struct.canfd_frame = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*)* @bcm_can_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_can_tx(%struct.bcm_op* %0) #0 {
  %2 = alloca %struct.bcm_op*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.canfd_frame*, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %2, align 8
  %6 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %7 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %6, i32 0, i32 6
  %8 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %9 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %10 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %13 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %8, i64 %16
  store %struct.canfd_frame* %17, %struct.canfd_frame** %5, align 8
  %18 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %19 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %97

23:                                               ; preds = %1
  %24 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %25 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sock_net(i32 %26)
  %28 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %29 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.net_device* @dev_get_by_index(i32 %27, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %97

35:                                               ; preds = %23
  %36 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %37 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 (...) @gfp_any()
  %43 = call %struct.sk_buff* @alloc_skb(i32 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %94

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @can_skb_reserve(%struct.sk_buff* %48)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call %struct.TYPE_2__* @can_skb_prv(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call %struct.TYPE_2__* @can_skb_prv(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %61 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %62 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @skb_put_data(%struct.sk_buff* %59, %struct.canfd_frame* %60, i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store %struct.net_device* %65, %struct.net_device** %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %70 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @can_skb_set_owner(%struct.sk_buff* %68, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @can_send(%struct.sk_buff* %73, i32 1)
  %75 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %76 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %80 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %84 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %87 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %47
  %91 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %92 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %47
  br label %94

94:                                               ; preds = %93, %46
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @dev_put(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %34, %22
  ret void
}

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @can_skb_reserve(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @can_skb_prv(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.canfd_frame*, i32) #1

declare dso_local i32 @can_skb_set_owner(%struct.sk_buff*, i32) #1

declare dso_local i32 @can_send(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
