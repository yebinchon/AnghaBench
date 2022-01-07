; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_file_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_file_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap_ops = type { i32 }

@IOMAP_WRITE = common dso_local global i32 0, align 4
@iomap_dirty_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_file_dirty(%struct.inode* %0, i64 %1, i64 %2, %struct.iomap_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iomap_ops*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iomap_ops* %3, %struct.iomap_ops** %9, align 8
  br label %11

11:                                               ; preds = %27, %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @IOMAP_WRITE, align 4
  %19 = load %struct.iomap_ops*, %struct.iomap_ops** %9, align 8
  %20 = load i32, i32* @iomap_dirty_actor, align 4
  %21 = call i64 @iomap_apply(%struct.inode* %15, i64 %16, i64 %17, i32 %18, %struct.iomap_ops* %19, i32* null, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i64, i64* %10, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %14
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %8, align 8
  br label %11

34:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @iomap_apply(%struct.inode*, i64, i64, i32, %struct.iomap_ops*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
