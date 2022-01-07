; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_get_interval_end_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_get_interval_end_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_gate_list = type { i32, i32, i64 }
%struct.sched_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_gate_list*, %struct.sched_gate_list*, %struct.sched_entry*, i32)* @get_interval_end_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_interval_end_time(%struct.sched_gate_list* %0, %struct.sched_gate_list* %1, %struct.sched_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_gate_list*, align 8
  %7 = alloca %struct.sched_gate_list*, align 8
  %8 = alloca %struct.sched_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sched_gate_list* %0, %struct.sched_gate_list** %6, align 8
  store %struct.sched_gate_list* %1, %struct.sched_gate_list** %7, align 8
  store %struct.sched_entry* %2, %struct.sched_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sched_gate_list*, %struct.sched_gate_list** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @get_cycle_time_elapsed(%struct.sched_gate_list* %14, i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.sched_gate_list*, %struct.sched_gate_list** %6, align 8
  %19 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i32 @ktime_add_ns(i32 %17, i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.sched_entry*, %struct.sched_entry** %8, align 8
  %26 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ktime_add_ns(i32 %24, i64 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.sched_gate_list*, %struct.sched_gate_list** %6, align 8
  %31 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ktime_add(i32 %29, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @ktime_before(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %67

40:                                               ; preds = %4
  %41 = load %struct.sched_gate_list*, %struct.sched_gate_list** %7, align 8
  %42 = icmp ne %struct.sched_gate_list* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load %struct.sched_gate_list*, %struct.sched_gate_list** %7, align 8
  %45 = load %struct.sched_gate_list*, %struct.sched_gate_list** %6, align 8
  %46 = icmp ne %struct.sched_gate_list* %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.sched_gate_list*, %struct.sched_gate_list** %7, align 8
  %49 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @ktime_after(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.sched_gate_list*, %struct.sched_gate_list** %7, align 8
  %56 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @ktime_before(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.sched_gate_list*, %struct.sched_gate_list** %7, align 8
  %63 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %54, %47, %43, %40
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %61, %38
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @get_cycle_time_elapsed(%struct.sched_gate_list*, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i64 @ktime_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
