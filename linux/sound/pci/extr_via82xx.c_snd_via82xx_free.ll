; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i64, i32, i64, i32, i32, i32, i32, i32* }

@TYPE_VIA686 = common dso_local global i64 0, align 8
@VIA_FUNC_ENABLE = common dso_local global i32 0, align 4
@VIA_PNP_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*)* @snd_via82xx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_free(%struct.via82xx* %0) #0 {
  %2 = alloca %struct.via82xx*, align 8
  %3 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %2, align 8
  %4 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %5 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %13 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %18 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %19 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @snd_via82xx_channel_reset(%struct.via82xx* %17, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %30 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %35 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %38 = call i32 @free_irq(i64 %36, %struct.via82xx* %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %8
  %41 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %42 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @release_and_free_resource(i32 %43)
  %45 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %46 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_release_regions(i32 %47)
  %49 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %50 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TYPE_VIA686, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %40
  %55 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %56 = call i32 @snd_via686_free_gameport(%struct.via82xx* %55)
  %57 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %58 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @VIA_FUNC_ENABLE, align 4
  %61 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %62 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pci_write_config_byte(i32 %59, i32 %60, i32 %63)
  %65 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %66 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VIA_PNP_CONTROL, align 4
  %69 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %70 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pci_write_config_byte(i32 %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %54, %40
  %74 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %75 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_disable_device(i32 %76)
  %78 = load %struct.via82xx*, %struct.via82xx** %2, align 8
  %79 = call i32 @kfree(%struct.via82xx* %78)
  ret i32 0
}

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx*, i32*) #1

declare dso_local i32 @free_irq(i64, %struct.via82xx*) #1

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @snd_via686_free_gameport(%struct.via82xx*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.via82xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
