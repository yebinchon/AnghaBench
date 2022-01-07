; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_snd_hda_codec_set_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_snd_hda_codec_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i8*, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_set_name(%struct.hda_codec* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

10:                                               ; preds = %2
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @snd_hdac_device_set_chip_name(%struct.TYPE_6__* %12, i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %10
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %32, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %27, %19
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %49 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @snprintf(i32* %43, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %54 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %58 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  br label %61

61:                                               ; preds = %38, %27
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %17, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @snd_hdac_device_set_chip_name(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
