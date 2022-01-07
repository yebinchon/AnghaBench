; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_init_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_init_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.device* }
%struct.device = type { i32 }
%struct.asoc_simple_jack = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%shp-det-gpio\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Headphones\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Headphone detection\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%smic-det-gpio\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Mic detection\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_init_jack(%struct.snd_soc_card* %0, %struct.asoc_simple_jack* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.asoc_simple_jack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %6, align 8
  store %struct.asoc_simple_jack* %1, %struct.asoc_simple_jack** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %27 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @snprintf(i8* %32, i32 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  %35 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %35, i32* %15, align 4
  br label %41

36:                                               ; preds = %23
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @snprintf(i8* %37, i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  %40 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %46 = call i32 @of_get_named_gpio_flags(i32 %44, i8* %45, i32 0, i32* %11)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EPROBE_DEFER, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %106

54:                                               ; preds = %41
  %55 = load i32, i32* %16, align 4
  %56 = call i64 @gpio_is_valid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  %60 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %61 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %65 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %69 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %73 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %77 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %87 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %90 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  store i32 150, i32* %91, align 8
  %92 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %96 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %95, i32 0, i32 1
  %97 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %98 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %97, i32 0, i32 2
  %99 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %92, i8* %93, i32 %94, i32* %96, %struct.TYPE_4__* %98, i32 1)
  %100 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %101 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %100, i32 0, i32 1
  %102 = load %struct.asoc_simple_jack*, %struct.asoc_simple_jack** %7, align 8
  %103 = getelementptr inbounds %struct.asoc_simple_jack, %struct.asoc_simple_jack* %102, i32 0, i32 0
  %104 = call i32 @snd_soc_jack_add_gpios(i32* %101, i32 1, %struct.TYPE_3__* %103)
  br label %105

105:                                              ; preds = %58, %54
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %51
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @of_get_named_gpio_flags(i32, i8*, i32, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
