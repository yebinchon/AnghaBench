; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_component_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_component_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@REG_STATUS_1 = common dso_local global i32 0, align 4
@REG_SHORTS = common dso_local global i32 0, align 4
@HEADSET_STATUS = common dso_local global i32 0, align 4
@MIC_STATUS = common dso_local global i32 0, align 4
@SHORT_HS1 = common dso_local global i32 0, align 4
@SHORT_HS2 = common dso_local global i32 0, align 4
@SHORT_LO1 = common dso_local global i32 0, align 4
@SHORT_LO2 = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@HOOK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"headphone report:0x%x, mask:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"microphone report:0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm860x_component_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_component_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pm860x_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.pm860x_priv*
  store %struct.pm860x_priv* %12, %struct.pm860x_priv** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %14 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REG_STATUS_1, align 4
  %17 = call i32 @pm860x_reg_read(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %19 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @REG_SHORTS, align 4
  %22 = call i32 @pm860x_reg_read(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %24 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %28 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %26, %30
  %32 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %33 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %31, %35
  %37 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %38 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %36, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HEADSET_STATUS, align 4
  %44 = load i32, i32* @MIC_STATUS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SHORT_HS1, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SHORT_HS2, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SHORT_LO1, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SHORT_LO2, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %42, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %2
  %57 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %58 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_name(i32 %61)
  %63 = call i32 @trace_snd_soc_jack_irq(i32 %62)
  br label %64

64:                                               ; preds = %56, %2
  %65 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %66 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @HEADSET_STATUS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %72, %64
  %82 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %83 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @MIC_STATUS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %94, %89, %81
  %99 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %100 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SHORT_HS1, align 4
  %107 = load i32, i32* @SHORT_HS2, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %113 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %111, %104, %98
  %119 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %120 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %118
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @HOOK_STATUS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %131 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %129, %124, %118
  %137 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %138 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %136
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @SHORT_LO1, align 4
  %145 = load i32, i32* @SHORT_LO2, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %143, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %151 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %149, %142, %136
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %161 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @snd_soc_jack_report(i32 %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %159, %156
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %172 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %176 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %177 = call i32 @snd_soc_jack_report(i32 %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %170, %167
  %179 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %180 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load %struct.pm860x_priv*, %struct.pm860x_priv** %5, align 8
  %188 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %191, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %194
}

declare dso_local i32 @pm860x_reg_read(i32, i32) #1

declare dso_local i32 @trace_snd_soc_jack_irq(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
