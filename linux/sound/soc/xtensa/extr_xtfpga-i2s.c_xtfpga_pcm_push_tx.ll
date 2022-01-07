; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_pcm_push_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_pcm_push_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xtfpga_i2s = type { i32 (%struct.xtfpga_i2s*, i32, i32)*, i32, i32 }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xtfpga_i2s*)* @xtfpga_pcm_push_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtfpga_pcm_push_tx(%struct.xtfpga_i2s* %0) #0 {
  %2 = alloca %struct.xtfpga_i2s*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xtfpga_i2s* %0, %struct.xtfpga_i2s** %2, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %9 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_pcm_substream* @rcu_dereference(i32 %10)
  store %struct.snd_pcm_substream* %11, %struct.snd_pcm_substream** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = icmp ne %struct.snd_pcm_substream* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i1 [ false, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %25 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @READ_ONCE(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %29 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %28, i32 0, i32 0
  %30 = load i32 (%struct.xtfpga_i2s*, i32, i32)*, i32 (%struct.xtfpga_i2s*, i32, i32)** %29, align 8
  %31 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 %30(%struct.xtfpga_i2s* %31, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %38 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %37, i32 0, i32 1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @cmpxchg(i32* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %23, %18
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.snd_pcm_substream* @rcu_dereference(i32) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
