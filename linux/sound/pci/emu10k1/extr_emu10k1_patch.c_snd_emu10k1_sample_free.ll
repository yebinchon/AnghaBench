; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_patch.c_snd_emu10k1_sample_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_patch.c_snd_emu10k1_sample_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_sf_sample = type { i32* }
%struct.snd_util_memhdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_sample_free(%struct.snd_emux* %0, %struct.snd_sf_sample* %1, %struct.snd_util_memhdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emux*, align 8
  %6 = alloca %struct.snd_sf_sample*, align 8
  %7 = alloca %struct.snd_util_memhdr*, align 8
  %8 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %5, align 8
  store %struct.snd_sf_sample* %1, %struct.snd_sf_sample** %6, align 8
  store %struct.snd_util_memhdr* %2, %struct.snd_util_memhdr** %7, align 8
  %9 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %10 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %9, i32 0, i32 0
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %10, align 8
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %8, align 8
  %12 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %13 = icmp ne %struct.snd_sf_sample* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %16 = icmp ne %struct.snd_util_memhdr* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %18
  %27 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %28 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %33 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %34 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @snd_emu10k1_synth_free(%struct.snd_emu10k1* %32, i32* %35)
  %37 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %38 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emu10k1_synth_free(%struct.snd_emu10k1*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
