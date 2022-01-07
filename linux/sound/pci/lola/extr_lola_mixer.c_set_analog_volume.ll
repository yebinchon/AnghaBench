; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_set_analog_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_set_analog_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.lola_pin* }
%struct.lola_pin = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"set_analog_volume (dir=%d idx=%d, volume=%d)\0A\00", align 1
@LOLA_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, i32, i32, i32, i32)* @set_analog_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_analog_volume(%struct.lola* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lola*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lola_pin*, align 8
  %13 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.lola*, %struct.lola** %7, align 8
  %16 = getelementptr inbounds %struct.lola, %struct.lola* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %14, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %97

27:                                               ; preds = %5
  %28 = load %struct.lola*, %struct.lola** %7, align 8
  %29 = getelementptr inbounds %struct.lola, %struct.lola* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.lola_pin*, %struct.lola_pin** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %35, i64 %37
  store %struct.lola_pin* %38, %struct.lola_pin** %12, align 8
  %39 = load %struct.lola_pin*, %struct.lola_pin** %12, align 8
  %40 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load %struct.lola_pin*, %struct.lola_pin** %12, align 8
  %45 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %27
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %97

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.lola_pin*, %struct.lola_pin** %12, align 8
  %57 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %97

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.lola*, %struct.lola** %7, align 8
  %67 = call i32 @lola_codec_flush(%struct.lola* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.lola*, %struct.lola** %7, align 8
  %70 = getelementptr inbounds %struct.lola, %struct.lola* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  %78 = load %struct.lola*, %struct.lola** %7, align 8
  %79 = load %struct.lola_pin*, %struct.lola_pin** %12, align 8
  %80 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @LOLA_VERB_SET_AMP_GAIN_MUTE, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @lola_codec_write(%struct.lola* %78, i32 %81, i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %68
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %97

89:                                               ; preds = %68
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.lola_pin*, %struct.lola_pin** %12, align 8
  %95 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %89
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %87, %61, %49, %24
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @lola_codec_flush(%struct.lola*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lola_codec_write(%struct.lola*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
