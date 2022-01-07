; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_hist_trigger_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_hist_trigger_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_attrs = type { i32, i32, %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs**, %struct.hist_trigger_attrs** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_attrs*)* @destroy_hist_trigger_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_hist_trigger_attrs(%struct.hist_trigger_attrs* %0) #0 {
  %2 = alloca %struct.hist_trigger_attrs*, align 8
  %3 = alloca i32, align 4
  store %struct.hist_trigger_attrs* %0, %struct.hist_trigger_attrs** %2, align 8
  %4 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %5 = icmp ne %struct.hist_trigger_attrs* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %68

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %11 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %16 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %15, i32 0, i32 8
  %17 = load %struct.hist_trigger_attrs**, %struct.hist_trigger_attrs*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %17, i64 %19
  %21 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %20, align 8
  %22 = call i32 @kfree(%struct.hist_trigger_attrs* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %30 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %35 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %34, i32 0, i32 7
  %36 = load %struct.hist_trigger_attrs**, %struct.hist_trigger_attrs*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %36, i64 %38
  %40 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %39, align 8
  %41 = call i32 @kfree(%struct.hist_trigger_attrs* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %47 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %46, i32 0, i32 6
  %48 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %47, align 8
  %49 = call i32 @kfree(%struct.hist_trigger_attrs* %48)
  %50 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %51 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %50, i32 0, i32 5
  %52 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %51, align 8
  %53 = call i32 @kfree(%struct.hist_trigger_attrs* %52)
  %54 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %55 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %54, i32 0, i32 4
  %56 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %55, align 8
  %57 = call i32 @kfree(%struct.hist_trigger_attrs* %56)
  %58 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %59 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %58, i32 0, i32 3
  %60 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %59, align 8
  %61 = call i32 @kfree(%struct.hist_trigger_attrs* %60)
  %62 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %63 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %62, i32 0, i32 2
  %64 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %63, align 8
  %65 = call i32 @kfree(%struct.hist_trigger_attrs* %64)
  %66 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %2, align 8
  %67 = call i32 @kfree(%struct.hist_trigger_attrs* %66)
  br label %68

68:                                               ; preds = %45, %6
  ret void
}

declare dso_local i32 @kfree(%struct.hist_trigger_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
