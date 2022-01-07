; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_alloc_dais.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_alloc_dais.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_i2s_priv = type { %struct.snd_soc_dai_driver*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.snd_soc_dai_driver = type { i32, i32, i8*, %struct.TYPE_8__, %struct.TYPE_5__, i32*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.snd_soc_dai_driver* }
%struct.samsung_i2s_dai_data = type { i32 }
%struct.i2s_dai = type { i32 }

@i2s_alloc_dais.dai_names = internal global [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"samsung-i2s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"samsung-i2s-sec\00", align 1
@i2s_alloc_dais.stream_names = internal global [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"Primary Playback\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Secondary Playback\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@samsung_i2s_dai_probe = common dso_local global i32 0, align 4
@samsung_i2s_dai_remove = common dso_local global i32 0, align 4
@i2s_suspend = common dso_local global i32 0, align 4
@i2s_resume = common dso_local global i32 0, align 4
@samsung_i2s_dai_ops = common dso_local global i32 0, align 4
@SAMSUNG_I2S_FMTS = common dso_local global i8* null, align 8
@SAMSUNG_I2S_ID_PRIMARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Primary Capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_i2s_priv*, %struct.samsung_i2s_dai_data*, i32)* @i2s_alloc_dais to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_alloc_dais(%struct.samsung_i2s_priv* %0, %struct.samsung_i2s_dai_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.samsung_i2s_priv*, align 8
  %6 = alloca %struct.samsung_i2s_dai_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dai_driver*, align 8
  %9 = alloca %struct.i2s_dai*, align 8
  %10 = alloca i32, align 4
  store %struct.samsung_i2s_priv* %0, %struct.samsung_i2s_priv** %5, align 8
  store %struct.samsung_i2s_dai_data* %1, %struct.samsung_i2s_dai_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %12 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kcalloc(i32* %14, i32 %15, i32 4, i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  %19 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %20 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %19, i32 0, i32 2
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %20, align 8
  %21 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %22 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %160

28:                                               ; preds = %3
  %29 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %30 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kcalloc(i32* %32, i32 %33, i32 104, i32 %34)
  %36 = bitcast i8* %35 to %struct.snd_soc_dai_driver*
  %37 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %38 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %37, i32 0, i32 0
  store %struct.snd_soc_dai_driver* %36, %struct.snd_soc_dai_driver** %38, align 8
  %39 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %40 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %39, i32 0, i32 0
  %41 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %40, align 8
  %42 = icmp ne %struct.snd_soc_dai_driver* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %160

46:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %130, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %133

51:                                               ; preds = %47
  %52 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %53 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %52, i32 0, i32 0
  %54 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %54, i64 %56
  store %struct.snd_soc_dai_driver* %57, %struct.snd_soc_dai_driver** %8, align 8
  %58 = load i32, i32* @samsung_i2s_dai_probe, align 4
  %59 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %60 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @samsung_i2s_dai_remove, align 4
  %62 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @i2s_suspend, align 4
  %65 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @i2s_resume, align 4
  %68 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %72, i32 0, i32 5
  store i32* @samsung_i2s_dai_ops, i32** %73, align 8
  %74 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 2, i32* %79, align 4
  %80 = load %struct.samsung_i2s_dai_data*, %struct.samsung_i2s_dai_data** %6, align 8
  %81 = getelementptr inbounds %struct.samsung_i2s_dai_data, %struct.samsung_i2s_dai_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load i8*, i8** @SAMSUNG_I2S_FMTS, align 8
  %87 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i8* %86, i8** %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [2 x i8*], [2 x i8*]* @i2s_alloc_dais.stream_names, i64 0, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i8*], [2 x i8*]* @i2s_alloc_dais.dai_names, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %108 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %107, i32 0, i32 0
  %109 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %109, i64 %111
  %113 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %114 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store %struct.snd_soc_dai_driver* %112, %struct.snd_soc_dai_driver** %119, align 8
  %120 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %121 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %124 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %129, align 8
  br label %130

130:                                              ; preds = %51
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %47

133:                                              ; preds = %47
  %134 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %135 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %134, i32 0, i32 0
  %136 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %135, align 8
  %137 = load i32, i32* @SAMSUNG_I2S_ID_PRIMARY, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %136, i64 %139
  store %struct.snd_soc_dai_driver* %140, %struct.snd_soc_dai_driver** %8, align 8
  %141 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %142 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %145 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 2, i32* %146, align 4
  %147 = load %struct.samsung_i2s_dai_data*, %struct.samsung_i2s_dai_data** %6, align 8
  %148 = getelementptr inbounds %struct.samsung_i2s_dai_data, %struct.samsung_i2s_dai_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %151 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load i8*, i8** @SAMSUNG_I2S_FMTS, align 8
  %154 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %155 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  store i8* %153, i8** %156, align 8
  %157 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %158 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %159, align 8
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %133, %43, %25
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
