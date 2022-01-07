; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_dnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i64, i64, %struct.page*, i32 }
%struct.page = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnode_of_data*)* @truncate_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_dnode(%struct.dnode_of_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dnode_of_data*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %3, align 8
  %6 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %7 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %13 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @F2FS_I_SB(i32 %14)
  %16 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %17 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.page* @f2fs_get_node_page(i32 %15, i64 %18)
  store %struct.page* %19, %struct.page** %4, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i64 @IS_ERR(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.page* %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %53

30:                                               ; preds = %23, %11
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i64 @IS_ERR(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i32 @PTR_ERR(%struct.page* %35)
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %41 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %40, i32 0, i32 2
  store %struct.page* %39, %struct.page** %41, align 8
  %42 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %43 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %45 = call i32 @f2fs_truncate_data_blocks(%struct.dnode_of_data* %44)
  %46 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %47 = call i32 @truncate_node(%struct.dnode_of_data* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %34, %29, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.page* @f2fs_get_node_page(i32, i64) #1

declare dso_local i32 @F2FS_I_SB(i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_truncate_data_blocks(%struct.dnode_of_data*) #1

declare dso_local i32 @truncate_node(%struct.dnode_of_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
