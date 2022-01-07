; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { %struct.device_node* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"can't parse dai %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.device_node*, %struct.device_node**, i8**)* @axg_card_parse_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_parse_dai(%struct.snd_soc_card* %0, %struct.device_node* %1, %struct.device_node** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.of_phandle_args, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.device_node** %2, %struct.device_node*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.device_node**, %struct.device_node*** %8, align 8
  %16 = icmp ne %struct.device_node** %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %47

23:                                               ; preds = %17
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = call i32 @of_parse_phandle_with_args(%struct.device_node* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.of_phandle_args* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %47

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  %44 = load %struct.device_node**, %struct.device_node*** %8, align 8
  store %struct.device_node* %43, %struct.device_node** %44, align 8
  %45 = load i8**, i8*** %9, align 8
  %46 = call i32 @snd_soc_get_dai_name(%struct.of_phandle_args* %10, i8** %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %39, %20
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_get_dai_name(%struct.of_phandle_args*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
