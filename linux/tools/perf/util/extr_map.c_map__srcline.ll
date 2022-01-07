; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__srcline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__srcline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.symbol = type { i32 }

@SRCLINE_UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @map__srcline(%struct.map* %0, i32 %1, %struct.symbol* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  store %struct.map* %0, %struct.map** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.symbol* %2, %struct.symbol** %7, align 8
  %8 = load %struct.map*, %struct.map** %5, align 8
  %9 = icmp eq %struct.map* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i8*, i8** @SRCLINE_UNKNOWN, align 8
  store i8* %11, i8** %4, align 8
  br label %22

12:                                               ; preds = %3
  %13 = load %struct.map*, %struct.map** %5, align 8
  %14 = getelementptr inbounds %struct.map, %struct.map* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.map*, %struct.map** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @map__rip_2objdump(%struct.map* %16, i32 %17)
  %19 = load %struct.symbol*, %struct.symbol** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @get_srcline(i32 %15, i32 %18, %struct.symbol* %19, i32 1, i32 1, i32 %20)
  store i8* %21, i8** %4, align 8
  br label %22

22:                                               ; preds = %12, %10
  %23 = load i8*, i8** %4, align 8
  ret i8* %23
}

declare dso_local i8* @get_srcline(i32, i32, %struct.symbol*, i32, i32, i32) #1

declare dso_local i32 @map__rip_2objdump(%struct.map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
