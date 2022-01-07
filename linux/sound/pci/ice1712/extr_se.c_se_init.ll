; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.se_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.se_spec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VT1724_SUBDEVICE_SE90PCI = common dso_local global i64 0, align 8
@VT1724_SUBDEVICE_SE200PCI = common dso_local global i64 0, align 8
@se200pci_set_pro_rate = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @se_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.se_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.se_spec* @kzalloc(i32 4, i32 %5)
  store %struct.se_spec* %6, %struct.se_spec** %4, align 8
  %7 = load %struct.se_spec*, %struct.se_spec** %4, align 8
  %8 = icmp ne %struct.se_spec* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.se_spec*, %struct.se_spec** %4, align 8
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 5
  store %struct.se_spec* %13, %struct.se_spec** %15, align 8
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VT1724_SUBDEVICE_SE90PCI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  store i32 0, i32* %2, align 4
  br label %55

29:                                               ; preds = %12
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VT1724_SUBDEVICE_SE200PCI, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %38 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %37, i32 0, i32 0
  store i32 8, i32* %38, align 8
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 1
  store i32 2, i32* %40, align 4
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %42 = call i32 @se200pci_WM8740_init(%struct.snd_ice1712* %41)
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = call i32 @se200pci_WM8766_init(%struct.snd_ice1712* %43)
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = call i32 @se200pci_WM8776_init(%struct.snd_ice1712* %45)
  %47 = load i32, i32* @se200pci_set_pro_rate, align 4
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %55

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %36, %22, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.se_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @se200pci_WM8740_init(%struct.snd_ice1712*) #1

declare dso_local i32 @se200pci_WM8766_init(%struct.snd_ice1712*) #1

declare dso_local i32 @se200pci_WM8776_init(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
