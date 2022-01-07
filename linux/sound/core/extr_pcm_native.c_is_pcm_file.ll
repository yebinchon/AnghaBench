; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_is_pcm_file.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_is_pcm_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.snd_pcm = type { i32 }

@snd_major = common dso_local global i64 0, align 8
@SNDRV_DEVICE_TYPE_PCM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_PCM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @is_pcm_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_pcm_file(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.inode* @file_inode(%struct.file* %7)
  store %struct.inode* %8, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISCHR(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i64 @imajor(%struct.inode* %15)
  %17 = load i64, i64* @snd_major, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %41

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @iminor(%struct.inode* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SNDRV_DEVICE_TYPE_PCM_PLAYBACK, align 4
  %25 = call %struct.snd_pcm* @snd_lookup_minor_data(i32 %23, i32 %24)
  store %struct.snd_pcm* %25, %struct.snd_pcm** %5, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %27 = icmp ne %struct.snd_pcm* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SNDRV_DEVICE_TYPE_PCM_CAPTURE, align 4
  %31 = call %struct.snd_pcm* @snd_lookup_minor_data(i32 %29, i32 %30)
  store %struct.snd_pcm* %31, %struct.snd_pcm** %5, align 8
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %34 = icmp ne %struct.snd_pcm* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %41

36:                                               ; preds = %32
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_card_unref(i32 %39)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %35, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i64 @imajor(%struct.inode*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.snd_pcm* @snd_lookup_minor_data(i32, i32) #1

declare dso_local i32 @snd_card_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
