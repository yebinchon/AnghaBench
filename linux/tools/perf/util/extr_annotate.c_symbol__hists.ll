; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__hists.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__hists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotated_source = type { i32* }
%struct.symbol = type { i32 }
%struct.annotation = type { %struct.annotated_source* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.annotated_source* @symbol__hists(%struct.symbol* %0, i32 %1) #0 {
  %3 = alloca %struct.annotated_source*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.annotation*, align 8
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.symbol*, %struct.symbol** %4, align 8
  %8 = call %struct.annotation* @symbol__annotation(%struct.symbol* %7)
  store %struct.annotation* %8, %struct.annotation** %6, align 8
  %9 = load %struct.annotation*, %struct.annotation** %6, align 8
  %10 = getelementptr inbounds %struct.annotation, %struct.annotation* %9, i32 0, i32 0
  %11 = load %struct.annotated_source*, %struct.annotated_source** %10, align 8
  %12 = icmp eq %struct.annotated_source* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = call %struct.annotated_source* (...) @annotated_source__new()
  %15 = load %struct.annotation*, %struct.annotation** %6, align 8
  %16 = getelementptr inbounds %struct.annotation, %struct.annotation* %15, i32 0, i32 0
  store %struct.annotated_source* %14, %struct.annotated_source** %16, align 8
  %17 = load %struct.annotation*, %struct.annotation** %6, align 8
  %18 = getelementptr inbounds %struct.annotation, %struct.annotation* %17, i32 0, i32 0
  %19 = load %struct.annotated_source*, %struct.annotated_source** %18, align 8
  %20 = icmp eq %struct.annotated_source* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store %struct.annotated_source* null, %struct.annotated_source** %3, align 8
  br label %43

22:                                               ; preds = %13
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.annotation*, %struct.annotation** %6, align 8
  %25 = getelementptr inbounds %struct.annotation, %struct.annotation* %24, i32 0, i32 0
  %26 = load %struct.annotated_source*, %struct.annotated_source** %25, align 8
  %27 = getelementptr inbounds %struct.annotated_source, %struct.annotated_source* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.annotation*, %struct.annotation** %6, align 8
  %33 = getelementptr inbounds %struct.annotation, %struct.annotation* %32, i32 0, i32 0
  %34 = load %struct.annotated_source*, %struct.annotated_source** %33, align 8
  %35 = load %struct.symbol*, %struct.symbol** %4, align 8
  %36 = call i32 @symbol__size(%struct.symbol* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @annotated_source__alloc_histograms(%struct.annotated_source* %34, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.annotation*, %struct.annotation** %6, align 8
  %41 = getelementptr inbounds %struct.annotation, %struct.annotation* %40, i32 0, i32 0
  %42 = load %struct.annotated_source*, %struct.annotated_source** %41, align 8
  store %struct.annotated_source* %42, %struct.annotated_source** %3, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = load %struct.annotated_source*, %struct.annotated_source** %3, align 8
  ret %struct.annotated_source* %44
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local %struct.annotated_source* @annotated_source__new(...) #1

declare dso_local i32 @annotated_source__alloc_histograms(%struct.annotated_source*, i32, i32) #1

declare dso_local i32 @symbol__size(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
