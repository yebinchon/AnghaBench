; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_read_extent_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_read_extent_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i64 }
%struct.udf_inode_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, %struct.extent_position*)* @udf_read_extent_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_read_extent_cache(%struct.inode* %0, i32 %1, i32* %2, %struct.extent_position* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.udf_inode_info*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.extent_position* %3, %struct.extent_position** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %11)
  store %struct.udf_inode_info* %12, %struct.udf_inode_info** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %14 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %17 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %4
  %23 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %24 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %30 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %35 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %36 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @memcpy(%struct.extent_position* %34, i32* %37, i32 8)
  %39 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %40 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %45 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @get_bh(i64 %46)
  br label %48

48:                                               ; preds = %43, %28
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %22, %4
  %50 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %51 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.extent_position*, i32*, i32) #1

declare dso_local i32 @get_bh(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
