; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_store_evsel_ids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_store_evsel_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.evlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.evlist*)* @store_evsel_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_evsel_ids(%struct.evsel* %0, %struct.evlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.evlist* %1, %struct.evlist** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %46, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.evsel*, %struct.evsel** %4, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xyarray__max_x(i32 %14)
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.evsel*, %struct.evsel** %4, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xyarray__max_y(i32 %23)
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load %struct.evsel*, %struct.evsel** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @FD(%struct.evsel* %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.evlist*, %struct.evlist** %5, align 8
  %32 = getelementptr inbounds %struct.evlist, %struct.evlist* %31, i32 0, i32 0
  %33 = load %struct.evsel*, %struct.evsel** %4, align 8
  %34 = getelementptr inbounds %struct.evsel, %struct.evsel* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @perf_evlist__id_add_fd(i32* %32, %struct.TYPE_2__* %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %50

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %18

45:                                               ; preds = %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %9

49:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @xyarray__max_x(i32) #1

declare dso_local i32 @xyarray__max_y(i32) #1

declare dso_local i32 @FD(%struct.evsel*, i32, i32) #1

declare dso_local i64 @perf_evlist__id_add_fd(i32*, %struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
