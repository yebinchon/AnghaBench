; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_lseg_range_is_after.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_lseg_range_is_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_range = type { i64, i64, i32 }

@IOMODE_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_range*, %struct.pnfs_layout_range*)* @ff_lseg_range_is_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_lseg_range_is_after(%struct.pnfs_layout_range* %0, %struct.pnfs_layout_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_layout_range*, align 8
  %5 = alloca %struct.pnfs_layout_range*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pnfs_layout_range* %0, %struct.pnfs_layout_range** %4, align 8
  store %struct.pnfs_layout_range* %1, %struct.pnfs_layout_range** %5, align 8
  %8 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %9 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %5, align 8
  %12 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %17 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IOMODE_READ, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %24 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %27 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @pnfs_calc_offset_end(i64 %25, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %5, align 8
  %31 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %5, align 8
  %34 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @pnfs_calc_offset_end(i64 %32, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %5, align 8
  %39 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %59

43:                                               ; preds = %22
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %46 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %59

50:                                               ; preds = %43
  %51 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %5, align 8
  %52 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %55 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %53, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %50, %49, %42, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @pnfs_calc_offset_end(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
