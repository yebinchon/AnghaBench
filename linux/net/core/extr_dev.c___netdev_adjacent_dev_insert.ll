; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_adjacent_dev_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_adjacent_dev_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }
%struct.netdev_adjacent = type { i32, i32, i32, i32, i8*, %struct.net_device* }

@.str = private unnamed_addr constant [52 x i8] c"Insert adjacency: dev %s adj_dev %s adj->ref_nr %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Insert adjacency: dev %s adj_dev %s adj->ref_nr %d; dev_hold on %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, %struct.list_head*, i8*, i32)* @__netdev_adjacent_dev_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__netdev_adjacent_dev_insert(%struct.net_device* %0, %struct.net_device* %1, %struct.list_head* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.netdev_adjacent*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = load %struct.list_head*, %struct.list_head** %9, align 8
  %16 = call %struct.netdev_adjacent* @__netdev_find_adj(%struct.net_device* %14, %struct.list_head* %15)
  store %struct.netdev_adjacent* %16, %struct.netdev_adjacent** %12, align 8
  %17 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %18 = icmp ne %struct.netdev_adjacent* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %21 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %31 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  store i32 0, i32* %6, align 4
  br label %130

34:                                               ; preds = %5
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.netdev_adjacent* @kmalloc(i32 32, i32 %35)
  store %struct.netdev_adjacent* %36, %struct.netdev_adjacent** %12, align 8
  %37 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %38 = icmp ne %struct.netdev_adjacent* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %130

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %45 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %44, i32 0, i32 5
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %48 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %50 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %53 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %55 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = call i32 @dev_hold(%struct.net_device* %56)
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %65 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.net_device*, %struct.net_device** %8, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.net_device*, %struct.net_device** %7, align 8
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = load %struct.list_head*, %struct.list_head** %9, align 8
  %74 = call i64 @netdev_adjacent_is_neigh_list(%struct.net_device* %71, %struct.net_device* %72, %struct.list_head* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %42
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = load %struct.net_device*, %struct.net_device** %8, align 8
  %79 = load %struct.list_head*, %struct.list_head** %9, align 8
  %80 = call i32 @netdev_adjacent_sysfs_add(%struct.net_device* %77, %struct.net_device* %78, %struct.list_head* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %124

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %42
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.net_device*, %struct.net_device** %8, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @sysfs_create_link(i32* %91, i32* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %110

99:                                               ; preds = %88
  %100 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %101 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %100, i32 0, i32 3
  %102 = load %struct.list_head*, %struct.list_head** %9, align 8
  %103 = call i32 @list_add_rcu(i32* %101, %struct.list_head* %102)
  br label %109

104:                                              ; preds = %85
  %105 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %106 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %105, i32 0, i32 3
  %107 = load %struct.list_head*, %struct.list_head** %9, align 8
  %108 = call i32 @list_add_tail_rcu(i32* %106, %struct.list_head* %107)
  br label %109

109:                                              ; preds = %104, %99
  store i32 0, i32* %6, align 4
  br label %130

110:                                              ; preds = %98
  %111 = load %struct.net_device*, %struct.net_device** %7, align 8
  %112 = load %struct.net_device*, %struct.net_device** %8, align 8
  %113 = load %struct.list_head*, %struct.list_head** %9, align 8
  %114 = call i64 @netdev_adjacent_is_neigh_list(%struct.net_device* %111, %struct.net_device* %112, %struct.list_head* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load %struct.net_device*, %struct.net_device** %7, align 8
  %118 = load %struct.net_device*, %struct.net_device** %8, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.list_head*, %struct.list_head** %9, align 8
  %122 = call i32 @netdev_adjacent_sysfs_del(%struct.net_device* %117, i32 %120, %struct.list_head* %121)
  br label %123

123:                                              ; preds = %116, %110
  br label %124

124:                                              ; preds = %123, %83
  %125 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %12, align 8
  %126 = call i32 @kfree(%struct.netdev_adjacent* %125)
  %127 = load %struct.net_device*, %struct.net_device** %8, align 8
  %128 = call i32 @dev_put(%struct.net_device* %127)
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %124, %109, %39, %19
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.netdev_adjacent* @__netdev_find_adj(%struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local %struct.netdev_adjacent* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i64 @netdev_adjacent_is_neigh_list(%struct.net_device*, %struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @netdev_adjacent_sysfs_add(%struct.net_device*, %struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @list_add_rcu(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, %struct.list_head*) #1

declare dso_local i32 @netdev_adjacent_sysfs_del(%struct.net_device*, i32, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.netdev_adjacent*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
