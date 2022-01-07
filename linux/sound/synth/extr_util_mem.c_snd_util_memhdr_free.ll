; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/extr_util_mem.c_snd_util_memhdr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/extr_util_mem.c_snd_util_memhdr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memhdr = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_util_memhdr_free(%struct.snd_util_memhdr* %0) #0 {
  %2 = alloca %struct.snd_util_memhdr*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.snd_util_memhdr* %0, %struct.snd_util_memhdr** %2, align 8
  %4 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %2, align 8
  %5 = icmp ne %struct.snd_util_memhdr* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %16, %7
  %9 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %2, align 8
  %10 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  store %struct.list_head* %12, %struct.list_head** %3, align 8
  %13 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %2, align 8
  %14 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %13, i32 0, i32 0
  %15 = icmp ne %struct.list_head* %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.list_head*, %struct.list_head** %3, align 8
  %18 = call i32 @list_del(%struct.list_head* %17)
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8
  %20 = call %struct.snd_util_memhdr* @get_memblk(%struct.list_head* %19)
  %21 = call i32 @kfree(%struct.snd_util_memhdr* %20)
  br label %8

22:                                               ; preds = %8
  %23 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %2, align 8
  %24 = call i32 @kfree(%struct.snd_util_memhdr* %23)
  br label %25

25:                                               ; preds = %22, %6
  ret void
}

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local i32 @kfree(%struct.snd_util_memhdr*) #1

declare dso_local %struct.snd_util_memhdr* @get_memblk(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
