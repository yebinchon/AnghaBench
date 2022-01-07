; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_synth_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_synth_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memblk = type { i32 }
%struct.snd_emu10k1 = type { %struct.snd_util_memhdr* }
%struct.snd_util_memhdr = type { i32 }
%struct.snd_emu10k1_memblk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_util_memblk* @snd_emu10k1_synth_alloc(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_util_memblk*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_emu10k1_memblk*, align 8
  %7 = alloca %struct.snd_util_memhdr*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %8, i32 0, i32 0
  %10 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %9, align 8
  store %struct.snd_util_memhdr* %10, %struct.snd_util_memhdr** %7, align 8
  %11 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %12 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @__snd_util_mem_alloc(%struct.snd_util_memhdr* %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.snd_emu10k1_memblk*
  store %struct.snd_emu10k1_memblk* %17, %struct.snd_emu10k1_memblk** %6, align 8
  %18 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %19 = icmp eq %struct.snd_emu10k1_memblk* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %22 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %26 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %27 = call i64 @synth_alloc_pages(%struct.snd_emu10k1* %25, %struct.snd_emu10k1_memblk* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %31 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %32 = bitcast %struct.snd_emu10k1_memblk* %31 to %struct.snd_util_memblk*
  %33 = call i32 @__snd_util_mem_free(%struct.snd_util_memhdr* %30, %struct.snd_util_memblk* %32)
  %34 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %35 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %46

37:                                               ; preds = %24
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %39 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %40 = call i32 @snd_emu10k1_memblk_map(%struct.snd_emu10k1* %38, %struct.snd_emu10k1_memblk* %39)
  %41 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %42 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %45 = bitcast %struct.snd_emu10k1_memblk* %44 to %struct.snd_util_memblk*
  store %struct.snd_util_memblk* %45, %struct.snd_util_memblk** %3, align 8
  br label %46

46:                                               ; preds = %37, %29, %20
  %47 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %3, align 8
  ret %struct.snd_util_memblk* %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__snd_util_mem_alloc(%struct.snd_util_memhdr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @synth_alloc_pages(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @__snd_util_mem_free(%struct.snd_util_memhdr*, %struct.snd_util_memblk*) #1

declare dso_local i32 @snd_emu10k1_memblk_map(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
