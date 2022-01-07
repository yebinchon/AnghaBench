; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_asoc_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_asoc_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_card = type { i32, %struct.device*, i32, %struct.snd_soc_dai_link* }
%struct.snd_soc_dai_link = type { i32, i32, i32, i8*, i8*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, i8* }
%struct.atmel_classd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CLASSD\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CLASSD PCM\00", align 1
@ATMEL_CLASSD_CODEC_DAI_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_card*)* @atmel_classd_asoc_card_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_classd_asoc_card_init(%struct.device* %0, %struct.snd_soc_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dai_link*, align 8
  %7 = alloca %struct.atmel_classd*, align 8
  %8 = alloca %struct.snd_soc_dai_link_component*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_soc_card* %1, %struct.snd_soc_card** %5, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %10 = call %struct.atmel_classd* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %9)
  store %struct.atmel_classd* %10, %struct.atmel_classd** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  %14 = bitcast i8* %13 to %struct.snd_soc_dai_link*
  store %struct.snd_soc_dai_link* %14, %struct.snd_soc_dai_link** %6, align 8
  %15 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %16 = icmp ne %struct.snd_soc_dai_link* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.device* %21, i32 48, i32 %22)
  %24 = bitcast i8* %23 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %24, %struct.snd_soc_dai_link_component** %8, align 8
  %25 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %8, align 8
  %26 = icmp ne %struct.snd_soc_dai_link_component* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %20
  %31 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %8, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %31, i64 0
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %33, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %32, %struct.snd_soc_dai_link_component** %34, align 8
  %35 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %35, i64 1
  %37 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %37, i32 0, i32 6
  store %struct.snd_soc_dai_link_component* %36, %struct.snd_soc_dai_link_component** %38, align 8
  %39 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %39, i64 2
  %41 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %41, i32 0, i32 5
  store %struct.snd_soc_dai_link_component* %40, %struct.snd_soc_dai_link_component** %42, align 8
  %43 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %49, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %51, i32 0, i32 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load i8*, i8** @ATMEL_CLASSD_CODEC_DAI_NAME, align 8
  %54 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %54, i32 0, i32 6
  %56 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %55, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i8* @dev_name(%struct.device* %58)
  %60 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %60, i32 0, i32 7
  %62 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %61, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i8* @dev_name(%struct.device* %64)
  %66 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %66, i32 0, i32 6
  %68 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %67, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i8* @dev_name(%struct.device* %70)
  %72 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %72, i32 0, i32 5
  %74 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %73, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  %76 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %77 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %78 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %77, i32 0, i32 3
  store %struct.snd_soc_dai_link* %76, %struct.snd_soc_dai_link** %78, align 8
  %79 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %80 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.atmel_classd*, %struct.atmel_classd** %7, align 8
  %82 = getelementptr inbounds %struct.atmel_classd, %struct.atmel_classd* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %87 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %90 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %89, i32 0, i32 1
  store %struct.device* %88, %struct.device** %90, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %30, %27, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.atmel_classd* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
