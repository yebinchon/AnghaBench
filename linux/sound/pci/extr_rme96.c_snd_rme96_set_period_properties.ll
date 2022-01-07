; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_set_period_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_set_period_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i64, i32 }

@RME96_WCR_ISEL = common dso_local global i32 0, align 4
@RME96_WCR_IDIS = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*, i64)* @snd_rme96_set_period_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_set_period_properties(%struct.rme96* %0, i64 %1) #0 {
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i64, align 8
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  switch i64 %5, label %19 [
    i64 129, label %6
    i64 128, label %13
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @RME96_WCR_ISEL, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.rme96*, %struct.rme96** %3, align 8
  %10 = getelementptr inbounds %struct.rme96, %struct.rme96* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @RME96_WCR_ISEL, align 4
  %15 = load %struct.rme96*, %struct.rme96** %3, align 8
  %16 = getelementptr inbounds %struct.rme96, %struct.rme96* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @snd_BUG()
  br label %21

21:                                               ; preds = %19, %13, %6
  %22 = load i32, i32* @RME96_WCR_IDIS, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.rme96*, %struct.rme96** %3, align 8
  %25 = getelementptr inbounds %struct.rme96, %struct.rme96* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.rme96*, %struct.rme96** %3, align 8
  %29 = getelementptr inbounds %struct.rme96, %struct.rme96* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rme96*, %struct.rme96** %3, align 8
  %32 = getelementptr inbounds %struct.rme96, %struct.rme96* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  ret void
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
