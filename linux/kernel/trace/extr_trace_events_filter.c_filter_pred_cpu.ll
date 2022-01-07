; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_filter_pred_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_filter_pred_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_pred = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_pred*, i8*)* @filter_pred_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_pred_cpu(%struct.filter_pred* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filter_pred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.filter_pred* %0, %struct.filter_pred** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 (...) @raw_smp_processor_id()
  store i32 %8, i32* %6, align 4
  %9 = load %struct.filter_pred*, %struct.filter_pred** %4, align 8
  %10 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.filter_pred*, %struct.filter_pred** %4, align 8
  %13 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %45 [
    i32 133, label %15
    i32 128, label %20
    i32 129, label %25
    i32 130, label %30
    i32 131, label %35
    i32 132, label %40
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %40, %35, %30, %25, %20, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
