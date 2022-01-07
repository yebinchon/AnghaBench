; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_dtab_netdev = type { %struct.net_device* }
%struct.xdp_buff = type { i64, i64 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_frame = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_map_enqueue(%struct.bpf_dtab_netdev* %0, %struct.xdp_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_dtab_netdev*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.xdp_frame*, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_dtab_netdev* %0, %struct.bpf_dtab_netdev** %5, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %11 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_dtab_netdev, %struct.bpf_dtab_netdev* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %26 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %29 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = call i32 @xdp_ok_fwd_dev(%struct.net_device* %24, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %55

38:                                               ; preds = %23
  %39 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %40 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %39)
  store %struct.xdp_frame* %40, %struct.xdp_frame** %9, align 8
  %41 = load %struct.xdp_frame*, %struct.xdp_frame** %9, align 8
  %42 = icmp ne %struct.xdp_frame* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EOVERFLOW, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %38
  %51 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %5, align 8
  %52 = load %struct.xdp_frame*, %struct.xdp_frame** %9, align 8
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = call i32 @bq_enqueue(%struct.bpf_dtab_netdev* %51, %struct.xdp_frame* %52, %struct.net_device* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %47, %36, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @xdp_ok_fwd_dev(%struct.net_device*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i32 @bq_enqueue(%struct.bpf_dtab_netdev*, %struct.xdp_frame*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
