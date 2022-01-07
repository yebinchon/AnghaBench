; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, i64, i32, %struct.snd_cs46xx*, i32, i32*, i32*, %struct.TYPE_2__, i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)* }
%struct.TYPE_2__ = type { %struct.snd_cs46xx_region* }
%struct.snd_cs46xx_region = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS46XX_DSP_MODULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs46xx*)* @snd_cs46xx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_free(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_cs46xx_region*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %6 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %7 = icmp ne %struct.snd_cs46xx* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @snd_BUG_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %117

15:                                               ; preds = %1
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %17 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %16, i32 0, i32 8
  %18 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.snd_cs46xx*, i32)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %22 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %21, i32 0, i32 8
  %23 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %22, align 8
  %24 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %25 = call i32 %23(%struct.snd_cs46xx* %24, i32 1)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %28 = call i32 @snd_cs46xx_remove_gameport(%struct.snd_cs46xx* %27)
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %30 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %29, i32 0, i32 9
  %31 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.snd_cs46xx*, i32)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %35 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %34, i32 0, i32 9
  %36 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %35, align 8
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %38 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %39 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 0, %40
  %42 = call i32 %36(%struct.snd_cs46xx* %37, i32 %41)
  br label %43

43:                                               ; preds = %33, %26
  %44 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %45 = call i32 @snd_cs46xx_proc_done(%struct.snd_cs46xx* %44)
  %46 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %47 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.snd_cs46xx_region*, %struct.snd_cs46xx_region** %48, align 8
  %50 = getelementptr inbounds %struct.snd_cs46xx_region, %struct.snd_cs46xx_region* %49, i64 0
  %51 = getelementptr inbounds %struct.snd_cs46xx_region, %struct.snd_cs46xx_region* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %56 = call i32 @snd_cs46xx_hw_stop(%struct.snd_cs46xx* %55)
  br label %57

57:                                               ; preds = %54, %43
  %58 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %59 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %64 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %67 = call i32 @free_irq(i64 %65, %struct.snd_cs46xx* %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %70 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %69, i32 0, i32 8
  %71 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.snd_cs46xx*, i32)* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %75 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %74, i32 0, i32 8
  %76 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %75, align 8
  %77 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %78 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %79 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 0, %80
  %82 = call i32 %76(%struct.snd_cs46xx* %77, i32 %81)
  br label %83

83:                                               ; preds = %73, %68
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %103, %83
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 5
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %89 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.snd_cs46xx_region*, %struct.snd_cs46xx_region** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.snd_cs46xx_region, %struct.snd_cs46xx_region* %91, i64 %93
  store %struct.snd_cs46xx_region* %94, %struct.snd_cs46xx_region** %5, align 8
  %95 = load %struct.snd_cs46xx_region*, %struct.snd_cs46xx_region** %5, align 8
  %96 = getelementptr inbounds %struct.snd_cs46xx_region, %struct.snd_cs46xx_region* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @iounmap(i32 %97)
  %99 = load %struct.snd_cs46xx_region*, %struct.snd_cs46xx_region** %5, align 8
  %100 = getelementptr inbounds %struct.snd_cs46xx_region, %struct.snd_cs46xx_region* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @release_and_free_resource(i64 %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %108 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @vfree(i32 %109)
  %111 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %112 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @pci_disable_device(i32 %113)
  %115 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %116 = call i32 @kfree(%struct.snd_cs46xx* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %106, %12
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_cs46xx_remove_gameport(%struct.snd_cs46xx*) #1

declare dso_local i32 @snd_cs46xx_proc_done(%struct.snd_cs46xx*) #1

declare dso_local i32 @snd_cs46xx_hw_stop(%struct.snd_cs46xx*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_cs46xx*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_and_free_resource(i64) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_cs46xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
