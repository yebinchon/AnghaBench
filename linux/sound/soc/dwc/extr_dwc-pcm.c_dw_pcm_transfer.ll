; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-pcm.c_dw_pcm_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-pcm.c_dw_pcm_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32 (%struct.dw_i2s_dev*, i32, i32, i32*)*, i32 (%struct.dw_i2s_dev*, i32, i32, i32*)*, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2s_dev*, i32)* @dw_pcm_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pcm_transfer(%struct.dw_i2s_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_i2s_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %15 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_pcm_substream* @rcu_dereference(i32 %16)
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %5, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %20 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.snd_pcm_substream* @rcu_dereference(i32 %21)
  store %struct.snd_pcm_substream* %22, %struct.snd_pcm_substream** %5, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = icmp ne %struct.snd_pcm_substream* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %28 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %40 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @READ_ONCE(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %44 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %43, i32 0, i32 0
  %45 = load i32 (%struct.dw_i2s_dev*, i32, i32, i32*)*, i32 (%struct.dw_i2s_dev*, i32, i32, i32*)** %44, align 8
  %46 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 %45(%struct.dw_i2s_dev* %46, i32 %49, i32 %50, i32* %7)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %53 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %52, i32 0, i32 3
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @cmpxchg(i32* %53, i32 %54, i32 %55)
  br label %76

57:                                               ; preds = %35
  %58 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %59 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @READ_ONCE(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %63 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %62, i32 0, i32 1
  %64 = load i32 (%struct.dw_i2s_dev*, i32, i32, i32*)*, i32 (%struct.dw_i2s_dev*, i32, i32, i32*)** %63, align 8
  %65 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 %64(%struct.dw_i2s_dev* %65, i32 %68, i32 %69, i32* %7)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %72 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @cmpxchg(i32* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %57, %38
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %81 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %30
  %84 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.snd_pcm_substream* @rcu_dereference(i32) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
