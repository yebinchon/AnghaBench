; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_extent_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_extent_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i64 }
%struct.udf_inode_info = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, %struct.extent_position*)* @udf_update_extent_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_update_extent_cache(%struct.inode* %0, i32 %1, %struct.extent_position* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_position*, align 8
  %7 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.extent_position* %2, %struct.extent_position** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %8)
  store %struct.udf_inode_info* %9, %struct.udf_inode_info** %7, align 8
  %10 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %11 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32 @__udf_clear_extent_cache(%struct.inode* %13)
  %15 = load %struct.extent_position*, %struct.extent_position** %6, align 8
  %16 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.extent_position*, %struct.extent_position** %6, align 8
  %21 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @get_bh(i64 %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %26 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.extent_position*, %struct.extent_position** %6, align 8
  %29 = call i32 @memcpy(%struct.TYPE_4__* %27, %struct.extent_position* %28, i32 8)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %32 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %35 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 128, label %37
    i32 129, label %46
  ]

37:                                               ; preds = %24
  %38 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %39 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  br label %55

46:                                               ; preds = %24
  %47 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %48 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  br label %55

55:                                               ; preds = %24, %46, %37
  %56 = load %struct.udf_inode_info*, %struct.udf_inode_info** %7, align 8
  %57 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  ret void
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__udf_clear_extent_cache(%struct.inode*) #1

declare dso_local i32 @get_bh(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.extent_position*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
