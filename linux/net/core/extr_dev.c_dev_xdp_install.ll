; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_xdp_install.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_xdp_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack*, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.bpf_prog = type { i32 }

@XDP_FLAGS_HW_MODE = common dso_local global i32 0, align 4
@XDP_SETUP_PROG_HW = common dso_local global i32 0, align 4
@XDP_SETUP_PROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, %struct.netlink_ext_ack*, i32, %struct.bpf_prog*)* @dev_xdp_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_xdp_install(%struct.net_device* %0, i32 (%struct.net_device*, %struct.netdev_bpf*)* %1, %struct.netlink_ext_ack* %2, i32 %3, %struct.bpf_prog* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32 (%struct.net_device*, %struct.netdev_bpf*)*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.netdev_bpf, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 (%struct.net_device*, %struct.netdev_bpf*)* %1, i32 (%struct.net_device*, %struct.netdev_bpf*)** %7, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.bpf_prog* %4, %struct.bpf_prog** %10, align 8
  %12 = call i32 @memset(%struct.netdev_bpf* %11, i32 0, i32 32)
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @XDP_FLAGS_HW_MODE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @XDP_SETUP_PROG_HW, align 4
  %19 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  br label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @XDP_SETUP_PROG, align 4
  %22 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %25 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 2
  store %struct.netlink_ext_ack* %24, %struct.netlink_ext_ack** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %29 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 1
  store %struct.bpf_prog* %28, %struct.bpf_prog** %29, align 8
  %30 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %7, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = call i32 %30(%struct.net_device* %31, %struct.netdev_bpf* %11)
  ret i32 %32
}

declare dso_local i32 @memset(%struct.netdev_bpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
