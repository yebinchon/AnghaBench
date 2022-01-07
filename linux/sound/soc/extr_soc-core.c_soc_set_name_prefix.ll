; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_soc_set_name_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_soc_set_name_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, %struct.snd_soc_codec_conf* }
%struct.snd_soc_codec_conf = type { i32, i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.snd_soc_component = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_card*, %struct.snd_soc_component*)* @soc_set_name_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_set_name_prefix(%struct.snd_soc_card* %0, %struct.snd_soc_component* %1) #0 {
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec_conf*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  store %struct.snd_soc_component* %1, %struct.snd_soc_component** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %62, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %16, align 8
  %18 = icmp ne %struct.snd_soc_codec_conf* %17, null
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi i1 [ false, %8 ], [ %18, %14 ]
  br i1 %20, label %21, label %65

21:                                               ; preds = %19
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %22, i32 0, i32 1
  %24 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.snd_soc_codec_conf, %struct.snd_soc_codec_conf* %24, i64 %26
  store %struct.snd_soc_codec_conf* %27, %struct.snd_soc_codec_conf** %6, align 8
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %29 = call %struct.device_node* @soc_component_to_node(%struct.snd_soc_component* %28)
  store %struct.device_node* %29, %struct.device_node** %7, align 8
  %30 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %6, align 8
  %31 = getelementptr inbounds %struct.snd_soc_codec_conf, %struct.snd_soc_codec_conf* %30, i32 0, i32 2
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec_conf, %struct.snd_soc_codec_conf* %36, i32 0, i32 2
  %38 = load %struct.device_node*, %struct.device_node** %37, align 8
  %39 = icmp ne %struct.device_node* %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %62

41:                                               ; preds = %34, %21
  %42 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_codec_conf, %struct.snd_soc_codec_conf* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec_conf, %struct.snd_soc_codec_conf* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @strcmp(i32 %49, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %62

56:                                               ; preds = %46, %41
  %57 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec_conf, %struct.snd_soc_codec_conf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %68

62:                                               ; preds = %55, %40
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %8

65:                                               ; preds = %19
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %67 = call i32 @soc_set_of_name_prefix(%struct.snd_soc_component* %66)
  br label %68

68:                                               ; preds = %65, %56
  ret void
}

declare dso_local %struct.device_node* @soc_component_to_node(%struct.snd_soc_component*) #1

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @soc_set_of_name_prefix(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
