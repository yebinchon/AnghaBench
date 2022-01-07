; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_snd_hda_codec_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_snd_hda_codec_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i64 }

@HDA_CODEC_ID_GENERIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unable to bind the codec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_configure(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %6 = call i64 @is_generic_config(%struct.hda_codec* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @HDA_CODEC_ID_GENERIC, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = call i32 @snd_hdac_device_register(i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = call i32 @codec_bind_module(%struct.hda_codec* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = call i32 @codec_bind_generic(%struct.hda_codec* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = call i32 @codec_err(%struct.hda_codec* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %46

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %31
  store i32 0, i32* %2, align 4
  br label %51

46:                                               ; preds = %41
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 0
  %49 = call i32 @snd_hdac_device_unregister(i32* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %45, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @is_generic_config(%struct.hda_codec*) #1

declare dso_local i32 @snd_hdac_device_register(i32*) #1

declare dso_local i32 @codec_bind_module(%struct.hda_codec*) #1

declare dso_local i32 @codec_bind_generic(%struct.hda_codec*) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hdac_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
