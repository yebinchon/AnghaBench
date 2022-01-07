; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_setclockmode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_setclockmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i64, i32, i32 }

@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@RME96_AR_WSEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME96_IO_ADDITIONAL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*, i32)* @snd_rme96_setclockmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_setclockmode(%struct.rme96* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rme96*, align 8
  %5 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %43 [
    i32 129, label %7
    i32 130, label %20
    i32 128, label %32
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @RME96_WCR_MASTER, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.rme96*, %struct.rme96** %4, align 8
  %11 = getelementptr inbounds %struct.rme96, %struct.rme96* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @RME96_AR_WSEL, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.rme96*, %struct.rme96** %4, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* @RME96_WCR_MASTER, align 4
  %22 = load %struct.rme96*, %struct.rme96** %4, align 8
  %23 = getelementptr inbounds %struct.rme96, %struct.rme96* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @RME96_AR_WSEL, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.rme96*, %struct.rme96** %4, align 8
  %29 = getelementptr inbounds %struct.rme96, %struct.rme96* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %46

32:                                               ; preds = %2
  %33 = load i32, i32* @RME96_WCR_MASTER, align 4
  %34 = load %struct.rme96*, %struct.rme96** %4, align 8
  %35 = getelementptr inbounds %struct.rme96, %struct.rme96* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @RME96_AR_WSEL, align 4
  %39 = load %struct.rme96*, %struct.rme96** %4, align 8
  %40 = getelementptr inbounds %struct.rme96, %struct.rme96* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %32, %20, %7
  %47 = load %struct.rme96*, %struct.rme96** %4, align 8
  %48 = getelementptr inbounds %struct.rme96, %struct.rme96* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rme96*, %struct.rme96** %4, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.rme96*, %struct.rme96** %4, align 8
  %57 = getelementptr inbounds %struct.rme96, %struct.rme96* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rme96*, %struct.rme96** %4, align 8
  %60 = getelementptr inbounds %struct.rme96, %struct.rme96* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %46, %43
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
