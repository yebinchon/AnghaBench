; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_hist_entry_callchain__fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_hist_entry_callchain__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.hist_entry = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@callchain_param = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad callchain mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_entry*, i32, i32, i32*)* @hist_entry_callchain__fprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hist_entry_callchain__fprintf(%struct.hist_entry* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %19 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @callchain_param, i32 0, i32 0), align 4
  switch i32 %24, label %54 [
    i32 129, label %25
    i32 130, label %33
    i32 132, label %41
    i32 131, label %47
    i32 128, label %53
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @callchain__fprintf_graph(i32* %26, i32* %28, i32 %29, i32 %30, i32 %31)
  store i64 %32, i64* %5, align 8
  br label %57

33:                                               ; preds = %23
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %36 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @callchain__fprintf_graph(i32* %34, i32* %36, i32 %37, i32 %38, i32 %39)
  store i64 %40, i64* %5, align 8
  br label %57

41:                                               ; preds = %23
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %44 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @callchain__fprintf_flat(i32* %42, i32* %44, i32 %45)
  store i64 %46, i64* %5, align 8
  br label %57

47:                                               ; preds = %23
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %50 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @callchain__fprintf_folded(i32* %48, i32* %50, i32 %51)
  store i64 %52, i64* %5, align 8
  br label %57

53:                                               ; preds = %23
  br label %56

54:                                               ; preds = %23
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %53
  store i64 0, i64* %5, align 8
  br label %57

57:                                               ; preds = %56, %47, %41, %33, %25
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i64 @callchain__fprintf_graph(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @callchain__fprintf_flat(i32*, i32*, i32) #1

declare dso_local i64 @callchain__fprintf_folded(i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
