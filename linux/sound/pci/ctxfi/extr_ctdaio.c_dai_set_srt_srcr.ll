; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_dai_set_srt_srcr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_dai_set_srt_srcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dai = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.rsc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rsc*)*, i32 (%struct.rsc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dai*, %struct.rsc*)* @dai_set_srt_srcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dai_set_srt_srcr(%struct.dai* %0, %struct.rsc* %1) #0 {
  %3 = alloca %struct.dai*, align 8
  %4 = alloca %struct.rsc*, align 8
  store %struct.dai* %0, %struct.dai** %3, align 8
  store %struct.rsc* %1, %struct.rsc** %4, align 8
  %5 = load %struct.rsc*, %struct.rsc** %4, align 8
  %6 = getelementptr inbounds %struct.rsc, %struct.rsc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %8, align 8
  %10 = load %struct.rsc*, %struct.rsc** %4, align 8
  %11 = call i32 %9(%struct.rsc* %10)
  %12 = load %struct.dai*, %struct.dai** %3, align 8
  %13 = getelementptr inbounds %struct.dai, %struct.dai* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.dai*, %struct.dai** %3, align 8
  %18 = getelementptr inbounds %struct.dai, %struct.dai* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rsc*, %struct.rsc** %4, align 8
  %21 = getelementptr inbounds %struct.rsc, %struct.rsc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %23, align 8
  %25 = load %struct.rsc*, %struct.rsc** %4, align 8
  %26 = call i32 %24(%struct.rsc* %25)
  %27 = call i32 %16(i32 %19, i32 %26)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
