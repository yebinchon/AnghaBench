; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_format_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_format_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf_log_item = type { i32, %struct.TYPE_2__, %struct.xfs_buf* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_log_vec = type { i32 }
%struct.xfs_log_iovec = type { i32 }
%struct.xfs_buf_log_format = type { i32, i32, i32, i32 }

@XFS_BLI_STALE = common dso_local global i32 0, align 4
@XLOG_REG_TYPE_BFORMAT = common dso_local global i32 0, align 4
@XFS_BLF_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf_log_item*, %struct.xfs_log_vec*, %struct.xfs_log_iovec**, i32, %struct.xfs_buf_log_format*)* @xfs_buf_item_format_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_buf_item_format_segment(%struct.xfs_buf_log_item* %0, %struct.xfs_log_vec* %1, %struct.xfs_log_iovec** %2, i32 %3, %struct.xfs_buf_log_format* %4) #0 {
  %6 = alloca %struct.xfs_buf_log_item*, align 8
  %7 = alloca %struct.xfs_log_vec*, align 8
  %8 = alloca %struct.xfs_log_iovec**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf_log_format*, align 8
  %11 = alloca %struct.xfs_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xfs_buf_log_item* %0, %struct.xfs_buf_log_item** %6, align 8
  store %struct.xfs_log_vec* %1, %struct.xfs_log_vec** %7, align 8
  store %struct.xfs_log_iovec** %2, %struct.xfs_log_iovec*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.xfs_buf_log_format* %4, %struct.xfs_buf_log_format** %10, align 8
  %17 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %17, i32 0, i32 2
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  store %struct.xfs_buf* %19, %struct.xfs_buf** %11, align 8
  %20 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %21 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %25 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %27 = call i32 @xfs_buf_log_format_size(%struct.xfs_buf_log_format* %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %29 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %32 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xfs_next_bit(i32 %30, i32 %33, i32 0)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %36 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XFS_BLI_STALE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %128

45:                                               ; preds = %41, %5
  %46 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %7, align 8
  %47 = load %struct.xfs_log_iovec**, %struct.xfs_log_iovec*** %8, align 8
  %48 = load i32, i32* @XLOG_REG_TYPE_BFORMAT, align 4
  %49 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.xfs_buf_log_format* @xlog_copy_iovec(%struct.xfs_log_vec* %46, %struct.xfs_log_iovec** %47, i32 %48, %struct.xfs_buf_log_format* %49, i32 %50)
  store %struct.xfs_buf_log_format* %51, %struct.xfs_buf_log_format** %10, align 8
  %52 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %53 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %55 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @XFS_BLI_STALE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %45
  %61 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %62 = call i32 @trace_xfs_buf_item_format_stale(%struct.xfs_buf_log_item* %61)
  %63 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %64 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @XFS_BLF_CANCEL, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @ASSERT(i32 %67)
  br label %128

69:                                               ; preds = %45
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %71

71:                                               ; preds = %127, %69
  %72 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %73 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %76 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @xfs_next_bit(i32 %74, i32 %77, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %95

83:                                               ; preds = %71
  %84 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %7, align 8
  %85 = load %struct.xfs_log_iovec**, %struct.xfs_log_iovec*** %8, align 8
  %86 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @xfs_buf_item_copy_iovec(%struct.xfs_log_vec* %84, %struct.xfs_log_iovec** %85, %struct.xfs_buf* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %92 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %128

95:                                               ; preds = %71
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @xfs_buf_item_straddle(%struct.xfs_buf* %101, i32 %102, i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100, %95
  %108 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %7, align 8
  %109 = load %struct.xfs_log_iovec**, %struct.xfs_log_iovec*** %8, align 8
  %110 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @xfs_buf_item_copy_iovec(%struct.xfs_log_vec* %108, %struct.xfs_log_iovec** %109, %struct.xfs_buf* %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %10, align 8
  %116 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %126

121:                                              ; preds = %100
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %121, %107
  br label %127

127:                                              ; preds = %126
  br label %71

128:                                              ; preds = %44, %60, %83
  ret void
}

declare dso_local i32 @xfs_buf_log_format_size(%struct.xfs_buf_log_format*) #1

declare dso_local i32 @xfs_next_bit(i32, i32, i32) #1

declare dso_local %struct.xfs_buf_log_format* @xlog_copy_iovec(%struct.xfs_log_vec*, %struct.xfs_log_iovec**, i32, %struct.xfs_buf_log_format*, i32) #1

declare dso_local i32 @trace_xfs_buf_item_format_stale(%struct.xfs_buf_log_item*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_item_copy_iovec(%struct.xfs_log_vec*, %struct.xfs_log_iovec**, %struct.xfs_buf*, i32, i32, i32) #1

declare dso_local i64 @xfs_buf_item_straddle(%struct.xfs_buf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
