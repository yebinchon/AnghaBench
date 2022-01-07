; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc662_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc662_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@alc662_parse_auto_config.alc662_ignore = internal constant [2 x i32] [i32 29, i32 0], align 4
@alc662_parse_auto_config.alc663_ssids = internal constant [4 x i32] [i32 21, i32 27, i32 20, i32 33], align 16
@alc662_parse_auto_config.alc662_ssids = internal constant [4 x i32] [i32 21, i32 27, i32 20, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alc662_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc662_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 283902578
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 283903587
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 283903589
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 283903600
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 283903601
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21, %15, %9, %1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @alc662_parse_auto_config.alc663_ssids, i64 0, i64 0), i32** %3, align 8
  br label %35

34:                                               ; preds = %27
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @alc662_parse_auto_config.alc662_ssids, i64 0, i64 0), i32** %3, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @alc_parse_auto_config(%struct.hda_codec* %36, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @alc662_parse_auto_config.alc662_ignore, i64 0, i64 0), i32* %37)
  ret i32 %38
}

declare dso_local i32 @alc_parse_auto_config(%struct.hda_codec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
