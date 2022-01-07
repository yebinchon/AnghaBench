; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_adjacent_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_adjacent_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }
%struct.netdev_adjacent = type { i64, i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Remove adjacency: dev %s adj_dev %s ref_nr %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Adjacency does not exist for device %s from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"adjacency: %s to %s ref_nr - %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"adjacency: dev_put for %s, because link removed from %s to %s\0A\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.net_device*, i64, %struct.list_head*)* @__netdev_adjacent_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__netdev_adjacent_dev_remove(%struct.net_device* %0, %struct.net_device* %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.netdev_adjacent*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i8*, i64, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15, i64 %16)
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load %struct.list_head*, %struct.list_head** %8, align 8
  %20 = call %struct.netdev_adjacent* @__netdev_find_adj(%struct.net_device* %18, %struct.list_head* %19)
  store %struct.netdev_adjacent* %20, %struct.netdev_adjacent** %9, align 8
  %21 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %9, align 8
  %22 = icmp ne %struct.netdev_adjacent* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %26, i64 %29)
  %31 = call i32 @WARN_ON(i32 1)
  br label %99

32:                                               ; preds = %4
  %33 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %9, align 8
  %34 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %9, align 8
  %47 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i32 (i8*, i64, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %41, i64 %44, i64 %45, i64 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %9, align 8
  %54 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %99

57:                                               ; preds = %32
  %58 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %9, align 8
  %59 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_remove_link(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = load %struct.list_head*, %struct.list_head** %8, align 8
  %71 = call i64 @netdev_adjacent_is_neigh_list(%struct.net_device* %68, %struct.net_device* %69, %struct.list_head* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.list_head*, %struct.list_head** %8, align 8
  %79 = call i32 @netdev_adjacent_sysfs_del(%struct.net_device* %74, i64 %77, %struct.list_head* %78)
  br label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %9, align 8
  %82 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %81, i32 0, i32 1
  %83 = call i32 @list_del_rcu(i32* %82)
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i8*, i64, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %86, i64 %89, i64 %92)
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = call i32 @dev_put(%struct.net_device* %94)
  %96 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %9, align 8
  %97 = load i32, i32* @rcu, align 4
  %98 = call i32 @kfree_rcu(%struct.netdev_adjacent* %96, i32 %97)
  br label %99

99:                                               ; preds = %80, %38, %23
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64, i64, ...) #1

declare dso_local %struct.netdev_adjacent* @__netdev_find_adj(%struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i64 @netdev_adjacent_is_neigh_list(%struct.net_device*, %struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @netdev_adjacent_sysfs_del(%struct.net_device*, i64, %struct.list_head*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree_rcu(%struct.netdev_adjacent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
