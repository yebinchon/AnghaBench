; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_mixer_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_oxygen_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.oxygen = type { %struct.TYPE_10__, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 (%struct.oxygen.0*)* }
%struct.oxygen.0 = type opaque

@controls = common dso_local global %struct.TYPE_11__* null, align 8
@PLAYBACK_1_TO_SPDIF = common dso_local global i32 0, align 4
@spdif_output_controls = common dso_local global %struct.TYPE_11__* null, align 8
@CAPTURE_1_FROM_SPDIF = common dso_local global i32 0, align 4
@spdif_input_controls = common dso_local global %struct.TYPE_11__* null, align 8
@monitor_controls = common dso_local global %struct.TYPE_11__* null, align 8
@ac97_controls = common dso_local global %struct.TYPE_11__* null, align 8
@ac97_fp_controls = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oxygen_mixer_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @controls, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @controls, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %8)
  %10 = call i32 @add_controls(%struct.oxygen* %6, %struct.TYPE_11__* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %146

15:                                               ; preds = %1
  %16 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PLAYBACK_1_TO_SPDIF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @spdif_output_controls, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @spdif_output_controls, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %26)
  %28 = call i32 @add_controls(%struct.oxygen* %24, %struct.TYPE_11__* %25, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %146

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %36 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CAPTURE_1_FROM_SPDIF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @spdif_input_controls, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @spdif_input_controls, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %45)
  %47 = call i32 @add_controls(%struct.oxygen* %43, %struct.TYPE_11__* %44, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %146

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %34
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %94, %53
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @monitor_controls, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %56)
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %54
  %60 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %61 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @monitor_controls, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %63, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  br label %94

73:                                               ; preds = %59
  %74 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @monitor_controls, align 8
  %76 = load i32, i32* %4, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @monitor_controls, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %86)
  %88 = call i32 @add_controls(%struct.oxygen* %74, %struct.TYPE_11__* %80, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %146

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i32, i32* %4, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %54

97:                                               ; preds = %54
  %98 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %99 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ac97_controls, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ac97_controls, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %105)
  %107 = call i32 @add_controls(%struct.oxygen* %103, %struct.TYPE_11__* %104, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %146

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %115 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ac97_fp_controls, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ac97_fp_controls, align 8
  %122 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %121)
  %123 = call i32 @add_controls(%struct.oxygen* %119, %struct.TYPE_11__* %120, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %146

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %113
  %130 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %131 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32 (%struct.oxygen.0*)*, i32 (%struct.oxygen.0*)** %132, align 8
  %134 = icmp ne i32 (%struct.oxygen.0*)* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %137 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32 (%struct.oxygen.0*)*, i32 (%struct.oxygen.0*)** %138, align 8
  %140 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %141 = bitcast %struct.oxygen* %140 to %struct.oxygen.0*
  %142 = call i32 %139(%struct.oxygen.0* %141)
  br label %144

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143, %135
  %145 = phi i32 [ %142, %135 ], [ 0, %143 ]
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %126, %110, %91, %50, %31, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @add_controls(%struct.oxygen*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
