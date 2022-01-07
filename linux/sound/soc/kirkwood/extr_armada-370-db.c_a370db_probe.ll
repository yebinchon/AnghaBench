; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_armada-370-db.c_a370db_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_armada-370-db.c_a370db_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_9__ }

@a370db = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"marvell,audio-controller\00", align 1
@a370db_dai = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"marvell,audio-codec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @a370db_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a370db_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store %struct.snd_soc_card* @a370db, %struct.snd_soc_card** %3, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %6, i32 0, i32 0
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %7, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @of_parse_phandle(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i8* %12, i8** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i8* %23, i8** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @of_parse_phandle(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i8* %33, i8** %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @of_parse_phandle(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i8* %65, i8** %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i8* %76, i8** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @of_parse_phandle(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @a370db_dai, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i8* %97, i8** %102, align 8
  %103 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %104 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %107 = call i32 @devm_snd_soc_register_card(%struct.TYPE_9__* %105, %struct.snd_soc_card* %106)
  ret i32 %107
}

declare dso_local i8* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_9__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
