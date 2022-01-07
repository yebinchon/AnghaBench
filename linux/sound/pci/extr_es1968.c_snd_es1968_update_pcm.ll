; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_update_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_update_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }
%struct.esschan = type { i32, i32, i32, i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*)* @snd_es1968_update_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_update_pcm(%struct.es1968* %0, %struct.esschan* %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca %struct.esschan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store %struct.esschan* %1, %struct.esschan** %4, align 8
  %8 = load %struct.esschan*, %struct.esschan** %4, align 8
  %9 = getelementptr inbounds %struct.esschan, %struct.esschan* %8, i32 0, i32 6
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  store %struct.snd_pcm_substream* %10, %struct.snd_pcm_substream** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %12 = icmp eq %struct.snd_pcm_substream* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.esschan*, %struct.esschan** %4, align 8
  %15 = getelementptr inbounds %struct.esschan, %struct.esschan* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  br label %76

19:                                               ; preds = %13
  %20 = load %struct.es1968*, %struct.es1968** %3, align 8
  %21 = load %struct.esschan*, %struct.esschan** %4, align 8
  %22 = call i32 @snd_es1968_get_dma_ptr(%struct.es1968* %20, %struct.esschan* %21)
  %23 = load %struct.esschan*, %struct.esschan** %4, align 8
  %24 = getelementptr inbounds %struct.esschan, %struct.esschan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.esschan*, %struct.esschan** %4, align 8
  %28 = getelementptr inbounds %struct.esschan, %struct.esschan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = urem i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.esschan*, %struct.esschan** %4, align 8
  %33 = getelementptr inbounds %struct.esschan, %struct.esschan* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %34, %35
  %37 = load %struct.esschan*, %struct.esschan** %4, align 8
  %38 = getelementptr inbounds %struct.esschan, %struct.esschan* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sub i32 %36, %39
  %41 = load %struct.esschan*, %struct.esschan** %4, align 8
  %42 = getelementptr inbounds %struct.esschan, %struct.esschan* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = urem i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.esschan*, %struct.esschan** %4, align 8
  %47 = getelementptr inbounds %struct.esschan, %struct.esschan* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.esschan*, %struct.esschan** %4, align 8
  %50 = getelementptr inbounds %struct.esschan, %struct.esschan* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.esschan*, %struct.esschan** %4, align 8
  %54 = getelementptr inbounds %struct.esschan, %struct.esschan* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.esschan*, %struct.esschan** %4, align 8
  %57 = getelementptr inbounds %struct.esschan, %struct.esschan* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %19
  %61 = load %struct.es1968*, %struct.es1968** %3, align 8
  %62 = getelementptr inbounds %struct.es1968, %struct.es1968* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %65 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %64)
  %66 = load %struct.es1968*, %struct.es1968** %3, align 8
  %67 = getelementptr inbounds %struct.es1968, %struct.es1968* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.esschan*, %struct.esschan** %4, align 8
  %70 = getelementptr inbounds %struct.esschan, %struct.esschan* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.esschan*, %struct.esschan** %4, align 8
  %73 = getelementptr inbounds %struct.esschan, %struct.esschan* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = urem i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %18, %60, %19
  ret void
}

declare dso_local i32 @snd_es1968_get_dma_ptr(%struct.es1968*, %struct.esschan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
