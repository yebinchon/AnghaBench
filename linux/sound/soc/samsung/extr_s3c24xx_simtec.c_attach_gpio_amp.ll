; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx_simtec.c_attach_gpio_amp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx_simtec.c_attach_gpio_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64 }
%struct.device = type { i32 }
%struct.s3c24xx_audio_simtec_pdata = type { i64*, i64 }

@pdata = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"gpio-amp-gain0\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot get amp gpio gain0\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gpio-amp-gain1\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot get amp gpio gain1\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"gpio-amp\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot get amp gpio %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.s3c24xx_audio_simtec_pdata*)* @attach_gpio_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_gpio_amp(%struct.device* %0, %struct.s3c24xx_audio_simtec_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s3c24xx_audio_simtec_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.s3c24xx_audio_simtec_pdata* %1, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  %14 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @gpio_request(i64 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %13
  %27 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpio_request(i64 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @gpio_free(i64 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %102

45:                                               ; preds = %26
  %46 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @gpio_direction_output(i64 %50, i32 0)
  %52 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %53 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @gpio_direction_output(i64 %56, i32 0)
  br label %58

58:                                               ; preds = %45, %2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %65 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @gpio_request(i64 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %73 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %74, i32 %75)
  br label %80

77:                                               ; preds = %63
  %78 = call i32 @spk_unmute_state(i32 0)
  br label %79

79:                                               ; preds = %77, %58
  store i32 0, i32* %3, align 4
  br label %102

80:                                               ; preds = %70
  %81 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %82 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @gpio_free(i64 %92)
  %94 = load %struct.s3c24xx_audio_simtec_pdata*, %struct.s3c24xx_audio_simtec_pdata** %5, align 8
  %95 = getelementptr inbounds %struct.s3c24xx_audio_simtec_pdata, %struct.s3c24xx_audio_simtec_pdata* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @gpio_free(i64 %98)
  br label %100

100:                                              ; preds = %87, %80
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %79, %35, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @gpio_free(i64) #1

declare dso_local i32 @gpio_direction_output(i64, i32) #1

declare dso_local i32 @spk_unmute_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
