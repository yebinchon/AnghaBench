; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_field_has_hist_vars.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_field_has_hist_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, %struct.hist_field** }

@HIST_FIELD_FL_VAR = common dso_local global i32 0, align 4
@HIST_FIELD_FL_VAR_REF = common dso_local global i32 0, align 4
@HIST_FIELD_OPERANDS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_field*, i32)* @field_has_hist_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @field_has_hist_vars(%struct.hist_field* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hist_field*, align 8
  store %struct.hist_field* %0, %struct.hist_field** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %13 = icmp ne %struct.hist_field* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %54

15:                                               ; preds = %11
  %16 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %17 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HIST_FIELD_FL_VAR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %24 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %15
  store i32 1, i32* %3, align 4
  br label %54

30:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HIST_FIELD_OPERANDS_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %37 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %36, i32 0, i32 1
  %38 = load %struct.hist_field**, %struct.hist_field*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %38, i64 %40
  %42 = load %struct.hist_field*, %struct.hist_field** %41, align 8
  store %struct.hist_field* %42, %struct.hist_field** %7, align 8
  %43 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  %46 = call i32 @field_has_hist_vars(%struct.hist_field* %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %31

53:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48, %29, %14, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
