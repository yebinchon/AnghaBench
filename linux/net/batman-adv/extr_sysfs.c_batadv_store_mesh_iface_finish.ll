; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_mesh_iface_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_mesh_iface_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.batadv_hard_iface = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@BATADV_IF_NOT_IN_USE = common dso_local global i32 0, align 4
@BATADV_IF_I_WANT_YOU = common dso_local global i32 0, align 4
@BATADV_IF_CLEANUP_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @batadv_store_mesh_iface_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_store_mesh_iface_finish(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.net* @dev_net(%struct.net_device* %12)
  store %struct.net* %13, %struct.net** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device* %15)
  store %struct.batadv_hard_iface* %16, %struct.batadv_hard_iface** %7, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %18 = icmp ne %struct.batadv_hard_iface* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @BATADV_IF_NOT_IN_USE, align 4
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @BATADV_IF_I_WANT_YOU, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %30 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %74

35:                                               ; preds = %28
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %37 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %42 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @IFNAMSIZ, align 4
  %48 = call i64 @strncmp(i8* %45, i8* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %74

51:                                               ; preds = %40, %35
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BATADV_IF_NOT_IN_USE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %57 = load i32, i32* @BATADV_IF_CLEANUP_AUTO, align 4
  %58 = call i32 @batadv_hardif_disable_interface(%struct.batadv_hard_iface* %56, i32 %57)
  br label %74

59:                                               ; preds = %51
  %60 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %61 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BATADV_IF_NOT_IN_USE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %67 = load i32, i32* @BATADV_IF_CLEANUP_AUTO, align 4
  %68 = call i32 @batadv_hardif_disable_interface(%struct.batadv_hard_iface* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %71 = load %struct.net*, %struct.net** %6, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @batadv_hardif_enable_interface(%struct.batadv_hard_iface* %70, %struct.net* %71, i8* %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %69, %55, %50, %34
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %76 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @batadv_hardif_disable_interface(%struct.batadv_hard_iface*, i32) #1

declare dso_local i32 @batadv_hardif_enable_interface(%struct.batadv_hard_iface*, %struct.net*, i8*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
