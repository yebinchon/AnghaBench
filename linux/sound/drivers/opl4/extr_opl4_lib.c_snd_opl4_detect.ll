; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_lib.c_snd_opl4_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_lib.c_snd_opl4_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }

@OPL4_REG_MEMORY_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OPL4[02]=%02x\0A\00", align 1
@OPL4_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@OPL3_HW_OPL4 = common dso_local global i32 0, align 4
@OPL3_HW_OPL4_ML = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OPL4_REG_MIX_CONTROL_FM = common dso_local global i32 0, align 4
@OPL4_REG_MIX_CONTROL_PCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"OPL4 id1=%02x id2=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl4*)* @snd_opl4_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl4_detect(%struct.snd_opl4* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  %6 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %7 = call i32 @snd_opl4_enable_opl4(%struct.snd_opl4* %6)
  %8 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %9 = load i32, i32* @OPL4_REG_MEMORY_CONFIGURATION, align 4
  %10 = call i32 @snd_opl4_read(%struct.snd_opl4* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @OPL4_DEVICE_ID_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %24 [
    i32 32, label %16
    i32 64, label %20
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @OPL3_HW_OPL4, align 4
  %18 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %19 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @OPL3_HW_OPL4_ML, align 4
  %22 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %23 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %61

27:                                               ; preds = %20, %16
  %28 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %29 = load i32, i32* @OPL4_REG_MIX_CONTROL_FM, align 4
  %30 = call i32 @snd_opl4_write(%struct.snd_opl4* %28, i32 %29, i32 0)
  %31 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %32 = load i32, i32* @OPL4_REG_MIX_CONTROL_PCM, align 4
  %33 = call i32 @snd_opl4_write(%struct.snd_opl4* %31, i32 %32, i32 255)
  %34 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %35 = load i32, i32* @OPL4_REG_MIX_CONTROL_FM, align 4
  %36 = call i32 @snd_opl4_read(%struct.snd_opl4* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %38 = load i32, i32* @OPL4_REG_MIX_CONTROL_PCM, align 4
  %39 = call i32 @snd_opl4_read(%struct.snd_opl4* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 255
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %27
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %61

51:                                               ; preds = %45
  %52 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %53 = load i32, i32* @OPL4_REG_MIX_CONTROL_FM, align 4
  %54 = call i32 @snd_opl4_write(%struct.snd_opl4* %52, i32 %53, i32 63)
  %55 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %56 = load i32, i32* @OPL4_REG_MIX_CONTROL_PCM, align 4
  %57 = call i32 @snd_opl4_write(%struct.snd_opl4* %55, i32 %56, i32 63)
  %58 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %59 = load i32, i32* @OPL4_REG_MEMORY_CONFIGURATION, align 4
  %60 = call i32 @snd_opl4_write(%struct.snd_opl4* %58, i32 %59, i32 0)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %51, %48, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @snd_opl4_enable_opl4(%struct.snd_opl4*) #1

declare dso_local i32 @snd_opl4_read(%struct.snd_opl4*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, ...) #1

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
