; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_stop_gc_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_stop_gc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.f2fs_gc_kthread* }
%struct.f2fs_gc_kthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_stop_gc_thread(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_gc_kthread*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %5 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %4, i32 0, i32 0
  %6 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %5, align 8
  store %struct.f2fs_gc_kthread* %6, %struct.f2fs_gc_kthread** %3, align 8
  %7 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %8 = icmp ne %struct.f2fs_gc_kthread* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kthread_stop(i32 %13)
  %15 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %16 = call i32 @kvfree(%struct.f2fs_gc_kthread* %15)
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %18 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %17, i32 0, i32 0
  store %struct.f2fs_gc_kthread* null, %struct.f2fs_gc_kthread** %18, align 8
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @kvfree(%struct.f2fs_gc_kthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
