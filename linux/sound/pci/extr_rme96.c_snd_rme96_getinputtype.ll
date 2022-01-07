; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_getinputtype.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_getinputtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i32 }

@RME96_AR_ANALOG = common dso_local global i32 0, align 4
@RME96_INPUT_ANALOG = common dso_local global i32 0, align 4
@RME96_WCR_BITPOS_INP_0 = common dso_local global i32 0, align 4
@RME96_WCR_BITPOS_INP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*)* @snd_rme96_getinputtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_getinputtype(%struct.rme96* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rme96*, align 8
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  %4 = load %struct.rme96*, %struct.rme96** %3, align 8
  %5 = getelementptr inbounds %struct.rme96, %struct.rme96* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RME96_AR_ANALOG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @RME96_INPUT_ANALOG, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.rme96*, %struct.rme96** %3, align 8
  %14 = getelementptr inbounds %struct.rme96, %struct.rme96* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RME96_WCR_BITPOS_INP_0, align 4
  %17 = ashr i32 %15, %16
  %18 = and i32 %17, 1
  %19 = load %struct.rme96*, %struct.rme96** %3, align 8
  %20 = getelementptr inbounds %struct.rme96, %struct.rme96* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RME96_WCR_BITPOS_INP_1, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 1
  %25 = shl i32 %24, 1
  %26 = add nsw i32 %18, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
