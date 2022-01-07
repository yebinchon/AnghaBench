; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/galaxy/extr_galaxy.c_galaxy_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/galaxy/extr_galaxy.c_galaxy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_galaxy = type { i32 }

@GALAXY_DSP_MAJOR = common dso_local global i64 0, align 8
@GALAXY_DSP_MINOR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DSP_COMMAND_GALAXY_8 = common dso_local global i32 0, align 4
@GALAXY_COMMAND_GET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_galaxy*, i64*)* @galaxy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @galaxy_init(%struct.snd_galaxy* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_galaxy*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_galaxy* %0, %struct.snd_galaxy** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %10 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dsp_reset(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %19 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dsp_get_version(i32 %20, i64* %6, i64* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @GALAXY_DSP_MAJOR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @GALAXY_DSP_MINOR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %30
  %38 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %39 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DSP_COMMAND_GALAXY_8, align 4
  %42 = call i32 @dsp_command(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %68

47:                                               ; preds = %37
  %48 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %49 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GALAXY_COMMAND_GET_TYPE, align 4
  %52 = call i32 @dsp_command(i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %59 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64*, i64** %5, align 8
  %62 = call i32 @dsp_get_byte(i32 %60, i64* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %65, %55, %45, %34, %24, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dsp_reset(i32) #1

declare dso_local i32 @dsp_get_version(i32, i64*, i64*) #1

declare dso_local i32 @dsp_command(i32, i32) #1

declare dso_local i32 @dsp_get_byte(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
