; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_net_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_net_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_DELLINK = common dso_local global i32 0, align 4
@KOBJ_REMOVE = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4
@NETDEV_REGISTER = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_change_net_namespace(%struct.net_device* %0, %struct.net* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %134

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NETREG_REGISTERED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %134

27:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @dev_net(%struct.net_device* %28)
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = call i64 @net_eq(i32 %29, %struct.net* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %134

34:                                               ; preds = %27
  %35 = load i32, i32* @EEXIST, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @__dev_get_by_name(%struct.net* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %134

47:                                               ; preds = %43
  %48 = load %struct.net*, %struct.net** %5, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @dev_get_valid_name(%struct.net* %48, %struct.net_device* %49, i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %134

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @dev_close(%struct.net_device* %57)
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = call i32 @unlist_netdevice(%struct.net_device* %59)
  %61 = call i32 (...) @synchronize_net()
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @dev_shutdown(%struct.net_device* %62)
  %64 = load i32, i32* @NETDEV_UNREGISTER, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @call_netdevice_notifiers(i32 %64, %struct.net_device* %65)
  %67 = call i32 (...) @rcu_barrier()
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @dev_net(%struct.net_device* %68)
  %70 = load %struct.net*, %struct.net** %5, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @peernet2id_alloc(i32 %69, %struct.net* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.net*, %struct.net** %5, align 8
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @__dev_get_by_index(%struct.net* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %56
  %80 = load %struct.net*, %struct.net** %5, align 8
  %81 = call i32 @dev_new_index(%struct.net* %80)
  store i32 %81, i32* %9, align 4
  br label %86

82:                                               ; preds = %56
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* @RTM_DELLINK, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @rtmsg_ifinfo_newnet(i32 %87, %struct.net_device* %88, i32 -1, i32 %89, i32* %8, i32 %90)
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 @dev_uc_flush(%struct.net_device* %92)
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = call i32 @dev_mc_flush(%struct.net_device* %94)
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* @KOBJ_REMOVE, align 4
  %100 = call i32 @kobject_uevent(i32* %98, i32 %99)
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i32 @netdev_adjacent_del_links(%struct.net_device* %101)
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = load %struct.net*, %struct.net** %5, align 8
  %105 = call i32 @dev_net_set(%struct.net_device* %103, %struct.net* %104)
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* @KOBJ_ADD, align 4
  %113 = call i32 @kobject_uevent(i32* %111, i32 %112)
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = call i32 @netdev_adjacent_add_links(%struct.net_device* %114)
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 4
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @device_rename(%struct.TYPE_2__* %117, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @WARN_ON(i32 %122)
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = call i32 @list_netdevice(%struct.net_device* %124)
  %126 = load i32, i32* @NETDEV_REGISTER, align 4
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = call i32 @call_netdevice_notifiers(i32 %126, %struct.net_device* %127)
  %129 = load i32, i32* @RTM_NEWLINK, align 4
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i32 @rtmsg_ifinfo(i32 %129, %struct.net_device* %130, i32 -1, i32 %131)
  %133 = call i32 (...) @synchronize_net()
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %86, %54, %46, %33, %26, %19
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @dev_get_valid_name(%struct.net*, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @unlist_netdevice(%struct.net_device*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @dev_shutdown(%struct.net_device*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @peernet2id_alloc(i32, %struct.net*, i32) #1

declare dso_local i64 @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @dev_new_index(%struct.net*) #1

declare dso_local i32 @rtmsg_ifinfo_newnet(i32, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_uc_flush(%struct.net_device*) #1

declare dso_local i32 @dev_mc_flush(%struct.net_device*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @netdev_adjacent_del_links(%struct.net_device*) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #1

declare dso_local i32 @netdev_adjacent_add_links(%struct.net_device*) #1

declare dso_local i32 @device_rename(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_netdevice(%struct.net_device*) #1

declare dso_local i32 @rtmsg_ifinfo(i32, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
