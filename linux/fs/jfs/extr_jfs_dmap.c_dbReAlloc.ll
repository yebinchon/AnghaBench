; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbReAlloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbReAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbReAlloc(%struct.inode* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @dbExtend(%struct.inode* %13, i64 %14, i64 %15, i64 %16)
  store i32 %17, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = load i64*, i64** %11, align 8
  store i64 %20, i64* %21, align 8
  store i32 0, i32* %6, align 4
  br label %41

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = sub nsw i64 %34, 1
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64*, i64** %11, align 8
  %40 = call i32 @dbAlloc(%struct.inode* %31, i64 %35, i64 %38, i64* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %27, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @dbExtend(%struct.inode*, i64, i64, i64) #1

declare dso_local i32 @dbAlloc(%struct.inode*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
