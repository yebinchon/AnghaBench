; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_routing.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"routing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_parse_routing(%struct.snd_soc_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca [128 x i8], align 16
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %16

16:                                               ; preds = %15, %2
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @snprintf(i8* %17, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %22 = call i32 @of_property_read_bool(%struct.device_node* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %28 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %26, i8* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
