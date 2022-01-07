; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_write_stereo_amp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_write_stereo_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_GET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_SET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_SET_INPUT = common dso_local global i32 0, align 4
@AC_AMP_SET_LEFT = common dso_local global i32 0, align 4
@AC_AMP_SET_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, i32, i32)* @hda_reg_write_stereo_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_reg_write_stereo_amp(%struct.hdac_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %13 = shl i32 %12, 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @AC_AMP_SET_OUTPUT, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load i32, i32* @AC_AMP_SET_INPUT, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 15
  %26 = shl i32 %25, 8
  %27 = or i32 %23, %26
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %22, %18
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, -1048576
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 255
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %30
  %44 = load i32, i32* @AC_AMP_SET_LEFT, align 4
  %45 = load i32, i32* @AC_AMP_SET_RIGHT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @snd_hdac_exec_verb(%struct.hdac_device* %49, i32 %52, i32 0, i32* null)
  store i32 %53, i32* %4, align 4
  br label %79

54:                                               ; preds = %30
  %55 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @AC_AMP_SET_LEFT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @snd_hdac_exec_verb(%struct.hdac_device* %55, i32 %60, i32 0, i32* null)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %79

66:                                               ; preds = %54
  %67 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @AC_AMP_SET_RIGHT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @snd_hdac_exec_verb(%struct.hdac_device* %67, i32 %72, i32 0, i32* null)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %76, %64, %43
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @snd_hdac_exec_verb(%struct.hdac_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
