; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_lseg_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_lseg_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@NFS_LSEG_LAYOUTRETURN = common dso_local global i32 0, align 4
@NFS_LSEG_ROC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*, %struct.pnfs_layout_segment*)* @ff_lseg_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_lseg_merge(%struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %4, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %5, align 8
  %8 = load i32, i32* @NFS_LSEG_LAYOUTRETURN, align 4
  %9 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %10 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

14:                                               ; preds = %2
  %15 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %16 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %20 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %104

25:                                               ; preds = %14
  %26 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %27 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %31 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @pnfs_calc_offset_end(i64 %29, i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %37 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %104

42:                                               ; preds = %25
  %43 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %44 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %48 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @pnfs_calc_offset_end(i64 %46, i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %54 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %104

59:                                               ; preds = %42
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %67 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %71 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %69, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %77 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %81 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %65
  %84 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %85 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @pnfs_calc_offset_length(i64 %87, i64 %88)
  %90 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %91 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @NFS_LSEG_ROC, align 4
  %94 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %95 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %94, i32 0, i32 0
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %83
  %99 = load i32, i32* @NFS_LSEG_ROC, align 4
  %100 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %101 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %100, i32 0, i32 0
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %83
  store i32 1, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %58, %41, %24, %13
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @pnfs_calc_offset_end(i64, i32) #1

declare dso_local i32 @pnfs_calc_offset_length(i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
