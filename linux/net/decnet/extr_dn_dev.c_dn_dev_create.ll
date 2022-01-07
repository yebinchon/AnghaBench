; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_dev_parms = type { i64 }
%struct.dn_dev = type { %struct.TYPE_3__, i32, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i64 (%struct.net_device*)* }
%struct.net_device = type { i64, i32* }

@dn_dev_list = common dso_local global %struct.dn_dev_parms* null, align 8
@DN_DEV_LIST_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@dn_dev_timer_func = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@dn_neigh_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dn_dev* (%struct.net_device*, i32*)* @dn_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dn_dev* @dn_dev_create(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.dn_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_dev_parms*, align 8
  %8 = alloca %struct.dn_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** @dn_dev_list, align 8
  store %struct.dn_dev_parms* %9, %struct.dn_dev_parms** %7, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DN_DEV_LIST_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** %7, align 8
  %16 = getelementptr inbounds %struct.dn_dev_parms, %struct.dn_dev_parms* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %29

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** %7, align 8
  %28 = getelementptr inbounds %struct.dn_dev_parms, %struct.dn_dev_parms* %27, i32 1
  store %struct.dn_dev_parms* %28, %struct.dn_dev_parms** %7, align 8
  br label %10

29:                                               ; preds = %22, %10
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DN_DEV_LIST_SIZE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %113

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.dn_dev* @kzalloc(i32 32, i32 %41)
  store %struct.dn_dev* %42, %struct.dn_dev** %8, align 8
  %43 = icmp eq %struct.dn_dev* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %113

45:                                               ; preds = %37
  %46 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %47 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %46, i32 0, i32 0
  %48 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** %7, align 8
  %49 = call i32 @memcpy(%struct.TYPE_3__* %47, %struct.dn_dev_parms* %48, i32 8)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %54 = call i32 @rcu_assign_pointer(i32* %52, %struct.dn_dev* %53)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %57 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %56, i32 0, i32 4
  store %struct.net_device* %55, %struct.net_device** %57, align 8
  %58 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %59 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %58, i32 0, i32 3
  %60 = load i32, i32* @dn_dev_timer_func, align 4
  %61 = call i32 @timer_setup(i32* %59, i32 %60, i32 0)
  %62 = load i32, i32* @jiffies, align 4
  %63 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %64 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @neigh_parms_alloc(%struct.net_device* %65, i32* @dn_neigh_table)
  %67 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %68 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %70 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %45
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @RCU_INIT_POINTER(i32* %76, i32* null)
  %78 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %79 = call i32 @kfree(%struct.dn_dev* %78)
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %113

80:                                               ; preds = %45
  %81 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %82 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %83, align 8
  %85 = icmp ne i64 (%struct.net_device*)* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %80
  %87 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %88 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i64 %90(%struct.net_device* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %96 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @neigh_parms_release(i32* @dn_neigh_table, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %102 = call i32 @kfree(%struct.dn_dev* %101)
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %113

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %80
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %107 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %106, i32 0, i32 0
  %108 = call i32 @dn_dev_sysctl_register(%struct.net_device* %105, %struct.TYPE_3__* %107)
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i32 @dn_dev_set_timer(%struct.net_device* %109)
  %111 = load i32*, i32** %5, align 8
  store i32 0, i32* %111, align 4
  %112 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  store %struct.dn_dev* %112, %struct.dn_dev** %3, align 8
  br label %113

113:                                              ; preds = %104, %94, %73, %44, %36
  %114 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  ret %struct.dn_dev* %114
}

declare dso_local %struct.dn_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.dn_dev_parms*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.dn_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @neigh_parms_alloc(%struct.net_device*, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.dn_dev*) #1

declare dso_local i32 @neigh_parms_release(i32*, i32) #1

declare dso_local i32 @dn_dev_sysctl_register(%struct.net_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @dn_dev_set_timer(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
