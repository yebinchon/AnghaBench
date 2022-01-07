; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_generic_entry_update.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_generic_entry_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.trace_entry = type { i32, i16, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TRACE_FLAG_IRQS_NOSUPPORT = common dso_local global i32 0, align 4
@NMI_MASK = common dso_local global i32 0, align 4
@TRACE_FLAG_NMI = common dso_local global i32 0, align 4
@HARDIRQ_MASK = common dso_local global i32 0, align 4
@TRACE_FLAG_HARDIRQ = common dso_local global i32 0, align 4
@SOFTIRQ_OFFSET = common dso_local global i32 0, align 4
@TRACE_FLAG_SOFTIRQ = common dso_local global i32 0, align 4
@TRACE_FLAG_NEED_RESCHED = common dso_local global i32 0, align 4
@TRACE_FLAG_PREEMPT_RESCHED = common dso_local global i32 0, align 4
@TRACE_FLAG_IRQS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_generic_entry_update(%struct.trace_entry* %0, i16 zeroext %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.trace_entry*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  store %struct.trace_entry* %0, %struct.trace_entry** %5, align 8
  store i16 %1, i16* %6, align 2
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %10, %struct.task_struct** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = and i32 %11, 255
  %13 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %14 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  %24 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %25 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i16, i16* %6, align 2
  %27 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %28 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %27, i32 0, i32 1
  store i16 %26, i16* %28, align 4
  %29 = load i32, i32* @TRACE_FLAG_IRQS_NOSUPPORT, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NMI_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @TRACE_FLAG_NMI, align 4
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %29, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @HARDIRQ_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @TRACE_FLAG_HARDIRQ, align 4
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = or i32 %39, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SOFTIRQ_OFFSET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @TRACE_FLAG_SOFTIRQ, align 4
  br label %57

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = or i32 %49, %58
  %60 = call i64 (...) @tif_need_resched()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @TRACE_FLAG_NEED_RESCHED, align 4
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = or i32 %59, %66
  %68 = call i64 (...) @test_preempt_need_resched()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @TRACE_FLAG_PREEMPT_RESCHED, align 4
  br label %73

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %67, %74
  %76 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %77 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  ret void
}

declare dso_local i64 @tif_need_resched(...) #1

declare dso_local i64 @test_preempt_need_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
