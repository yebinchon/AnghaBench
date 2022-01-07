; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kfifo.c_kfifo_unused.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kfifo.c_kfifo_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__kfifo*)* @kfifo_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfifo_unused(%struct.__kfifo* %0) #0 {
  %2 = alloca %struct.__kfifo*, align 8
  store %struct.__kfifo* %0, %struct.__kfifo** %2, align 8
  %3 = load %struct.__kfifo*, %struct.__kfifo** %2, align 8
  %4 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add i32 %5, 1
  %7 = load %struct.__kfifo*, %struct.__kfifo** %2, align 8
  %8 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.__kfifo*, %struct.__kfifo** %2, align 8
  %11 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %9, %12
  %14 = sub i32 %6, %13
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
