; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_memory.c_snd_trident_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_memory.c_snd_trident_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_util_memhdr* }
%struct.snd_util_memhdr = type { i32 }
%struct.snd_util_memblk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_trident_free_pages(%struct.snd_trident* %0, %struct.snd_util_memblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_util_memblk*, align 8
  %6 = alloca %struct.snd_util_memhdr*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store %struct.snd_util_memblk* %1, %struct.snd_util_memblk** %5, align 8
  %8 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %9 = icmp ne %struct.snd_trident* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %5, align 8
  %12 = icmp ne %struct.snd_util_memblk* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %14
  %23 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %24 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %25, align 8
  store %struct.snd_util_memhdr* %26, %struct.snd_util_memhdr** %6, align 8
  %27 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %28 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %5, align 8
  %31 = call i32 @firstpg(%struct.snd_util_memblk* %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %41, %22
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %5, align 8
  %35 = call i32 @lastpg(%struct.snd_util_memblk* %34)
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @set_silent_tlb(%struct.snd_trident* %38, i32 %39)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %46 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %5, align 8
  %47 = call i32 @__snd_util_mem_free(%struct.snd_util_memhdr* %45, %struct.snd_util_memblk* %46)
  %48 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %49 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @firstpg(%struct.snd_util_memblk*) #1

declare dso_local i32 @lastpg(%struct.snd_util_memblk*) #1

declare dso_local i32 @set_silent_tlb(%struct.snd_trident*, i32) #1

declare dso_local i32 @__snd_util_mem_free(%struct.snd_util_memhdr*, %struct.snd_util_memblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
