; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_qs_wire.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_qs_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }

@HDSPM_QS_DoubleWire = common dso_local global i32 0, align 4
@HDSPM_QS_QuadWire = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*, i32)* @hdspm_set_qs_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_set_qs_wire(%struct.hdspm* %0, i32 %1) #0 {
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @HDSPM_QS_DoubleWire, align 4
  %6 = load i32, i32* @HDSPM_QS_QuadWire, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %10 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %27 [
    i32 0, label %14
    i32 1, label %15
    i32 2, label %21
  ]

14:                                               ; preds = %2
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* @HDSPM_QS_DoubleWire, align 4
  %17 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %18 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @HDSPM_QS_QuadWire, align 4
  %23 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %24 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %2, %21, %15, %14
  %28 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %29 = load i32, i32* @HDSPM_controlRegister, align 4
  %30 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %31 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hdspm_write(%struct.hdspm* %28, i32 %29, i32 %32)
  ret i32 0
}

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
