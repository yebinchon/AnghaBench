; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_lock_check_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_lock_check_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i64 }

@OFFSET_MAX = common dso_local global i64 0, align 8
@NFS_LOCK32_OFFSET_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*)* @nfs_lock_check_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lock_check_bounds(%struct.file_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %11 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OFFSET_MAX, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %43

31:                                               ; preds = %21
  br label %34

32:                                               ; preds = %15
  %33 = load i64, i64* @NFS_LOCK32_OFFSET_MAX, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i64, i64* %4, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34
  br label %43

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %46

43:                                               ; preds = %41, %30, %14
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
