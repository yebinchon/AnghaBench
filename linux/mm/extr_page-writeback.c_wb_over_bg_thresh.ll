; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_over_bg_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_over_bg_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32 }
%struct.dirty_throttle_control = type { i64, i64, i32, i32, i32 }

@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_UNSTABLE_NFS = common dso_local global i32 0, align 4
@WB_RECLAIMABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wb_over_bg_thresh(%struct.bdi_writeback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca %struct.dirty_throttle_control, align 8
  %5 = alloca %struct.dirty_throttle_control, align 8
  %6 = alloca %struct.dirty_throttle_control*, align 8
  %7 = alloca %struct.dirty_throttle_control*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %3, align 8
  %11 = bitcast %struct.dirty_throttle_control* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %4, i32 0, i32 0
  %13 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %14 = call i32 @GDTC_INIT(%struct.bdi_writeback* %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %12, align 8
  %16 = bitcast %struct.dirty_throttle_control* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %5, i32 0, i32 0
  %18 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %19 = call i32 @MDTC_INIT(%struct.bdi_writeback* %18, %struct.dirty_throttle_control* %4)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %17, align 8
  store %struct.dirty_throttle_control* %4, %struct.dirty_throttle_control** %6, align 8
  %21 = call i64 @mdtc_valid(%struct.dirty_throttle_control* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi %struct.dirty_throttle_control* [ %5, %23 ], [ null, %24 ]
  store %struct.dirty_throttle_control* %26, %struct.dirty_throttle_control** %7, align 8
  %27 = call i32 (...) @global_dirtyable_memory()
  %28 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %29 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @NR_FILE_DIRTY, align 4
  %31 = call i64 @global_node_page_state(i32 %30)
  %32 = load i32, i32* @NR_UNSTABLE_NFS, align 4
  %33 = call i64 @global_node_page_state(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %36 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %38 = call i32 @domain_dirty_limits(%struct.dirty_throttle_control* %37)
  %39 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %40 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %43 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %97

47:                                               ; preds = %25
  %48 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %49 = load i32, i32* @WB_RECLAIMABLE, align 4
  %50 = call i64 @wb_stat(%struct.bdi_writeback* %48, i32 %49)
  %51 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %52 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %55 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @wb_calc_thresh(i32 %53, i64 %56)
  %58 = icmp sgt i64 %50, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %97

60:                                               ; preds = %47
  %61 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %62 = icmp ne %struct.dirty_throttle_control* %61, null
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %65 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %66 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %65, i32 0, i32 0
  %67 = call i32 @mem_cgroup_wb_stats(%struct.bdi_writeback* %64, i64* %8, i64* %9, i64* %66, i64* %10)
  %68 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @mdtc_calc_avail(%struct.dirty_throttle_control* %68, i64 %69, i64 %70)
  %72 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %73 = call i32 @domain_dirty_limits(%struct.dirty_throttle_control* %72)
  %74 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %75 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %78 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %97

82:                                               ; preds = %63
  %83 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %84 = load i32, i32* @WB_RECLAIMABLE, align 4
  %85 = call i64 @wb_stat(%struct.bdi_writeback* %83, i32 %84)
  %86 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %87 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %7, align 8
  %90 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @wb_calc_thresh(i32 %88, i64 %91)
  %93 = icmp sgt i64 %85, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  store i32 1, i32* %2, align 4
  br label %97

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %60
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %94, %81, %59, %46
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GDTC_INIT(%struct.bdi_writeback*) #2

declare dso_local i32 @MDTC_INIT(%struct.bdi_writeback*, %struct.dirty_throttle_control*) #2

declare dso_local i64 @mdtc_valid(%struct.dirty_throttle_control*) #2

declare dso_local i32 @global_dirtyable_memory(...) #2

declare dso_local i64 @global_node_page_state(i32) #2

declare dso_local i32 @domain_dirty_limits(%struct.dirty_throttle_control*) #2

declare dso_local i64 @wb_stat(%struct.bdi_writeback*, i32) #2

declare dso_local i64 @wb_calc_thresh(i32, i64) #2

declare dso_local i32 @mem_cgroup_wb_stats(%struct.bdi_writeback*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @mdtc_calc_avail(%struct.dirty_throttle_control*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
