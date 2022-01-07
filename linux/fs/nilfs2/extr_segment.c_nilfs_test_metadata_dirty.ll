; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_test_metadata_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_test_metadata_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i32 }
%struct.nilfs_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.nilfs_root*)* @nilfs_test_metadata_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_test_metadata_dirty(%struct.the_nilfs* %0, %struct.nilfs_root* %1) #0 {
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_root*, align 8
  %5 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  store %struct.nilfs_root* %1, %struct.nilfs_root** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nilfs_root*, %struct.nilfs_root** %4, align 8
  %7 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @nilfs_mdt_fetch_dirty(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @nilfs_mdt_fetch_dirty(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nilfs_mdt_fetch_dirty(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call i64 (...) @nilfs_doing_gc()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35, %32
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nilfs_mdt_fetch_dirty(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %38, %35
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @nilfs_mdt_fetch_dirty(i32) #1

declare dso_local i64 @nilfs_doing_gc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
