; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__calc_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__calc_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.evsel = type { i32 }
%struct.annotation = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol__calc_percent(%struct.symbol* %0, %struct.evsel* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.annotation*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store %struct.evsel* %1, %struct.evsel** %4, align 8
  %6 = load %struct.symbol*, %struct.symbol** %3, align 8
  %7 = call %struct.annotation* @symbol__annotation(%struct.symbol* %6)
  store %struct.annotation* %7, %struct.annotation** %5, align 8
  %8 = load %struct.annotation*, %struct.annotation** %5, align 8
  %9 = load %struct.evsel*, %struct.evsel** %4, align 8
  %10 = load %struct.symbol*, %struct.symbol** %3, align 8
  %11 = call i32 @symbol__size(%struct.symbol* %10)
  %12 = call i32 @annotation__calc_percent(%struct.annotation* %8, %struct.evsel* %9, i32 %11)
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @annotation__calc_percent(%struct.annotation*, %struct.evsel*, i32) #1

declare dso_local i32 @symbol__size(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
