; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_widget_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_widget_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.snd_soc_dapm_update* }
%struct.snd_soc_dapm_update = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.snd_soc_dapm_widget_list = type { i32, %struct.snd_soc_dapm_widget** }
%struct.snd_soc_dapm_widget = type { i32 (%struct.snd_soc_dapm_widget*, i32, i32)*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SND_SOC_DAPM_PRE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ASoC: %s DAPM pre-event failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ASoC: %s DAPM update failed: %d\0A\00", align 1
@SND_SOC_DAPM_POST_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ASoC: %s DAPM post-event failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_card*)* @dapm_widget_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_widget_update(%struct.snd_soc_card* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  %3 = alloca %struct.snd_soc_dapm_update*, align 8
  %4 = alloca %struct.snd_soc_dapm_widget_list*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %2, align 8
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %9, align 8
  store %struct.snd_soc_dapm_update* %10, %struct.snd_soc_dapm_update** %3, align 8
  store %struct.snd_soc_dapm_widget* null, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %12 = icmp ne %struct.snd_soc_dapm_update* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dapm_kcontrol_is_powered(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %1
  br label %196

20:                                               ; preds = %13
  %21 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.snd_soc_dapm_widget_list* @dapm_kcontrol_get_wlist(i32 %23)
  store %struct.snd_soc_dapm_widget_list* %24, %struct.snd_soc_dapm_widget_list** %4, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %75, %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %32, i32 0, i32 1
  %34 = load %struct.snd_soc_dapm_widget**, %struct.snd_soc_dapm_widget*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %34, i64 %36
  %38 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %37, align 8
  store %struct.snd_soc_dapm_widget* %38, %struct.snd_soc_dapm_widget** %5, align 8
  %39 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %39, i32 0, i32 0
  %41 = load i32 (%struct.snd_soc_dapm_widget*, i32, i32)*, i32 (%struct.snd_soc_dapm_widget*, i32, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.snd_soc_dapm_widget*, i32, i32)* %41, null
  br i1 %42, label %43, label %74

43:                                               ; preds = %31
  %44 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SND_SOC_DAPM_PRE_REG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %43
  %51 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %51, i32 0, i32 0
  %53 = load i32 (%struct.snd_soc_dapm_widget*, i32, i32)*, i32 (%struct.snd_soc_dapm_widget*, i32, i32)** %52, align 8
  %54 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %55 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SND_SOC_DAPM_PRE_REG, align 4
  %59 = call i32 %53(%struct.snd_soc_dapm_widget* %54, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %50
  %63 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %50
  br label %74

74:                                               ; preds = %73, %43, %31
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %25

78:                                               ; preds = %25
  %79 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %80 = icmp ne %struct.snd_soc_dapm_widget* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %196

82:                                               ; preds = %78
  %83 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %90 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @soc_dapm_update_bits(%struct.TYPE_2__* %85, i32 %88, i32 %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %82
  %99 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %98, %82
  %110 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %111 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %109
  %115 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %116 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %115, i32 0, i32 3
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %122 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %125 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @soc_dapm_update_bits(%struct.TYPE_2__* %117, i32 %120, i32 %123, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %114
  %131 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %132 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %137 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %130, %114
  br label %142

142:                                              ; preds = %141, %109
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %193, %142
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %4, align 8
  %146 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ult i32 %144, %147
  br i1 %148, label %149, label %196

149:                                              ; preds = %143
  %150 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %4, align 8
  %151 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %150, i32 0, i32 1
  %152 = load %struct.snd_soc_dapm_widget**, %struct.snd_soc_dapm_widget*** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %152, i64 %154
  %156 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %155, align 8
  store %struct.snd_soc_dapm_widget* %156, %struct.snd_soc_dapm_widget** %5, align 8
  %157 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %158 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %157, i32 0, i32 0
  %159 = load i32 (%struct.snd_soc_dapm_widget*, i32, i32)*, i32 (%struct.snd_soc_dapm_widget*, i32, i32)** %158, align 8
  %160 = icmp ne i32 (%struct.snd_soc_dapm_widget*, i32, i32)* %159, null
  br i1 %160, label %161, label %192

161:                                              ; preds = %149
  %162 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %163 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SND_SOC_DAPM_POST_REG, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %192

168:                                              ; preds = %161
  %169 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %170 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %169, i32 0, i32 0
  %171 = load i32 (%struct.snd_soc_dapm_widget*, i32, i32)*, i32 (%struct.snd_soc_dapm_widget*, i32, i32)** %170, align 8
  %172 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %173 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %3, align 8
  %174 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SND_SOC_DAPM_POST_REG, align 4
  %177 = call i32 %171(%struct.snd_soc_dapm_widget* %172, i32 %175, i32 %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %168
  %181 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %182 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %181, i32 0, i32 3
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %187 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @dev_err(i32 %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %180, %168
  br label %192

192:                                              ; preds = %191, %161, %149
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %6, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %143

196:                                              ; preds = %19, %81, %143
  ret void
}

declare dso_local i32 @dapm_kcontrol_is_powered(i32) #1

declare dso_local %struct.snd_soc_dapm_widget_list* @dapm_kcontrol_get_wlist(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @soc_dapm_update_bits(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
