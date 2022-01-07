; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_get_y.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_get_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hw* }
%struct.hw = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer*)* @amixer_get_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amixer_get_y(%struct.amixer* %0) #0 {
  %2 = alloca %struct.amixer*, align 8
  %3 = alloca %struct.hw*, align 8
  store %struct.amixer* %0, %struct.amixer** %2, align 8
  %4 = load %struct.amixer*, %struct.amixer** %2, align 8
  %5 = getelementptr inbounds %struct.amixer, %struct.amixer* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.hw*, %struct.hw** %6, align 8
  store %struct.hw* %7, %struct.hw** %3, align 8
  %8 = load %struct.hw*, %struct.hw** %3, align 8
  %9 = getelementptr inbounds %struct.hw, %struct.hw* %8, i32 0, i32 0
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load %struct.amixer*, %struct.amixer** %2, align 8
  %12 = getelementptr inbounds %struct.amixer, %struct.amixer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 %10(i32 %14)
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
