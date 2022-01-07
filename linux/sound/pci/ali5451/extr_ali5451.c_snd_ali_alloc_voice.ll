; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_alloc_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_alloc_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali_voice = type { i32, i32, i32, %struct.snd_ali* }
%struct.snd_ali = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.snd_ali_voice* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"alloc_voice: type=%d rec=%d\0A\00", align 1
@SNDRV_ALI_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ali_alloc_voice: err.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_ali_voice* (%struct.snd_ali*, i32, i32, i32)* @snd_ali_alloc_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_ali_voice* @snd_ali_alloc_voice(%struct.snd_ali* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ali_voice*, align 8
  %6 = alloca %struct.snd_ali*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_ali_voice*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %13 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %21 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SNDRV_ALI_VOICE_TYPE_PCM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @snd_ali_alloc_pcm_channel(%struct.snd_ali* %30, i32 %31)
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @snd_ali_find_free_channel(%struct.snd_ali* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %43 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %49 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  store %struct.snd_ali_voice* null, %struct.snd_ali_voice** %5, align 8
  br label %77

51:                                               ; preds = %37
  %52 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %53 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %55, i64 %57
  store %struct.snd_ali_voice* %58, %struct.snd_ali_voice** %10, align 8
  %59 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %60 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %10, align 8
  %61 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %60, i32 0, i32 3
  store %struct.snd_ali* %59, %struct.snd_ali** %61, align 8
  %62 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %10, align 8
  %63 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %10, align 8
  %65 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %10, align 8
  %68 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %70 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %10, align 8
  store %struct.snd_ali_voice* %72, %struct.snd_ali_voice** %5, align 8
  br label %77

73:                                               ; preds = %4
  %74 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %75 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_irq(i32* %75)
  store %struct.snd_ali_voice* null, %struct.snd_ali_voice** %5, align 8
  br label %77

77:                                               ; preds = %73, %51, %41
  %78 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  ret %struct.snd_ali_voice* %78
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ali_alloc_pcm_channel(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_find_free_channel(%struct.snd_ali*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
