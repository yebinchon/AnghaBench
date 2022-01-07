; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry__snprintf_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry__snprintf_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.perf_hpp = type { i32, i32 }
%struct.perf_hpp_fmt = type { i32 (%struct.perf_hpp_fmt*, %struct.perf_hpp.0*, %struct.TYPE_4__*)*, i32 }
%struct.perf_hpp.0 = type opaque

@.str = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hist_entry__snprintf_alignment(%struct.hist_entry* %0, %struct.perf_hpp* %1, %struct.perf_hpp_fmt* %2, i32 %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.perf_hpp*, align 8
  %7 = alloca %struct.perf_hpp_fmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store %struct.perf_hpp* %1, %struct.perf_hpp** %6, align 8
  store %struct.perf_hpp_fmt* %2, %struct.perf_hpp_fmt** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %7, align 8
  %11 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %10, i32 0, i32 1
  %12 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @list_is_last(i32* %11, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %4
  %21 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %7, align 8
  %22 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %21, i32 0, i32 0
  %23 = load i32 (%struct.perf_hpp_fmt*, %struct.perf_hpp.0*, %struct.TYPE_4__*)*, i32 (%struct.perf_hpp_fmt*, %struct.perf_hpp.0*, %struct.TYPE_4__*)** %22, align 8
  %24 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %7, align 8
  %25 = load %struct.perf_hpp*, %struct.perf_hpp** %6, align 8
  %26 = bitcast %struct.perf_hpp* %25 to %struct.perf_hpp.0*
  %27 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 %23(%struct.perf_hpp_fmt* %24, %struct.perf_hpp.0* %26, %struct.TYPE_4__* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %20
  %35 = load %struct.perf_hpp*, %struct.perf_hpp** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @advance_hpp(%struct.perf_hpp* %35, i32 %36)
  %38 = load %struct.perf_hpp*, %struct.perf_hpp** %6, align 8
  %39 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.perf_hpp*, %struct.perf_hpp** %6, align 8
  %42 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @scnprintf(i32 %40, i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %34, %20
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local i32 @advance_hpp(%struct.perf_hpp*, i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
