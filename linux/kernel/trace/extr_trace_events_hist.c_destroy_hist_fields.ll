; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_hist_fields.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_hist_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, %struct.TYPE_2__**, i32** }
%struct.TYPE_2__ = type { i32 }

@HIST_FIELDS_MAX = common dso_local global i32 0, align 4
@HIST_FIELD_FL_VAR_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*)* @destroy_hist_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_hist_fields(%struct.hist_trigger_data* %0) #0 {
  %2 = alloca %struct.hist_trigger_data*, align 8
  %3 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @HIST_FIELDS_MAX, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %10 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %9, i32 0, i32 2
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %19 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %18, i32 0, i32 2
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @destroy_hist_field(i32* %24, i32 0)
  %26 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %27 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %17, %8
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %73, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %40 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %37
  %44 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %45 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %60 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 %63
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @__destroy_hist_field(%struct.TYPE_2__* %65)
  %67 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %68 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %72, align 8
  br label %73

73:                                               ; preds = %43
  %74 = load i32, i32* %3, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %37

76:                                               ; preds = %37
  ret void
}

declare dso_local i32 @destroy_hist_field(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__destroy_hist_field(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
