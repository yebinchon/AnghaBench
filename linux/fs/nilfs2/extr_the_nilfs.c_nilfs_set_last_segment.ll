; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_set_last_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_set_last_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_set_last_segment(%struct.the_nilfs* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %10 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %22 = call i32 @nilfs_sb_dirty(%struct.the_nilfs* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %4
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %26 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %29 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %42

33:                                               ; preds = %24
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %35 = call i32 @set_nilfs_sb_dirty(%struct.the_nilfs* %34)
  br label %36

36:                                               ; preds = %33, %4
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %38 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %41 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 2
  %45 = call i32 @spin_unlock(i32* %44)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nilfs_sb_dirty(%struct.the_nilfs*) #1

declare dso_local i32 @set_nilfs_sb_dirty(%struct.the_nilfs*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
