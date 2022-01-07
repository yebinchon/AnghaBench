; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i64 }
%struct.addr_location = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.symbol*, %struct.addr_location*)* @get_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_offset(%struct.symbol* %0, %struct.addr_location* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.addr_location*, align 8
  %5 = alloca i64, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store %struct.addr_location* %1, %struct.addr_location** %4, align 8
  %6 = load %struct.addr_location*, %struct.addr_location** %4, align 8
  %7 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.symbol*, %struct.symbol** %3, align 8
  %10 = getelementptr inbounds %struct.symbol, %struct.symbol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.addr_location*, %struct.addr_location** %4, align 8
  %15 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.symbol*, %struct.symbol** %3, align 8
  %18 = getelementptr inbounds %struct.symbol, %struct.symbol* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %5, align 8
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.addr_location*, %struct.addr_location** %4, align 8
  %23 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.addr_location*, %struct.addr_location** %4, align 8
  %26 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %24, %29
  %31 = load %struct.symbol*, %struct.symbol** %3, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %21, %13
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
