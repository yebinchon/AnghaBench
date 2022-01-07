; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.snd_pcxhr = type { %struct.TYPE_3__*, %struct.pcxhr_mgr* }
%struct.TYPE_3__ = type { i32 }
%struct.pcxhr_mgr = type { i64, i32 }

@.str = private unnamed_addr constant [63 x i8] c"pcxhr_prepare : period_size(%lx) periods(%x) buffer_size(%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcxhr_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcxhr*, align 8
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_pcxhr* %7, %struct.snd_pcxhr** %3, align 8
  %8 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %8, i32 0, i32 1
  %10 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %9, align 8
  store %struct.pcxhr_mgr* %10, %struct.pcxhr_mgr** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25, i32 %30)
  %32 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %33 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  br label %35

35:                                               ; preds = %1
  %36 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %37 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %35
  %46 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @pcxhr_set_clock(%struct.pcxhr_mgr* %46, i64 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %73

56:                                               ; preds = %45
  %57 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %58 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %63 = call i32 @pcxhr_hardware_timer(%struct.pcxhr_mgr* %62, i32 1)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %71 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %64, %35
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %75 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcxhr_set_clock(%struct.pcxhr_mgr*, i64) #1

declare dso_local i32 @pcxhr_hardware_timer(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
