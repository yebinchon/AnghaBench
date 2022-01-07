; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__sort_new_samples.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__sort_new_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { i64, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [72 x i8] c"Too slow to read ring buffer (change period (-c/-F) or limit CPUs (-C)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @perf_top__sort_new_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__sort_new_samples(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_top*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.perf_top*
  store %struct.perf_top* %5, %struct.perf_top** %3, align 8
  %6 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %7 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %14 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %19 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %22 = call i32 @perf_top__resort_hists(%struct.perf_top* %21)
  %23 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %24 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %29 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %20
  %33 = call i32 @pr_warning(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @perf_top__resort_hists(%struct.perf_top*) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
