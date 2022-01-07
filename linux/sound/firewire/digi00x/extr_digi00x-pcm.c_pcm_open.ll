; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-pcm.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-pcm.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_dg00x* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_dg00x = type { i32, i32 }

@SND_DG00X_CLOCK_INTERNAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_dg00x*, %struct.snd_dg00x** %10, align 8
  store %struct.snd_dg00x* %11, %struct.snd_dg00x** %4, align 8
  %12 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %13 = call i32 @snd_dg00x_stream_lock_try(%struct.snd_dg00x* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %83

17:                                               ; preds = %1
  %18 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = call i32 @pcm_init_hw_params(%struct.snd_dg00x* %18, %struct.snd_pcm_substream* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %85

24:                                               ; preds = %17
  %25 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %26 = call i32 @snd_dg00x_stream_get_clock(%struct.snd_dg00x* %25, i32* %5)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %85

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SND_DG00X_CLOCK_INTERNAL, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %36 = call i32 @snd_dg00x_stream_check_external_clock(%struct.snd_dg00x* %35, i32* %6)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %85

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %85

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SND_DG00X_CLOCK_INTERNAL, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %53 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %52, i32 0, i32 1
  %54 = call i64 @amdtp_stream_pcm_running(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %58 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %57, i32 0, i32 0
  %59 = call i64 @amdtp_stream_pcm_running(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %56, %51, %47
  %62 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %63 = call i32 @snd_dg00x_stream_get_external_rate(%struct.snd_dg00x* %62, i32* %7)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %85

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  br label %80

80:                                               ; preds = %67, %56
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %82 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %81)
  br label %83

83:                                               ; preds = %80, %16
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %66, %43, %39, %29, %23
  %86 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %87 = call i32 @snd_dg00x_stream_lock_release(%struct.snd_dg00x* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %83
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @snd_dg00x_stream_lock_try(%struct.snd_dg00x*) #1

declare dso_local i32 @pcm_init_hw_params(%struct.snd_dg00x*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dg00x_stream_get_clock(%struct.snd_dg00x*, i32*) #1

declare dso_local i32 @snd_dg00x_stream_check_external_clock(%struct.snd_dg00x*, i32*) #1

declare dso_local i64 @amdtp_stream_pcm_running(i32*) #1

declare dso_local i32 @snd_dg00x_stream_get_external_rate(%struct.snd_dg00x*, i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dg00x_stream_lock_release(%struct.snd_dg00x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
