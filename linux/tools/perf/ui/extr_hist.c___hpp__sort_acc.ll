; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c___hpp__sort_acc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c___hpp__sort_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.hist_entry = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@callchain_param = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ORDER_CALLER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*, i32 (%struct.hist_entry*)*)* @__hpp__sort_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hpp__sort_acc(%struct.hist_entry* %0, %struct.hist_entry* %1, i32 (%struct.hist_entry*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32 (%struct.hist_entry*)*, align 8
  %8 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %6, align 8
  store i32 (%struct.hist_entry*)* %2, i32 (%struct.hist_entry*)** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @symbol_conf, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %3
  %12 = load i32 (%struct.hist_entry*)*, i32 (%struct.hist_entry*)** %7, align 8
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = call i32 %12(%struct.hist_entry* %13)
  %15 = load i32 (%struct.hist_entry*)*, i32 (%struct.hist_entry*)** %7, align 8
  %16 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %17 = call i32 %15(%struct.hist_entry* %16)
  %18 = call i32 @field_cmp(i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %11
  %24 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %33 = call i32 @hist_entry__has_callchains(%struct.hist_entry* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @symbol_conf, i32 0, i32 0), align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %31, %23
  store i32 0, i32* %4, align 4
  br label %60

39:                                               ; preds = %35
  %40 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %41 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %46 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %44, %49
  store i32 %50, i32* %8, align 4
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 0), align 8
  %52 = load i64, i64* @ORDER_CALLER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %39
  br label %58

58:                                               ; preds = %57, %3
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %38, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @field_cmp(i32, i32) #1

declare dso_local i32 @hist_entry__has_callchains(%struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
