; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_set_sum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_set_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer = type { %struct.TYPE_5__, %struct.sum* }
%struct.TYPE_5__ = type { i32, %struct.hw* }
%struct.hw = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.sum = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer*, %struct.sum*)* @amixer_set_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amixer_set_sum(%struct.amixer* %0, %struct.sum* %1) #0 {
  %3 = alloca %struct.amixer*, align 8
  %4 = alloca %struct.sum*, align 8
  %5 = alloca %struct.hw*, align 8
  store %struct.amixer* %0, %struct.amixer** %3, align 8
  store %struct.sum* %1, %struct.sum** %4, align 8
  %6 = load %struct.amixer*, %struct.amixer** %3, align 8
  %7 = getelementptr inbounds %struct.amixer, %struct.amixer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.hw*, %struct.hw** %8, align 8
  store %struct.hw* %9, %struct.hw** %5, align 8
  %10 = load %struct.sum*, %struct.sum** %4, align 8
  %11 = load %struct.amixer*, %struct.amixer** %3, align 8
  %12 = getelementptr inbounds %struct.amixer, %struct.amixer* %11, i32 0, i32 1
  store %struct.sum* %10, %struct.sum** %12, align 8
  %13 = load %struct.sum*, %struct.sum** %4, align 8
  %14 = icmp ne %struct.sum* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.hw*, %struct.hw** %5, align 8
  %17 = getelementptr inbounds %struct.hw, %struct.hw* %16, i32 0, i32 1
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load %struct.amixer*, %struct.amixer** %3, align 8
  %20 = getelementptr inbounds %struct.amixer, %struct.amixer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(i32 %22, i32 0)
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.hw*, %struct.hw** %5, align 8
  %26 = getelementptr inbounds %struct.hw, %struct.hw* %25, i32 0, i32 1
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.amixer*, %struct.amixer** %3, align 8
  %29 = getelementptr inbounds %struct.amixer, %struct.amixer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(i32 %31, i32 1)
  %33 = load %struct.hw*, %struct.hw** %5, align 8
  %34 = getelementptr inbounds %struct.hw, %struct.hw* %33, i32 0, i32 0
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.amixer*, %struct.amixer** %3, align 8
  %37 = getelementptr inbounds %struct.amixer, %struct.amixer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sum*, %struct.sum** %4, align 8
  %41 = getelementptr inbounds %struct.sum, %struct.sum* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %44, align 8
  %46 = load %struct.sum*, %struct.sum** %4, align 8
  %47 = getelementptr inbounds %struct.sum, %struct.sum* %46, i32 0, i32 0
  %48 = call i32 %45(%struct.TYPE_6__* %47)
  %49 = call i32 %35(i32 %39, i32 %48)
  br label %50

50:                                               ; preds = %24, %15
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
