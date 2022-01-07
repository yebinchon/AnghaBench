; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_update_extent_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_update_extent_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i64, i32, i64, i32 }

@NEW_ADDR = common dso_local global i64 0, align 8
@NULL_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_update_extent_cache(%struct.dnode_of_data* %0) #0 {
  %2 = alloca %struct.dnode_of_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %2, align 8
  %5 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %6 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @f2fs_may_extent_tree(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %13 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NEW_ADDR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @NULL_ADDR, align 8
  store i64 %18, i64* %4, align 8
  br label %23

19:                                               ; preds = %11
  %20 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %21 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %17
  %24 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %25 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ofs_of_node(i32 %26)
  %28 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %29 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @f2fs_start_bidx_of_node(i32 %27, i32 %30)
  %32 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %33 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %3, align 8
  %36 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %37 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @f2fs_update_extent_tree_range(i32 %38, i64 %39, i64 %40, i32 1)
  br label %42

42:                                               ; preds = %23, %10
  ret void
}

declare dso_local i32 @f2fs_may_extent_tree(i32) #1

declare dso_local i64 @f2fs_start_bidx_of_node(i32, i32) #1

declare dso_local i32 @ofs_of_node(i32) #1

declare dso_local i32 @f2fs_update_extent_tree_range(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
