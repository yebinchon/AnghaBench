; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_zero_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_zero_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap_ops = type { i32 }

@IOMAP_ZERO = common dso_local global i32 0, align 4
@iomap_zero_range_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_zero_range(%struct.inode* %0, i64 %1, i64 %2, i32* %3, %struct.iomap_ops* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.iomap_ops*, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.iomap_ops* %4, %struct.iomap_ops** %11, align 8
  br label %13

13:                                               ; preds = %30, %5
  %14 = load i64, i64* %9, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @IOMAP_ZERO, align 4
  %21 = load %struct.iomap_ops*, %struct.iomap_ops** %11, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* @iomap_zero_range_actor, align 4
  %24 = call i64 @iomap_apply(%struct.inode* %17, i64 %18, i64 %19, i32 %20, %struct.iomap_ops* %21, i32* %22, i32 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i64, i64* %12, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %38

30:                                               ; preds = %16
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %9, align 8
  br label %13

37:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @iomap_apply(%struct.inode*, i64, i64, i32, %struct.iomap_ops*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
