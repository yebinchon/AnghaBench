; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_callchain_entry = type { i32 }
%struct.perf_event = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pt_regs = type { i32 }

@current = common dso_local global i64 0, align 8
@__empty_callchain = common dso_local global %struct.perf_callchain_entry zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_callchain_entry* @perf_callchain(%struct.perf_event* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_callchain_entry*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @current, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %31, %2
  %40 = phi i1 [ false, %2 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store %struct.perf_callchain_entry* @__empty_callchain, %struct.perf_callchain_entry** %3, align 8
  br label %65

52:                                               ; preds = %48, %39
  %53 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.perf_callchain_entry* @get_perf_callchain(%struct.pt_regs* %53, i32 0, i32 %54, i32 %55, i32 %56, i32 %57, i32 1)
  store %struct.perf_callchain_entry* %58, %struct.perf_callchain_entry** %10, align 8
  %59 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %10, align 8
  %60 = icmp ne %struct.perf_callchain_entry* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi %struct.perf_callchain_entry* [ %59, %61 ], [ @__empty_callchain, %62 ]
  store %struct.perf_callchain_entry* %64, %struct.perf_callchain_entry** %3, align 8
  br label %65

65:                                               ; preds = %63, %51
  %66 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %3, align 8
  ret %struct.perf_callchain_entry* %66
}

declare dso_local %struct.perf_callchain_entry* @get_perf_callchain(%struct.pt_regs*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
