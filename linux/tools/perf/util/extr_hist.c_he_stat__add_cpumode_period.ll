; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_he_stat__add_cpumode_period.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_he_stat__add_cpumode_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_stat = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_stat*, i32, i32)* @he_stat__add_cpumode_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_stat__add_cpumode_period(%struct.he_stat* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.he_stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.he_stat* %0, %struct.he_stat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %32 [
    i32 129, label %8
    i32 128, label %14
    i32 131, label %20
    i32 130, label %26
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %11 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %17 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %23 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %29 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %26, %20, %14, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
