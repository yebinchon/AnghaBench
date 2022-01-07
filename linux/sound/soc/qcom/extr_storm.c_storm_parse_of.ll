; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_storm.c_storm_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_storm.c_storm_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_8__*, %struct.snd_soc_dai_link* }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.snd_soc_dai_link = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error getting cpu phandle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error getting codec phandle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @storm_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storm_parse_of(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.snd_soc_dai_link*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %6 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %6, i32 0, i32 1
  %8 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  store %struct.snd_soc_dai_link* %8, %struct.snd_soc_dai_link** %4, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i8* @of_parse_phandle(%struct.device_node* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  %16 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  %20 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @dev_err(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %1
  %34 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* %38, i8** %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i8* @of_parse_phandle(%struct.device_node* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %45 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %33
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %57 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @dev_err(%struct.TYPE_8__* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %55, %26
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
