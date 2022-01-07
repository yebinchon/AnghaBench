; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.dn_dev = type { i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

@dn_neigh_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dn_dev_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dev_delete(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dn_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call %struct.dn_dev* @rtnl_dereference(i32* %6)
  store %struct.dn_dev* %7, %struct.dn_dev** %3, align 8
  %8 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %9 = icmp eq %struct.dn_dev* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %12, i32 0, i32 4
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %16 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %15, i32 0, i32 3
  %17 = call i32 @dn_dev_sysctl_unregister(%struct.TYPE_2__* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @dn_dev_check_default(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @neigh_ifdown(i32* @dn_neigh_table, %struct.net_device* %20)
  %22 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %23 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.net_device*)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %11
  %28 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %29 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 %31(%struct.net_device* %32)
  br label %34

34:                                               ; preds = %27, %11
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %38 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @neigh_parms_release(i32* @dn_neigh_table, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @neigh_ifdown(i32* @dn_neigh_table, %struct.net_device* %41)
  %43 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %44 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %49 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @neigh_release(i64 %50)
  br label %52

52:                                               ; preds = %47, %34
  %53 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %54 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %59 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @neigh_release(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %64 = call i32 @kfree(%struct.dn_dev* %63)
  br label %65

65:                                               ; preds = %62, %10
  ret void
}

declare dso_local %struct.dn_dev* @rtnl_dereference(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @dn_dev_sysctl_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @dn_dev_check_default(%struct.net_device*) #1

declare dso_local i32 @neigh_ifdown(i32*, %struct.net_device*) #1

declare dso_local i32 @neigh_parms_release(i32*, i32) #1

declare dso_local i32 @neigh_release(i64) #1

declare dso_local i32 @kfree(%struct.dn_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
