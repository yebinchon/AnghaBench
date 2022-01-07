; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__cycles_hist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__cycles_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyc_hist = type { i32 }
%struct.symbol = type { i32 }
%struct.annotation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cyc_hist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cyc_hist* (%struct.symbol*)* @symbol__cycles_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cyc_hist* @symbol__cycles_hist(%struct.symbol* %0) #0 {
  %2 = alloca %struct.cyc_hist*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.annotation*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %5 = load %struct.symbol*, %struct.symbol** %3, align 8
  %6 = call %struct.annotation* @symbol__annotation(%struct.symbol* %5)
  store %struct.annotation* %6, %struct.annotation** %4, align 8
  %7 = load %struct.annotation*, %struct.annotation** %4, align 8
  %8 = getelementptr inbounds %struct.annotation, %struct.annotation* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = call %struct.TYPE_2__* (...) @annotated_source__new()
  %13 = load %struct.annotation*, %struct.annotation** %4, align 8
  %14 = getelementptr inbounds %struct.annotation, %struct.annotation* %13, i32 0, i32 0
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.annotation*, %struct.annotation** %4, align 8
  %16 = getelementptr inbounds %struct.annotation, %struct.annotation* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store %struct.cyc_hist* null, %struct.cyc_hist** %2, align 8
  br label %38

20:                                               ; preds = %11
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.annotation*, %struct.annotation** %4, align 8
  %23 = getelementptr inbounds %struct.annotation, %struct.annotation* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.cyc_hist*, %struct.cyc_hist** %25, align 8
  %27 = icmp ne %struct.cyc_hist* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.symbol*, %struct.symbol** %3, align 8
  %31 = call i32 @symbol__alloc_hist_cycles(%struct.symbol* %30)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.annotation*, %struct.annotation** %4, align 8
  %34 = getelementptr inbounds %struct.annotation, %struct.annotation* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.cyc_hist*, %struct.cyc_hist** %36, align 8
  store %struct.cyc_hist* %37, %struct.cyc_hist** %2, align 8
  br label %38

38:                                               ; preds = %32, %19
  %39 = load %struct.cyc_hist*, %struct.cyc_hist** %2, align 8
  ret %struct.cyc_hist* %39
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local %struct.TYPE_2__* @annotated_source__new(...) #1

declare dso_local i32 @symbol__alloc_hist_cycles(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
