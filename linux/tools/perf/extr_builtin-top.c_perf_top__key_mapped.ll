; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__key_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__key_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_top*, i32)* @perf_top__key_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_top__key_mapped(%struct.perf_top* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_top*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %18 [
    i32 100, label %7
    i32 101, label %7
    i32 102, label %7
    i32 122, label %7
    i32 113, label %7
    i32 81, label %7
    i32 75, label %7
    i32 85, label %7
    i32 70, label %7
    i32 115, label %7
    i32 83, label %7
    i32 69, label %8
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %20

8:                                                ; preds = %2
  %9 = load %struct.perf_top*, %struct.perf_top** %4, align 8
  %10 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %8, %7
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
