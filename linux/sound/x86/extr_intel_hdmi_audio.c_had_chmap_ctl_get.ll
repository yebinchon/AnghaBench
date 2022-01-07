; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_chmap_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_chmap_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_pcm_chmap = type { %struct.snd_intelhad* }
%struct.snd_intelhad = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_chmap_elem* }
%struct.snd_pcm_chmap_elem = type { i32, i32* }

@HAD_MAX_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @had_chmap_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_chmap_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pcm_chmap*, align 8
  %7 = alloca %struct.snd_intelhad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_chmap_elem*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_pcm_chmap* %11, %struct.snd_pcm_chmap** %6, align 8
  %12 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %12, i32 0, i32 0
  %14 = load %struct.snd_intelhad*, %struct.snd_intelhad** %13, align 8
  store %struct.snd_intelhad* %14, %struct.snd_intelhad** %7, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @HAD_MAX_CHANNEL, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %19, i32 0, i32 %23)
  %25 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %26 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %29 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %31, align 8
  %33 = icmp ne %struct.snd_pcm_chmap_elem* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %36 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %73

38:                                               ; preds = %2
  %39 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %40 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %42, align 8
  store %struct.snd_pcm_chmap_elem* %43, %struct.snd_pcm_chmap_elem** %9, align 8
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %66, %38
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %57, i32* %65, align 4
  br label %66

66:                                               ; preds = %50
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %71 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %34
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
