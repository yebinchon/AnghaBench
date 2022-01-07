; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_generic_xdp_install.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_generic_xdp_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32, i32, %struct.bpf_prog* }
%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@generic_xdp_needed_key = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_bpf*)* @generic_xdp_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_xdp_install(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_bpf*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.bpf_prog* @rtnl_dereference(i32 %10)
  store %struct.bpf_prog* %11, %struct.bpf_prog** %5, align 8
  %12 = load %struct.netdev_bpf*, %struct.netdev_bpf** %4, align 8
  %13 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %12, i32 0, i32 2
  %14 = load %struct.bpf_prog*, %struct.bpf_prog** %13, align 8
  store %struct.bpf_prog* %14, %struct.bpf_prog** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.netdev_bpf*, %struct.netdev_bpf** %4, align 8
  %16 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %65 [
    i32 128, label %18
    i32 129, label %51
  ]

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %23 = call i32 @rcu_assign_pointer(i32 %21, %struct.bpf_prog* %22)
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %25 = icmp ne %struct.bpf_prog* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %28 = call i32 @bpf_prog_put(%struct.bpf_prog* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %31 = icmp ne %struct.bpf_prog* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %34 = icmp ne %struct.bpf_prog* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @static_branch_dec(i32* @generic_xdp_needed_key)
  br label %50

37:                                               ; preds = %32, %29
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %39 = icmp ne %struct.bpf_prog* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %42 = icmp ne %struct.bpf_prog* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = call i32 @static_branch_inc(i32* @generic_xdp_needed_key)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @dev_disable_lro(%struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @dev_disable_gro_hw(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %43, %40, %37
  br label %50

50:                                               ; preds = %49, %35
  br label %68

51:                                               ; preds = %2
  %52 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %53 = icmp ne %struct.bpf_prog* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %59, %54 ], [ 0, %60 ]
  %63 = load %struct.netdev_bpf*, %struct.netdev_bpf** %4, align 8
  %64 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %68

65:                                               ; preds = %2
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %61, %50
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.bpf_prog* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @static_branch_dec(i32*) #1

declare dso_local i32 @static_branch_inc(i32*) #1

declare dso_local i32 @dev_disable_lro(%struct.net_device*) #1

declare dso_local i32 @dev_disable_gro_hw(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
