; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__annotate_zero_histogram.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__annotate_zero_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.annotation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sym_hist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol__annotate_zero_histogram(%struct.symbol* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.annotation*, align 8
  %6 = alloca %struct.sym_hist*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = call %struct.annotation* @symbol__annotation(%struct.symbol* %7)
  store %struct.annotation* %8, %struct.annotation** %5, align 8
  %9 = load %struct.annotation*, %struct.annotation** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.sym_hist* @annotation__histogram(%struct.annotation* %9, i32 %10)
  store %struct.sym_hist* %11, %struct.sym_hist** %6, align 8
  %12 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %13 = load %struct.annotation*, %struct.annotation** %5, align 8
  %14 = getelementptr inbounds %struct.annotation, %struct.annotation* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(%struct.sym_hist* %12, i32 0, i32 %17)
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local %struct.sym_hist* @annotation__histogram(%struct.annotation*, i32) #1

declare dso_local i32 @memset(%struct.sym_hist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
