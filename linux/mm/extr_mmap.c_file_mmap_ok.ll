; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_file_mmap_ok.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_file_mmap_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i64, i64)* @file_mmap_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_mmap_ok(%struct.file* %0, %struct.inode* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call i64 @file_mmap_size_max(%struct.file* %11, %struct.inode* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %33

21:                                               ; preds = %16, %4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = zext i32 %27 to i64
  %29 = lshr i64 %26, %28
  %30 = icmp ugt i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %33

32:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @file_mmap_size_max(%struct.file*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
