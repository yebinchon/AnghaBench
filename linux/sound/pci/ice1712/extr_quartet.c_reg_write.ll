; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.2*, i32)*, i32 (%struct.snd_ice1712.3*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.snd_ice1712.1 = type opaque
%struct.snd_ice1712.2 = type opaque
%struct.snd_ice1712.3 = type opaque

@GPIO_DATA_MASK = common dso_local global i32 0, align 4
@GPIO_EX_GPIOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32)* @reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_write(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  store i32 65535, i32* %7, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %13, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = bitcast %struct.snd_ice1712* %15 to %struct.snd_ice1712.1*
  %17 = load i32, i32* %7, align 4
  %18 = call i32 %14(%struct.snd_ice1712.1* %16, i32 %17)
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32 (%struct.snd_ice1712.2*, i32)*, i32 (%struct.snd_ice1712.2*, i32)** %21, align 8
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %24 = bitcast %struct.snd_ice1712* %23 to %struct.snd_ice1712.2*
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = call i32 %22(%struct.snd_ice1712.2* %24, i32 %26)
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.0*)** %30, align 8
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %33 = bitcast %struct.snd_ice1712* %32 to %struct.snd_ice1712.0*
  %34 = call i32 %31(%struct.snd_ice1712.0* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @GPIO_DATA_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.3*, i32)** %44, align 8
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %47 = bitcast %struct.snd_ice1712* %46 to %struct.snd_ice1712.3*
  %48 = load i32, i32* %7, align 4
  %49 = call i32 %45(%struct.snd_ice1712.3* %47, i32 %48)
  %50 = call i32 @udelay(i32 100)
  %51 = load i32, i32* @GPIO_EX_GPIOE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.3*, i32)** %57, align 8
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %60 = bitcast %struct.snd_ice1712* %59 to %struct.snd_ice1712.3*
  %61 = load i32, i32* %7, align 4
  %62 = call i32 %58(%struct.snd_ice1712.3* %60, i32 %61)
  %63 = call i32 @udelay(i32 100)
  %64 = load i32, i32* %5, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.3*, i32)** %70, align 8
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %73 = bitcast %struct.snd_ice1712* %72 to %struct.snd_ice1712.3*
  %74 = load i32, i32* %7, align 4
  %75 = call i32 %71(%struct.snd_ice1712.3* %73, i32 %74)
  %76 = call i32 @udelay(i32 100)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %81 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.3*, i32)** %82, align 8
  %84 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %85 = bitcast %struct.snd_ice1712* %84 to %struct.snd_ice1712.3*
  %86 = load i32, i32* %7, align 4
  %87 = call i32 %83(%struct.snd_ice1712.3* %85, i32 %86)
  %88 = call i32 @udelay(i32 100)
  %89 = load i32, i32* @GPIO_DATA_MASK, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %93 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.3*, i32)** %94, align 8
  %96 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %97 = bitcast %struct.snd_ice1712* %96 to %struct.snd_ice1712.3*
  %98 = load i32, i32* %7, align 4
  %99 = call i32 %95(%struct.snd_ice1712.3* %97, i32 %98)
  %100 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %101 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32 (%struct.snd_ice1712.2*, i32)*, i32 (%struct.snd_ice1712.2*, i32)** %102, align 8
  %104 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %105 = bitcast %struct.snd_ice1712* %104 to %struct.snd_ice1712.2*
  %106 = call i32 %103(%struct.snd_ice1712.2* %105, i32 16777215)
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %108 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %109, align 8
  %111 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %112 = bitcast %struct.snd_ice1712* %111 to %struct.snd_ice1712.1*
  %113 = call i32 %110(%struct.snd_ice1712.1* %112, i32 65280)
  %114 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %115 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
