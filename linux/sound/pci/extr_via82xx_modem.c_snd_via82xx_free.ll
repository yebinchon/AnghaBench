; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx_modem = type { i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx_modem*)* @snd_via82xx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_free(%struct.via82xx_modem* %0) #0 {
  %2 = alloca %struct.via82xx_modem*, align 8
  %3 = alloca i32, align 4
  store %struct.via82xx_modem* %0, %struct.via82xx_modem** %2, align 8
  %4 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %5 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %13 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %18 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %19 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @snd_via82xx_channel_reset(%struct.via82xx_modem* %17, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28, %8
  %30 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %31 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %36 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %39 = call i32 @free_irq(i64 %37, %struct.via82xx_modem* %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %42 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_release_regions(i32 %43)
  %45 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %46 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_disable_device(i32 %47)
  %49 = load %struct.via82xx_modem*, %struct.via82xx_modem** %2, align 8
  %50 = call i32 @kfree(%struct.via82xx_modem* %49)
  ret i32 0
}

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx_modem*, i32*) #1

declare dso_local i32 @free_irq(i64, %struct.via82xx_modem*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.via82xx_modem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
