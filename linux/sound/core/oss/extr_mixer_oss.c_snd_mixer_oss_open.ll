; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_mixer_oss_file* }
%struct.snd_mixer_oss_file = type { i32*, %struct.snd_card* }
%struct.snd_card = type { i32, i32* }

@SNDRV_OSS_DEVICE_TYPE_MIXER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_mixer_oss_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_mixer_oss_file*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @nonseekable_open(%struct.inode* %9, %struct.file* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @iminor(%struct.inode* %17)
  %19 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_MIXER, align 4
  %20 = call %struct.snd_card* @snd_lookup_oss_minor_data(i32 %18, i32 %19)
  store %struct.snd_card* %20, %struct.snd_card** %6, align 8
  %21 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %22 = icmp eq %struct.snd_card* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %89

26:                                               ; preds = %16
  %27 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %33 = call i32 @snd_card_unref(%struct.snd_card* %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %89

36:                                               ; preds = %26
  %37 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = call i32 @snd_card_file_add(%struct.snd_card* %37, %struct.file* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %44 = call i32 @snd_card_unref(%struct.snd_card* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %89

46:                                               ; preds = %36
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.snd_mixer_oss_file* @kzalloc(i32 16, i32 %47)
  store %struct.snd_mixer_oss_file* %48, %struct.snd_mixer_oss_file** %7, align 8
  %49 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %50 = icmp eq %struct.snd_mixer_oss_file* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = call i32 @snd_card_file_remove(%struct.snd_card* %52, %struct.file* %53)
  %55 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %56 = call i32 @snd_card_unref(%struct.snd_card* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %89

59:                                               ; preds = %46
  %60 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %61 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %62 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %61, i32 0, i32 1
  store %struct.snd_card* %60, %struct.snd_card** %62, align 8
  %63 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %64 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %67 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %69 = load %struct.file*, %struct.file** %5, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  store %struct.snd_mixer_oss_file* %68, %struct.snd_mixer_oss_file** %70, align 8
  %71 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %72 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @try_module_get(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %59
  %77 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %7, align 8
  %78 = call i32 @kfree(%struct.snd_mixer_oss_file* %77)
  %79 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %80 = load %struct.file*, %struct.file** %5, align 8
  %81 = call i32 @snd_card_file_remove(%struct.snd_card* %79, %struct.file* %80)
  %82 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %83 = call i32 @snd_card_unref(%struct.snd_card* %82)
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %89

86:                                               ; preds = %59
  %87 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %88 = call i32 @snd_card_unref(%struct.snd_card* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %76, %51, %42, %31, %23, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.snd_card* @snd_lookup_oss_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @snd_card_unref(%struct.snd_card*) #1

declare dso_local i32 @snd_card_file_add(%struct.snd_card*, %struct.file*) #1

declare dso_local %struct.snd_mixer_oss_file* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.snd_card*, %struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kfree(%struct.snd_mixer_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
