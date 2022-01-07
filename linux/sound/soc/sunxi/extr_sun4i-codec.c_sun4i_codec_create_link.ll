; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_create_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_link = type { i32, i32, i32, i8*, i8*, i32, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, i8* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cdc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CDC PCM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Codec\00", align 1
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_dai_link* (%struct.device*, i32*)* @sun4i_codec_create_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_dai_link* @sun4i_codec_create_link(%struct.device* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_soc_dai_link*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snd_soc_dai_link*, align 8
  %7 = alloca %struct.snd_soc_dai_link_component*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @devm_kzalloc(%struct.device* %8, i32 64, i32 %9)
  %11 = bitcast i8* %10 to %struct.snd_soc_dai_link*
  store %struct.snd_soc_dai_link* %11, %struct.snd_soc_dai_link** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  %15 = bitcast i8* %14 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %15, %struct.snd_soc_dai_link_component** %7, align 8
  %16 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %17 = icmp ne %struct.snd_soc_dai_link* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %7, align 8
  %20 = icmp ne %struct.snd_soc_dai_link_component* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  store %struct.snd_soc_dai_link* null, %struct.snd_soc_dai_link** %3, align 8
  br label %72

22:                                               ; preds = %18
  %23 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %23, i64 0
  %25 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %25, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %24, %struct.snd_soc_dai_link_component** %26, align 8
  %27 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %27, i64 1
  %29 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %29, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %28, %struct.snd_soc_dai_link_component** %30, align 8
  %31 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %7, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %31, i64 2
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %33, i32 0, i32 6
  store %struct.snd_soc_dai_link_component* %32, %struct.snd_soc_dai_link_component** %34, align 8
  %35 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %41, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %43, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %45, i32 0, i32 7
  %47 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %46, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i8* @dev_name(%struct.device* %49)
  %51 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %51, i32 0, i32 8
  %53 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %52, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i8* @dev_name(%struct.device* %55)
  %57 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %57, i32 0, i32 7
  %59 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %58, align 8
  %60 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %59, i32 0, i32 1
  store i8* %56, i8** %60, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i8* @dev_name(%struct.device* %61)
  %63 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %63, i32 0, i32 6
  %65 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %64, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %65, i32 0, i32 1
  store i8* %62, i8** %66, align 8
  %67 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %68 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %5, align 8
  store i32 1, i32* %70, align 4
  %71 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  store %struct.snd_soc_dai_link* %71, %struct.snd_soc_dai_link** %3, align 8
  br label %72

72:                                               ; preds = %22, %21
  %73 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  ret %struct.snd_soc_dai_link* %73
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
