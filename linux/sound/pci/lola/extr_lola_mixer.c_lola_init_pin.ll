; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_init_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_init_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lola_pin = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i32 }

@LOLA_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't read wcaps for 0x%x\0A\00", align 1
@CAPT = common dso_local global i32 0, align 4
@PLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid wcaps 0x%x for 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOLA_PAR_AMP_OUT_CAP = common dso_local global i32 0, align 4
@LOLA_PAR_AMP_IN_CAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't read AMP-caps for 0x%x\0A\00", align 1
@LOLA_VERB_GET_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't get MAX_LEVEL 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, %struct.lola_pin*, i32, i32)* @lola_init_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_init_pin(%struct.lola* %0, %struct.lola_pin* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lola*, align 8
  %7 = alloca %struct.lola_pin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %6, align 8
  store %struct.lola_pin* %1, %struct.lola_pin** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %14 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.lola*, %struct.lola** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @LOLA_PAR_AUDIO_WIDGET_CAP, align 4
  %18 = call i32 @lola_read_param(%struct.lola* %15, i32 %16, i32 %17, i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.lola*, %struct.lola** %6, align 8
  %23 = getelementptr inbounds %struct.lola, %struct.lola* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %160

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 15732735
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 4194816
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %37 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %71

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 4194314
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CAPT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %47 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %70

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 4194316
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @PLAY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %57 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %69

58:                                               ; preds = %51, %48
  %59 = load %struct.lola*, %struct.lola** %6, align 8
  %60 = getelementptr inbounds %struct.lola, %struct.lola* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %160

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %73 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %160

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @PLAY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.lola*, %struct.lola** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @LOLA_PAR_AMP_OUT_CAP, align 4
  %85 = call i32 @lola_read_param(%struct.lola* %82, i32 %83, i32 %84, i32* %10)
  store i32 %85, i32* %11, align 4
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.lola*, %struct.lola** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @LOLA_PAR_AMP_IN_CAP, align 4
  %90 = call i32 @lola_read_param(%struct.lola* %87, i32 %88, i32 %89, i32* %10)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.lola*, %struct.lola** %6, align 8
  %96 = getelementptr inbounds %struct.lola, %struct.lola* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %160

103:                                              ; preds = %91
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @LOLA_AMP_MUTE_CAPABLE(i32 %104)
  %106 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %107 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @LOLA_AMP_STEP_SIZE(i32 %108)
  %110 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %111 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @LOLA_AMP_NUM_STEPS(i32 %112)
  %114 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %115 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %117 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %103
  %121 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %122 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %126 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %120, %103
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @LOLA_AMP_OFFSET(i32 %130)
  %132 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %133 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 8
  %134 = load %struct.lola*, %struct.lola** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @LOLA_VERB_GET_MAX_LEVEL, align 4
  %137 = call i32 @lola_codec_read(%struct.lola* %134, i32 %135, i32 %136, i32 0, i32 0, i32* %10, i32* null)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = load %struct.lola*, %struct.lola** %6, align 8
  %142 = getelementptr inbounds %struct.lola, %struct.lola* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %5, align 4
  br label %160

149:                                              ; preds = %129
  %150 = load i32, i32* %10, align 4
  %151 = and i32 %150, 1023
  %152 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %153 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %155 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %154, i32 0, i32 5
  store i64 0, i64* %155, align 8
  %156 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %157 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %156, i32 0, i32 4
  store i64 0, i64* %157, align 8
  %158 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %159 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %158, i32 0, i32 3
  store i64 0, i64* %159, align 8
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %149, %140, %94, %76, %58, %21
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @lola_read_param(%struct.lola*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @LOLA_AMP_MUTE_CAPABLE(i32) #1

declare dso_local i32 @LOLA_AMP_STEP_SIZE(i32) #1

declare dso_local i32 @LOLA_AMP_NUM_STEPS(i32) #1

declare dso_local i32 @LOLA_AMP_OFFSET(i32) #1

declare dso_local i32 @lola_codec_read(%struct.lola*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
