; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_xonar_d1_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_xonar_d1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.xonar_cs43xx* }
%struct.xonar_cs43xx = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GPIO_D1_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@CS4398_FM_SINGLE = common dso_local global i32 0, align 4
@CS4398_DEM_NONE = common dso_local global i32 0, align 4
@CS4398_DIF_LJUST = common dso_local global i32 0, align 4
@CS4398_MUTEP_LOW = common dso_local global i32 0, align 4
@CS4398_MUTE_B = common dso_local global i32 0, align 4
@CS4398_MUTE_A = common dso_local global i32 0, align 4
@CS4398_PAMUTE = common dso_local global i32 0, align 4
@CS4398_RMP_DN = common dso_local global i32 0, align 4
@CS4398_RMP_UP = common dso_local global i32 0, align 4
@CS4398_ZERO_CROSS = common dso_local global i32 0, align 4
@CS4398_SOFT_RAMP = common dso_local global i32 0, align 4
@CS4362A_RMP_DN = common dso_local global i32 0, align 4
@CS4362A_DEM_NONE = common dso_local global i32 0, align 4
@CS4362A_FM_SINGLE = common dso_local global i32 0, align 4
@CS4362A_ATAPI_B_R = common dso_local global i32 0, align 4
@CS4362A_ATAPI_A_L = common dso_local global i32 0, align 4
@CS4362A_MUTE = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_BUS_STATUS = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_LENGTH_8 = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_SPEED_FAST = common dso_local global i32 0, align 4
@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@GPIO_D1_FRONT_PANEL = common dso_local global i32 0, align 4
@GPIO_D1_MAGIC = common dso_local global i32 0, align 4
@GPIO_D1_INPUT_ROUTE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CS4398\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CS4362A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CS5361\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_d1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_d1_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_cs43xx*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 1
  %6 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %5, align 8
  store %struct.xonar_cs43xx* %6, %struct.xonar_cs43xx** %3, align 8
  %7 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %8 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 800, i32* %9, align 8
  %10 = load i32, i32* @GPIO_D1_OUTPUT_ENABLE, align 4
  %11 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %12 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @CS4398_FM_SINGLE, align 4
  %15 = load i32, i32* @CS4398_DEM_NONE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CS4398_DIF_LJUST, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %20 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @CS4398_MUTEP_LOW, align 4
  %24 = load i32, i32* @CS4398_MUTE_B, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CS4398_MUTE_A, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CS4398_PAMUTE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %31 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 %29, i32* %33, align 4
  %34 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %35 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 120, i32* %37, align 4
  %38 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %39 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32 120, i32* %41, align 4
  %42 = load i32, i32* @CS4398_RMP_DN, align 4
  %43 = load i32, i32* @CS4398_RMP_UP, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CS4398_ZERO_CROSS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CS4398_SOFT_RAMP, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %50 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @CS4362A_RMP_DN, align 4
  %54 = load i32, i32* @CS4362A_DEM_NONE, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %57 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @CS4362A_FM_SINGLE, align 4
  %61 = load i32, i32* @CS4362A_ATAPI_B_R, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CS4362A_ATAPI_A_L, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %66 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @CS4362A_MUTE, align 4
  %70 = or i32 60, %69
  %71 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %72 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @CS4362A_MUTE, align 4
  %76 = or i32 60, %75
  %77 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %78 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  store i32 %76, i32* %80, align 4
  %81 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %82 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %87 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 9
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @CS4362A_MUTE, align 4
  %91 = or i32 60, %90
  %92 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %93 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 10
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* @CS4362A_MUTE, align 4
  %97 = or i32 60, %96
  %98 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %99 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 11
  store i32 %97, i32* %101, align 4
  %102 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %103 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %108 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 12
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* @CS4362A_MUTE, align 4
  %112 = or i32 60, %111
  %113 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %114 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 13
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* @CS4362A_MUTE, align 4
  %118 = or i32 60, %117
  %119 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %3, align 8
  %120 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 14
  store i32 %118, i32* %122, align 4
  %123 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %124 = load i32, i32* @OXYGEN_2WIRE_BUS_STATUS, align 4
  %125 = load i32, i32* @OXYGEN_2WIRE_LENGTH_8, align 4
  %126 = load i32, i32* @OXYGEN_2WIRE_INTERRUPT_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @OXYGEN_2WIRE_SPEED_FAST, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @oxygen_write16(%struct.oxygen* %123, i32 %124, i32 %129)
  %131 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %132 = call i32 @cs43xx_registers_init(%struct.oxygen* %131)
  %133 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %134 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %135 = load i32, i32* @GPIO_D1_FRONT_PANEL, align 4
  %136 = load i32, i32* @GPIO_D1_MAGIC, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @GPIO_D1_INPUT_ROUTE, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @oxygen_set_bits16(%struct.oxygen* %133, i32 %134, i32 %139)
  %141 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %142 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %143 = load i32, i32* @GPIO_D1_FRONT_PANEL, align 4
  %144 = load i32, i32* @GPIO_D1_INPUT_ROUTE, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @oxygen_clear_bits16(%struct.oxygen* %141, i32 %142, i32 %145)
  %147 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %148 = call i32 @xonar_init_cs53x1(%struct.oxygen* %147)
  %149 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %150 = call i32 @xonar_enable_output(%struct.oxygen* %149)
  %151 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %152 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @snd_component_add(i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %156 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @snd_component_add(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %159 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %160 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @snd_component_add(i32 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @cs43xx_registers_init(%struct.oxygen*) #1

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @xonar_init_cs53x1(%struct.oxygen*) #1

declare dso_local i32 @xonar_enable_output(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
