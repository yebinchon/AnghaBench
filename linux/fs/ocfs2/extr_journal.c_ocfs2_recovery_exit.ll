; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recovery_exit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recovery_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_recovery_map*, i64, i32, i32 }
%struct.ocfs2_recovery_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_recovery_exit(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_recovery_map*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %4, i32 0, i32 4
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 4
  %11 = call i32 @mutex_unlock(i32* %10)
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %16 = call i32 @ocfs2_recovery_thread_running(%struct.ocfs2_super* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @wait_event(i32 %14, i32 %19)
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @flush_workqueue(i64 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %32 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %31, i32 0, i32 1
  %33 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %32, align 8
  store %struct.ocfs2_recovery_map* %33, %struct.ocfs2_recovery_map** %3, align 8
  %34 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %3, align 8
  %35 = call i32 @kfree(%struct.ocfs2_recovery_map* %34)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ocfs2_recovery_thread_running(%struct.ocfs2_super*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @kfree(%struct.ocfs2_recovery_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
