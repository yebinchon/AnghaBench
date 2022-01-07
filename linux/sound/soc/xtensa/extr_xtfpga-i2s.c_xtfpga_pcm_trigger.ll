; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.xtfpga_i2s* }
%struct.xtfpga_i2s = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @xtfpga_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtfpga_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.xtfpga_i2s*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %6, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %12, align 8
  store %struct.xtfpga_i2s* %13, %struct.xtfpga_i2s** %7, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %32 [
    i32 130, label %15
    i32 131, label %15
    i32 132, label %15
    i32 129, label %27
    i32 128, label %27
    i32 133, label %27
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %7, align 8
  %17 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WRITE_ONCE(i32 %18, i32 0)
  %20 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %7, align 8
  %21 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = call i32 @rcu_assign_pointer(i32 %22, %struct.snd_pcm_substream* %23)
  %25 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %7, align 8
  %26 = call i32 @xtfpga_pcm_refill_fifo(%struct.xtfpga_i2s* %25)
  br label %35

27:                                               ; preds = %2, %2, %2
  %28 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %7, align 8
  %29 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rcu_assign_pointer(i32 %30, %struct.snd_pcm_substream* null)
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %27, %15
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @xtfpga_pcm_refill_fifo(%struct.xtfpga_i2s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
