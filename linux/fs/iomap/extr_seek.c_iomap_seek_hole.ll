; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_iomap_seek_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_iomap_seek_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap_ops = type { i32 }

@ENXIO = common dso_local global i64 0, align 8
@IOMAP_REPORT = common dso_local global i32 0, align 4
@iomap_seek_hole_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iomap_seek_hole(%struct.inode* %0, i64 %1, %struct.iomap_ops* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iomap_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iomap_ops* %2, %struct.iomap_ops** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call i64 @i_size_read(%struct.inode* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %3
  %23 = load i64, i64* @ENXIO, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %54

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i64, i64* %9, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* @IOMAP_REPORT, align 4
  %34 = load %struct.iomap_ops*, %struct.iomap_ops** %7, align 8
  %35 = load i32, i32* @iomap_seek_hole_actor, align 4
  %36 = call i64 @iomap_apply(%struct.inode* %30, i64 %31, i64 %32, i32 %33, %struct.iomap_ops* %34, i64* %6, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %4, align 8
  br label %54

41:                                               ; preds = %29
  %42 = load i64, i64* %10, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %52

45:                                               ; preds = %41
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %9, align 8
  br label %26

52:                                               ; preds = %44, %26
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %52, %39, %22
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @iomap_apply(%struct.inode*, i64, i64, i32, %struct.iomap_ops*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
