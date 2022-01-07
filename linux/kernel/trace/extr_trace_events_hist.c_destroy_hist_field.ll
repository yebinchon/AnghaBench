; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_hist_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_hist_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, %struct.hist_field** }

@HIST_FIELD_FL_VAR_REF = common dso_local global i32 0, align 4
@HIST_FIELD_OPERANDS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_field*, i32)* @destroy_hist_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_hist_field(%struct.hist_field* %0, i32 %1) #0 {
  %3 = alloca %struct.hist_field*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hist_field* %0, %struct.hist_field** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %42

9:                                                ; preds = %2
  %10 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %11 = icmp ne %struct.hist_field* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %42

13:                                               ; preds = %9
  %14 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %15 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %42

21:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @HIST_FIELD_OPERANDS_MAX, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %28 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %27, i32 0, i32 1
  %29 = load %struct.hist_field**, %struct.hist_field*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %29, i64 %31
  %33 = load %struct.hist_field*, %struct.hist_field** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  call void @destroy_hist_field(%struct.hist_field* %33, i32 %35)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  %41 = call i32 @__destroy_hist_field(%struct.hist_field* %40)
  br label %42

42:                                               ; preds = %39, %20, %12, %8
  ret void
}

declare dso_local i32 @__destroy_hist_field(%struct.hist_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
