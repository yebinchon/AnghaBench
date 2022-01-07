; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se200pci_WM8766_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se200pci_WM8766_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32)* @se200pci_WM8766_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se200pci_WM8766_write(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 65536, i32* %10, align 4
  store i32 131072, i32* %11, align 4
  store i32 262144, i32* %12, align 4
  store i32 458752, i32* %13, align 4
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %15 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %14)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 127
  %18 = shl i32 %17, 9
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 511
  %21 = or i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 458752
  %28 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %22, i32 %27)
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -458753
  %35 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %29, i32 %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %37 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %36)
  %38 = and i32 %37, -458753
  store i32 %38, i32* %8, align 4
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %39, i32 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %70, %3
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = call i32 @udelay(i32 1)
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, -131073
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 65536
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, 65536
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %45
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, -65537
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %61, i32 %62)
  %64 = call i32 @udelay(i32 1)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, 131072
  store i32 %66, i32* %8, align 4
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %67, i32 %68)
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %42

73:                                               ; preds = %42
  %74 = call i32 @udelay(i32 1)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, 262144
  store i32 %76, i32* %8, align 4
  %77 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %77, i32 %78)
  %80 = call i32 @udelay(i32 1)
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, 196608
  store i32 %82, i32* %8, align 4
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %83, i32 %84)
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %87 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %86)
  ret void
}

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
