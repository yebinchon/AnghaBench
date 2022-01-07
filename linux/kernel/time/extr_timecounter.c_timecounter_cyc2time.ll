; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timecounter.c_timecounter_cyc2time.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timecounter.c_timecounter_cyc2time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timecounter_cyc2time(%struct.timecounter* %0, i32 %1) #0 {
  %3 = alloca %struct.timecounter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timecounter* %0, %struct.timecounter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %10 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %8, %11
  %13 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %14 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %12, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %20 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %23 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %27 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  %32 = icmp sgt i32 %25, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %2
  %34 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %35 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %40 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %38, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %46 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %50 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @cc_cyc2ns_backwards(%struct.TYPE_3__* %47, i32 %48, i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  br label %71

58:                                               ; preds = %2
  %59 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %60 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %59, i32 0, i32 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %64 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @cyclecounter_cyc2ns(%struct.TYPE_3__* %61, i32 %62, i32 %65, i32* %7)
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %58, %33
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @cc_cyc2ns_backwards(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i64 @cyclecounter_cyc2ns(%struct.TYPE_3__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
