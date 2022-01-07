; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_str_to_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_str_to_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @str_to_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_bitmap(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_cpu_map*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.perf_cpu_map* @perf_cpu_map__new(i8* %12)
  store %struct.perf_cpu_map* %13, %struct.perf_cpu_map** %10, align 8
  %14 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %15 = icmp ne %struct.perf_cpu_map* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %21 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %26 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 -1, i32* %9, align 4
  br label %44

36:                                               ; preds = %24
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @cpumask_bits(i32* %38)
  %40 = call i32 @set_bit(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %18

44:                                               ; preds = %35, %18
  %45 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %46 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @cpumask_bits(i32*) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
