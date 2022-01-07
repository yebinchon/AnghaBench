; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_phase22_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_phase22_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.snd_akm4xxx* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_akm4xxx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@akm_phase22 = common dso_local global i32 0, align 4
@akm_phase22_priv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @phase22_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phase22_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.snd_akm4xxx*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %17 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 2
  store i32 1, i32* %16, align 8
  br label %21

17:                                               ; preds = %1
  %18 = call i32 (...) @snd_BUG()
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %10
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.snd_akm4xxx* @kzalloc(i32 4, i32 %22)
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 5
  store %struct.snd_akm4xxx* %23, %struct.snd_akm4xxx** %25, align 8
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %27 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %26, i32 0, i32 5
  %28 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %27, align 8
  store %struct.snd_akm4xxx* %28, %struct.snd_akm4xxx** %4, align 8
  %29 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %30 = icmp ne %struct.snd_akm4xxx* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %21
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %38 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %50 [
    i32 129, label %41
    i32 128, label %41
  ]

41:                                               ; preds = %34, %34
  %42 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = call i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %42, i32* @akm_phase22, i32* @akm_phase22_priv, %struct.snd_ice1712* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %34, %49
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %47, %31, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local %struct.snd_akm4xxx* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx*, i32*, i32*, %struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
