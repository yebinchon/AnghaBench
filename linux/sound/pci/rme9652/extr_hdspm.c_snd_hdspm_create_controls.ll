; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i8*, i32 }
%struct.snd_card = type { i32 }
%struct.hdspm = type { i32, i32, i32, i32, i32, i64, %struct.snd_kcontrol** }
%struct.snd_kcontrol = type { i32 }

@snd_hdspm_controls_madi = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_hdspm_controls_madiface = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_hdspm_controls_aio = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_hdspm_controls_raydat = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_hdspm_controls_aes32 = common dso_local global %struct.snd_kcontrol_new* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"Chn\00", align 1
@snd_hdspm_playback_mixer = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_hdspm_controls_tco = common dso_local global %struct.snd_kcontrol_new* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdspm*)* @snd_hdspm_create_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_create_controls(%struct.snd_card* %0, %struct.hdspm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_kcontrol*, align 8
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdspm* %1, %struct.hdspm** %5, align 8
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %10, align 8
  %11 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %12 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %34 [
    i32 130, label %14
    i32 129, label %18
    i32 131, label %22
    i32 128, label %26
    i32 132, label %30
  ]

14:                                               ; preds = %2
  %15 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_madi, align 8
  store %struct.snd_kcontrol_new* %15, %struct.snd_kcontrol_new** %10, align 8
  %16 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_madi, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %16)
  store i32 %17, i32* %7, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_madiface, align 8
  store %struct.snd_kcontrol_new* %19, %struct.snd_kcontrol_new** %10, align 8
  %20 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_madiface, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %20)
  store i32 %21, i32* %7, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_aio, align 8
  store %struct.snd_kcontrol_new* %23, %struct.snd_kcontrol_new** %10, align 8
  %24 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_aio, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %24)
  store i32 %25, i32* %7, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_raydat, align 8
  store %struct.snd_kcontrol_new* %27, %struct.snd_kcontrol_new** %10, align 8
  %28 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_raydat, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %28)
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_aes32, align 8
  store %struct.snd_kcontrol_new* %31, %struct.snd_kcontrol_new** %10, align 8
  %32 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_aes32, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %2, %30, %26, %22, %18, %14
  %35 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %36 = icmp ne %struct.snd_kcontrol_new* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %44 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %44, i64 %46
  %48 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %49 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %47, %struct.hdspm* %48)
  %50 = call i32 @snd_ctl_add(%struct.snd_card* %43, %struct.snd_kcontrol* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %143

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %38

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %34
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.snd_kcontrol_new, %struct.snd_kcontrol_new* @snd_hdspm_playback_mixer, i32 0, i32 0), align 8
  %61 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %62 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 128000
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %67 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %7, align 4
  br label %83

69:                                               ; preds = %60
  %70 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %71 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 64000
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %76 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  br label %82

78:                                               ; preds = %69
  %79 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %80 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %65
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* getelementptr inbounds (%struct.snd_kcontrol_new, %struct.snd_kcontrol_new* @snd_hdspm_playback_mixer, i32 0, i32 1), align 8
  %91 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %92 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_hdspm_playback_mixer, %struct.hdspm* %91)
  store %struct.snd_kcontrol* %92, %struct.snd_kcontrol** %9, align 8
  %93 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %94 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %95 = call i32 @snd_ctl_add(%struct.snd_card* %93, %struct.snd_kcontrol* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %143

100:                                              ; preds = %88
  %101 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %102 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %103 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %102, i32 0, i32 6
  %104 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %104, i64 %106
  store %struct.snd_kcontrol* %101, %struct.snd_kcontrol** %107, align 8
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %84

111:                                              ; preds = %84
  %112 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %113 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_tco, align 8
  store %struct.snd_kcontrol_new* %117, %struct.snd_kcontrol_new** %10, align 8
  %118 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_tco, align 8
  %119 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %118)
  store i32 %119, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %138, %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %126 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %127 = load i32, i32* %6, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %126, i64 %128
  %130 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %131 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %129, %struct.hdspm* %130)
  %132 = call i32 @snd_ctl_add(%struct.snd_card* %125, %struct.snd_kcontrol* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %143

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %120

141:                                              ; preds = %120
  br label %142

142:                                              ; preds = %141, %111
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %135, %98, %53
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hdspm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
