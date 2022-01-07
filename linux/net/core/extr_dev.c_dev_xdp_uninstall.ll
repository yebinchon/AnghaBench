; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_xdp_uninstall.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_xdp_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.netdev_bpf*)* }
%struct.netdev_bpf = type { i32, i64, i32 }

@XDP_QUERY_PROG = common dso_local global i32 0, align 4
@XDP_QUERY_PROG_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dev_xdp_uninstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_xdp_uninstall(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_bpf, align 8
  %4 = alloca i32 (%struct.net_device*, %struct.netdev_bpf*)*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @dev_xdp_install(%struct.net_device* %5, i32 (%struct.net_device*, %struct.netdev_bpf*)* @generic_xdp_install, i32* null, i32 0, i32* null)
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %11, align 8
  store i32 (%struct.net_device*, %struct.netdev_bpf*)* %12, i32 (%struct.net_device*, %struct.netdev_bpf*)** %4, align 8
  %13 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %4, align 8
  %14 = icmp ne i32 (%struct.net_device*, %struct.netdev_bpf*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %53

16:                                               ; preds = %1
  %17 = call i32 @memset(%struct.netdev_bpf* %3, i32 0, i32 24)
  %18 = load i32, i32* @XDP_QUERY_PROG, align 4
  %19 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 %20(%struct.net_device* %21, %struct.netdev_bpf* %3)
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %4, align 8
  %30 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_xdp_install(%struct.net_device* %28, i32 (%struct.net_device*, %struct.netdev_bpf*)* %29, i32* null, i32 %31, i32* null)
  %33 = call i32 @WARN_ON(i32 %32)
  br label %34

34:                                               ; preds = %27, %16
  %35 = call i32 @memset(%struct.netdev_bpf* %3, i32 0, i32 24)
  %36 = load i32, i32* @XDP_QUERY_PROG_HW, align 4
  %37 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 %38(%struct.net_device* %39, %struct.netdev_bpf* %3)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %4, align 8
  %49 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_xdp_install(%struct.net_device* %47, i32 (%struct.net_device*, %struct.netdev_bpf*)* %48, i32* null, i32 %50, i32* null)
  %52 = call i32 @WARN_ON(i32 %51)
  br label %53

53:                                               ; preds = %15, %46, %42, %34
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_xdp_install(%struct.net_device*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32*, i32, i32*) #1

declare dso_local i32 @generic_xdp_install(%struct.net_device*, %struct.netdev_bpf*) #1

declare dso_local i32 @memset(%struct.netdev_bpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
