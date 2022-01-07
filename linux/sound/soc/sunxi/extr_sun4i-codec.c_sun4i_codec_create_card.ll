; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_create_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_create_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i8*, i8*, i8*, i8*, i8*, %struct.device*, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sun4i-codec\00", align 1
@sun4i_codec_card_dapm_widgets = common dso_local global i8* null, align 8
@sun4i_codec_card_dapm_routes = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_card* (%struct.device*)* @sun4i_codec_create_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_card* @sun4i_codec_create_card(%struct.device* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.snd_soc_card* @devm_kzalloc(%struct.device* %5, i32 56, i32 %6)
  store %struct.snd_soc_card* %7, %struct.snd_soc_card** %4, align 8
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %9 = icmp ne %struct.snd_soc_card* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.snd_soc_card* @ERR_PTR(i32 %12)
  store %struct.snd_soc_card* %13, %struct.snd_soc_card** %2, align 8
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %16, i32 0, i32 7
  %18 = call i32 @sun4i_codec_create_link(%struct.device* %15, i32* %17)
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.snd_soc_card* @ERR_PTR(i32 %27)
  store %struct.snd_soc_card* %28, %struct.snd_soc_card** %2, align 8
  br label %50

29:                                               ; preds = %14
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 5
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load i8*, i8** @sun4i_codec_card_dapm_widgets, align 8
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @sun4i_codec_card_dapm_widgets, align 8
  %39 = call i8* @ARRAY_SIZE(i8* %38)
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @sun4i_codec_card_dapm_routes, align 8
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @sun4i_codec_card_dapm_routes, align 8
  %46 = call i8* @ARRAY_SIZE(i8* %45)
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  store %struct.snd_soc_card* %49, %struct.snd_soc_card** %2, align 8
  br label %50

50:                                               ; preds = %29, %25, %10
  %51 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  ret %struct.snd_soc_card* %51
}

declare dso_local %struct.snd_soc_card* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.snd_soc_card* @ERR_PTR(i32) #1

declare dso_local i32 @sun4i_codec_create_link(%struct.device*, i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
