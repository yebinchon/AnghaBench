; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c_modify_user_hw_breakpoint_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c_modify_user_hw_breakpoint_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, %struct.perf_event_attr }
%struct.TYPE_2__ = type { %struct.arch_hw_breakpoint }
%struct.arch_hw_breakpoint = type { i32 }
%struct.perf_event_attr = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modify_user_hw_breakpoint_check(%struct.perf_event* %0, %struct.perf_event_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arch_hw_breakpoint, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_event_attr, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.arch_hw_breakpoint* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %14 = call i32 @hw_breakpoint_parse(%struct.perf_event* %12, %struct.perf_event_attr* %13, %struct.arch_hw_breakpoint* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %70

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 1
  %25 = bitcast %struct.perf_event_attr* %10 to i8*
  %26 = bitcast %struct.perf_event_attr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %28 = call i32 @hw_breakpoint_copy_attr(%struct.perf_event_attr* %10, %struct.perf_event_attr* %27)
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %30 = call i64 @memcmp(%struct.perf_event_attr* %10, %struct.perf_event_attr* %29, i32 8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %47 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @modify_bp_slot(%struct.perf_event* %46, i64 %50, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %70

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %62 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %61, i32 0, i32 1
  %63 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %64 = call i32 @hw_breakpoint_copy_attr(%struct.perf_event_attr* %62, %struct.perf_event_attr* %63)
  %65 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %66 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = bitcast %struct.arch_hw_breakpoint* %67 to i8*
  %69 = bitcast %struct.arch_hw_breakpoint* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 4 %69, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %60, %57, %32, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hw_breakpoint_parse(%struct.perf_event*, %struct.perf_event_attr*, %struct.arch_hw_breakpoint*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hw_breakpoint_copy_attr(%struct.perf_event_attr*, %struct.perf_event_attr*) #2

declare dso_local i64 @memcmp(%struct.perf_event_attr*, %struct.perf_event_attr*, i32) #2

declare dso_local i32 @modify_bp_slot(%struct.perf_event*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
