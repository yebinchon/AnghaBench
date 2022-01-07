; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_detach_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_detach_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, %struct.snd_pcm_runtime* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__, i32, i32, i32 (%struct.snd_pcm_runtime*)* }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_detach_substream(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %76

8:                                                ; preds = %1
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 3
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %3, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 3
  %14 = load i32 (%struct.snd_pcm_runtime*)*, i32 (%struct.snd_pcm_runtime*)** %13, align 8
  %15 = icmp ne i32 (%struct.snd_pcm_runtime*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 3
  %19 = load i32 (%struct.snd_pcm_runtime*)*, i32 (%struct.snd_pcm_runtime*)** %18, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %21 = call i32 %19(%struct.snd_pcm_runtime* %20)
  br label %22

22:                                               ; preds = %16, %8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PAGE_ALIGN(i32 4)
  %27 = call i32 @free_pages_exact(i32 %25, i32 %26)
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PAGE_ALIGN(i32 4)
  %32 = call i32 @free_pages_exact(i32 %30, i32 %31)
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %35, align 8
  %37 = call i32 @kfree(%struct.snd_pcm_runtime* %36)
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %22
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_irq(i32* %46)
  br label %48

48:                                               ; preds = %42, %22
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 3
  store %struct.snd_pcm_runtime* null, %struct.snd_pcm_runtime** %50, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %63 = call i32 @kfree(%struct.snd_pcm_runtime* %62)
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @put_pid(i32* %66)
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %61, %7
  ret void
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @free_pages_exact(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @kfree(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @put_pid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
