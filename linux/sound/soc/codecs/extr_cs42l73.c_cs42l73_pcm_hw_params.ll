; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l73_private = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CS42L73_MS_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"DAI[%d]: MCLK %u, srate %u, MMCC[5:0] = %x\0A\00", align 1
@cs42l73_mclk_coeffs = common dso_local global %struct.TYPE_4__* null, align 8
@CS42L73_MCK_SCLK_64FS = common dso_local global i32 0, align 4
@CS42L73_MCK_SCLK_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs42l73_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l73_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs42l73_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cs42l73_private* %17, %struct.cs42l73_private** %9, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %24 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CS42L73_MS_MASTER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %121

34:                                               ; preds = %3
  %35 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %36 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @cs42l73_get_mclk_coeff(i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %178

45:                                               ; preds = %34
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %51 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cs42l73_mclk_coeffs, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53, i32 %59)
  %61 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %62 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 192
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cs42l73_mclk_coeffs, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %77 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %75
  store i32 %84, i32* %82, align 4
  %85 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %86 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 252
  store i32 %93, i32* %91, align 4
  %94 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %95 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 6400000
  br i1 %97, label %98, label %109

98:                                               ; preds = %45
  %99 = load i32, i32* @CS42L73_MCK_SCLK_64FS, align 4
  %100 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %101 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %99
  store i32 %108, i32* %106, align 4
  br label %120

109:                                              ; preds = %45
  %110 = load i32, i32* @CS42L73_MCK_SCLK_MCLK, align 4
  %111 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %112 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %110
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %109, %98
  br label %141

121:                                              ; preds = %3
  %122 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %123 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 252
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @CS42L73_MCK_SCLK_64FS, align 4
  %132 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %133 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %131
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %121, %120
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %144 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %143, i32 0, i32 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  store i32 %142, i32* %149, align 4
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @CS42L73_SPC(i32 %151)
  %153 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %154 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %150, i32 %152, i32 %160)
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @CS42L73_MMCC(i32 %163)
  %165 = load %struct.cs42l73_private*, %struct.cs42l73_private** %9, align 8
  %166 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %162, i32 %164, i32 %172)
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @cs42l73_update_asrc(%struct.snd_soc_component* %174, i32 %175, i32 %176)
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %141, %42
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs42l73_get_mclk_coeff(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @CS42L73_SPC(i32) #1

declare dso_local i32 @CS42L73_MMCC(i32) #1

declare dso_local i32 @cs42l73_update_asrc(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
