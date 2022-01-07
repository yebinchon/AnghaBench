; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inetdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inetdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32, i32, %struct.TYPE_6__, i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32* }
%struct.net_device = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@FORWARDING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in_device* (%struct.net_device*)* @inetdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in_device* @inetdev_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.in_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.in_device* @kzalloc(i32 32, i32 %8)
  store %struct.in_device* %9, %struct.in_device** %3, align 8
  %10 = load %struct.in_device*, %struct.in_device** %3, align 8
  %11 = icmp ne %struct.in_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %81

13:                                               ; preds = %1
  %14 = load %struct.in_device*, %struct.in_device** %3, align 8
  %15 = getelementptr inbounds %struct.in_device, %struct.in_device* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call %struct.TYPE_7__* @dev_net(%struct.net_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(%struct.TYPE_6__* %15, i32 %20, i32 8)
  %22 = load %struct.in_device*, %struct.in_device** %3, align 8
  %23 = getelementptr inbounds %struct.in_device, %struct.in_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load %struct.in_device*, %struct.in_device** %3, align 8
  %27 = getelementptr inbounds %struct.in_device, %struct.in_device* %26, i32 0, i32 4
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @neigh_parms_alloc(%struct.net_device* %28, i32* @arp_tbl)
  %30 = load %struct.in_device*, %struct.in_device** %3, align 8
  %31 = getelementptr inbounds %struct.in_device, %struct.in_device* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.in_device*, %struct.in_device** %3, align 8
  %33 = getelementptr inbounds %struct.in_device, %struct.in_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %13
  br label %90

37:                                               ; preds = %13
  %38 = load %struct.in_device*, %struct.in_device** %3, align 8
  %39 = getelementptr inbounds %struct.in_device, %struct.in_device* %38, i32 0, i32 2
  %40 = load i32, i32* @FORWARDING, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IPV4_DEVCONF(i32* %42, i32 %40)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @dev_disable_lro(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @dev_hold(%struct.net_device* %49)
  %51 = load %struct.in_device*, %struct.in_device** %3, align 8
  %52 = getelementptr inbounds %struct.in_device, %struct.in_device* %51, i32 0, i32 1
  %53 = call i32 @refcount_set(i32* %52, i32 1)
  %54 = load %struct.in_device*, %struct.in_device** %3, align 8
  %55 = call i32 @devinet_sysctl_register(%struct.in_device* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.in_device*, %struct.in_device** %3, align 8
  %60 = getelementptr inbounds %struct.in_device, %struct.in_device* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.in_device*, %struct.in_device** %3, align 8
  %62 = call i32 @in_dev_put(%struct.in_device* %61)
  store %struct.in_device* null, %struct.in_device** %3, align 8
  br label %81

63:                                               ; preds = %48
  %64 = load %struct.in_device*, %struct.in_device** %3, align 8
  %65 = call i32 @ip_mc_init_dev(%struct.in_device* %64)
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFF_UP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.in_device*, %struct.in_device** %3, align 8
  %74 = call i32 @ip_mc_up(%struct.in_device* %73)
  br label %75

75:                                               ; preds = %72, %63
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.in_device*, %struct.in_device** %3, align 8
  %80 = call i32 @rcu_assign_pointer(i32 %78, %struct.in_device* %79)
  br label %81

81:                                               ; preds = %90, %75, %58, %12
  %82 = load %struct.in_device*, %struct.in_device** %3, align 8
  %83 = icmp ne %struct.in_device* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = call %struct.in_device* @ERR_PTR(i32 %86)
  br label %88

88:                                               ; preds = %85, %84
  %89 = phi %struct.in_device* [ %82, %84 ], [ %87, %85 ]
  ret %struct.in_device* %89

90:                                               ; preds = %36
  %91 = load %struct.in_device*, %struct.in_device** %3, align 8
  %92 = call i32 @kfree(%struct.in_device* %91)
  store %struct.in_device* null, %struct.in_device** %3, align 8
  br label %81
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.in_device* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @neigh_parms_alloc(%struct.net_device*, i32*) #1

declare dso_local i64 @IPV4_DEVCONF(i32*, i32) #1

declare dso_local i32 @dev_disable_lro(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @devinet_sysctl_register(%struct.in_device*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

declare dso_local i32 @ip_mc_init_dev(%struct.in_device*) #1

declare dso_local i32 @ip_mc_up(%struct.in_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.in_device*) #1

declare dso_local %struct.in_device* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
