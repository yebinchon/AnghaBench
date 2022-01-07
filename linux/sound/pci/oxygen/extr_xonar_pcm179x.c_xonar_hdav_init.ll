; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_hdav_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_hdav_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.TYPE_6__, %struct.xonar_hdav* }
%struct.TYPE_6__ = type { i32 }
%struct.xonar_hdav = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@OXYGEN_2WIRE_BUS_STATUS = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_LENGTH_8 = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_SPEED_STANDARD = common dso_local global i32 0, align 4
@GPIO_HDAV_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_GPI_DATA = common dso_local global i32 0, align 4
@OXYGEN_GPI_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GPI_EXT_POWER = common dso_local global i32 0, align 4
@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@GPIO_HDAV_MAGIC = common dso_local global i32 0, align 4
@GPIO_INPUT_ROUTE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PCM1796\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CS5381\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_hdav_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_hdav_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_hdav*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.xonar_hdav*, %struct.xonar_hdav** %5, align 8
  store %struct.xonar_hdav* %6, %struct.xonar_hdav** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i32, i32* @OXYGEN_2WIRE_BUS_STATUS, align 4
  %9 = load i32, i32* @OXYGEN_2WIRE_LENGTH_8, align 4
  %10 = load i32, i32* @OXYGEN_2WIRE_INTERRUPT_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OXYGEN_2WIRE_SPEED_STANDARD, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @oxygen_write16(%struct.oxygen* %7, i32 %8, i32 %13)
  %15 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %16 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 100, i32* %18, align 4
  %19 = load i32, i32* @GPIO_HDAV_OUTPUT_ENABLE, align 4
  %20 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %21 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @OXYGEN_GPI_DATA, align 4
  %25 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %26 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @OXYGEN_GPI_INTERRUPT_MASK, align 4
  %30 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %31 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @GPI_EXT_POWER, align 4
  %35 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %36 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %40 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 2
  %44 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %45 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 2
  %52 = zext i1 %51 to i32
  %53 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %54 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %57 = call i32 @pcm1796_init(%struct.oxygen* %56)
  %58 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %59 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %60 = load i32, i32* @GPIO_HDAV_MAGIC, align 4
  %61 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @oxygen_set_bits16(%struct.oxygen* %58, i32 %59, i32 %62)
  %64 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %65 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %66 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %67 = call i32 @oxygen_clear_bits16(%struct.oxygen* %64, i32 %65, i32 %66)
  %68 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %69 = call i32 @xonar_init_cs53x1(%struct.oxygen* %68)
  %70 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %71 = call i32 @xonar_init_ext_power(%struct.oxygen* %70)
  %72 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %73 = load %struct.xonar_hdav*, %struct.xonar_hdav** %3, align 8
  %74 = getelementptr inbounds %struct.xonar_hdav, %struct.xonar_hdav* %73, i32 0, i32 0
  %75 = call i32 @xonar_hdmi_init(%struct.oxygen* %72, i32* %74)
  %76 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %77 = call i32 @xonar_enable_output(%struct.oxygen* %76)
  %78 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %79 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @snd_component_add(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %83 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @snd_component_add(i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @pcm1796_init(%struct.oxygen*) #1

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @xonar_init_cs53x1(%struct.oxygen*) #1

declare dso_local i32 @xonar_init_ext_power(%struct.oxygen*) #1

declare dso_local i32 @xonar_hdmi_init(%struct.oxygen*, i32*) #1

declare dso_local i32 @xonar_enable_output(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
