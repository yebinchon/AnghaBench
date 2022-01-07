; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_seq_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_seq_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8903_priv = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Starting DC servo for %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Restore DC servo %d value %x\0A\00", align 1
@WM8903_DC_SERVO_4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Calibrate DC servo %d\0A\00", align 1
@WM8903_DC_SERVO_2 = common dso_local global i32 0, align 4
@WM8903_DCS_MODE_MASK = common dso_local global i32 0, align 4
@WM8903_DC_SERVO_0 = common dso_local global i32 0, align 4
@WM8903_DCS_ENA_MASK = common dso_local global i32 0, align 4
@WM8903_DC_SERVO_READBACK_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"DC servo %d: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"DCS mode %d delay not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @wm8903_seq_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8903_seq_notifier(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8903_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm8903_priv* %12, %struct.wm8903_priv** %7, align 8
  store i32 128, i32* %8, align 4
  %13 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %14 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %164

17:                                               ; preds = %3
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %22 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %86, %17
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %28 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %25
  %33 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %34 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %86

41:                                               ; preds = %32
  %42 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %43 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %41
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 3, %54
  %56 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %57 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %62)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %65 = load i64, i64* @WM8903_DC_SERVO_4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %70 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  %77 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %64, i64 %68, i32 %76)
  br label %85

78:                                               ; preds = %41
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %80 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 3, %82
  %84 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 129, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %50
  br label %86

86:                                               ; preds = %85, %40
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %25

89:                                               ; preds = %25
  %90 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %91 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 129, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %97 = load i32, i32* @WM8903_DC_SERVO_2, align 4
  %98 = load i32, i32* @WM8903_DCS_MODE_MASK, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %102 = load i32, i32* @WM8903_DC_SERVO_0, align 4
  %103 = load i32, i32* @WM8903_DCS_ENA_MASK, align 4
  %104 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %105 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i32 %102, i32 %103, i32 %106)
  %108 = load i32, i32* %8, align 4
  switch i32 %108, label %158 [
    i32 128, label %109
    i32 129, label %110
  ]

109:                                              ; preds = %95
  br label %161

110:                                              ; preds = %95
  %111 = call i32 @msleep(i32 270)
  %112 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %113 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %161

117:                                              ; preds = %110
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %154, %117
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %121 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @ARRAY_SIZE(i32* %122)
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %118
  %126 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %127 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = shl i32 1, %129
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %154

134:                                              ; preds = %125
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %136 = load i32, i32* @WM8903_DC_SERVO_READBACK_1, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %136, %137
  %139 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %135, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %141 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 3, %143
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %149 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  br label %154

154:                                              ; preds = %134, %133
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %118

157:                                              ; preds = %118
  br label %161

158:                                              ; preds = %95
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %158, %157, %116, %109
  %162 = load %struct.wm8903_priv*, %struct.wm8903_priv** %7, align 8
  %163 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %3
  ret void
}

declare dso_local %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
