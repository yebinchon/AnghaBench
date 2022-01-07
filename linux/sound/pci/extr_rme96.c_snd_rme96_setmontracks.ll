; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_setmontracks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_setmontracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i64, i32 }

@RME96_WCR_MONITOR_0 = common dso_local global i32 0, align 4
@RME96_WCR_MONITOR_1 = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*, i32)* @snd_rme96_setmontracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_setmontracks(%struct.rme96* %0, i32 %1) #0 {
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @RME96_WCR_MONITOR_0, align 4
  %10 = load %struct.rme96*, %struct.rme96** %3, align 8
  %11 = getelementptr inbounds %struct.rme96, %struct.rme96* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @RME96_WCR_MONITOR_0, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.rme96*, %struct.rme96** %3, align 8
  %18 = getelementptr inbounds %struct.rme96, %struct.rme96* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %14, %8
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @RME96_WCR_MONITOR_1, align 4
  %27 = load %struct.rme96*, %struct.rme96** %3, align 8
  %28 = getelementptr inbounds %struct.rme96, %struct.rme96* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* @RME96_WCR_MONITOR_1, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.rme96*, %struct.rme96** %3, align 8
  %35 = getelementptr inbounds %struct.rme96, %struct.rme96* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.rme96*, %struct.rme96** %3, align 8
  %40 = getelementptr inbounds %struct.rme96, %struct.rme96* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rme96*, %struct.rme96** %3, align 8
  %43 = getelementptr inbounds %struct.rme96, %struct.rme96* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
