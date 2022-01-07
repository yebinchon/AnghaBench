; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_filter_match_preds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_filter_match_preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32 }
%struct.prog_entry = type { i32, i32, %struct.filter_pred* }
%struct.filter_pred = type { i32 (%struct.filter_pred*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_match_preds(%struct.event_filter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.prog_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.filter_pred*, align 8
  %9 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %11 = icmp ne %struct.event_filter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %15 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.prog_entry* @rcu_dereference_raw(i32 %16)
  store %struct.prog_entry* %17, %struct.prog_entry** %6, align 8
  %18 = load %struct.prog_entry*, %struct.prog_entry** %6, align 8
  %19 = icmp ne %struct.prog_entry* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %69

21:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %59, %21
  %23 = load %struct.prog_entry*, %struct.prog_entry** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %23, i64 %25
  %27 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %26, i32 0, i32 2
  %28 = load %struct.filter_pred*, %struct.filter_pred** %27, align 8
  %29 = icmp ne %struct.filter_pred* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %22
  %31 = load %struct.prog_entry*, %struct.prog_entry** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %31, i64 %33
  %35 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %34, i32 0, i32 2
  %36 = load %struct.filter_pred*, %struct.filter_pred** %35, align 8
  store %struct.filter_pred* %36, %struct.filter_pred** %8, align 8
  %37 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %38 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %37, i32 0, i32 0
  %39 = load i32 (%struct.filter_pred*, i8*)*, i32 (%struct.filter_pred*, i8*)** %38, align 8
  %40 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 %39(%struct.filter_pred* %40, i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.prog_entry*, %struct.prog_entry** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %44, i64 %46
  %48 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %43, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %30
  %52 = load %struct.prog_entry*, %struct.prog_entry** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %52, i64 %54
  %56 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %51, %30
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %22

62:                                               ; preds = %22
  %63 = load %struct.prog_entry*, %struct.prog_entry** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %63, i64 %65
  %67 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %20, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.prog_entry* @rcu_dereference_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
