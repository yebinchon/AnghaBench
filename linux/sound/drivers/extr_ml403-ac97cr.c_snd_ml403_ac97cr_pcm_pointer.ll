; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ml403_ac97cr = type { %struct.snd_pcm_indirect2, %struct.snd_pcm_substream*, %struct.snd_pcm_indirect2, %struct.snd_pcm_substream* }
%struct.snd_pcm_indirect2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ml403_ac97cr_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ml403_ac97cr_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ml403_ac97cr*, align 8
  %5 = alloca %struct.snd_pcm_indirect2*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_indirect2* null, %struct.snd_pcm_indirect2** %5, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ml403_ac97cr* %7, %struct.snd_ml403_ac97cr** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %9, i32 0, i32 3
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %12 = icmp eq %struct.snd_pcm_substream* %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %14, i32 0, i32 2
  store %struct.snd_pcm_indirect2* %15, %struct.snd_pcm_indirect2** %5, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %18, i32 0, i32 1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp eq %struct.snd_pcm_substream* %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %23, i32 0, i32 0
  store %struct.snd_pcm_indirect2* %24, %struct.snd_pcm_indirect2** %5, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.snd_pcm_indirect2*, %struct.snd_pcm_indirect2** %5, align 8
  %27 = icmp ne %struct.snd_pcm_indirect2* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = load %struct.snd_pcm_indirect2*, %struct.snd_pcm_indirect2** %5, align 8
  %31 = call i32 @snd_pcm_indirect2_pointer(%struct.snd_pcm_substream* %29, %struct.snd_pcm_indirect2* %30)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_indirect2_pointer(%struct.snd_pcm_substream*, %struct.snd_pcm_indirect2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
