; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_cs4362a_write_cached.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_cs4362a_write_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_cs43xx* }
%struct.xonar_cs43xx = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i64, i64)* @cs4362a_write_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4362a_write_cached(%struct.oxygen* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xonar_cs43xx*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %9, align 8
  store %struct.xonar_cs43xx* %10, %struct.xonar_cs43xx** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %7, align 8
  %13 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %11, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @cs4362a_write(%struct.oxygen* %20, i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @cs4362a_write(%struct.oxygen*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
