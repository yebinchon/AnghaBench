; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_orphan_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_orphan_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_orphan_scan }
%struct.ocfs2_orphan_scan = type { i32, i32, i32 }

@ORPHAN_SCAN_INACTIVE = common dso_local global i32 0, align 4
@ORPHAN_SCAN_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_orphan_scan_start(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_orphan_scan*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %4, i32 0, i32 1
  store %struct.ocfs2_orphan_scan* %5, %struct.ocfs2_orphan_scan** %3, align 8
  %6 = call i32 (...) @ktime_get_seconds()
  %7 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %10 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %14 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12, %1
  %17 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %17, i32 0, i32 1
  %19 = load i32, i32* @ORPHAN_SCAN_INACTIVE, align 4
  %20 = call i32 @atomic_set(i32* %18, i32 %19)
  br label %33

21:                                               ; preds = %12
  %22 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %22, i32 0, i32 1
  %24 = load i32, i32* @ORPHAN_SCAN_ACTIVE, align 4
  %25 = call i32 @atomic_set(i32* %23, i32 %24)
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %29, i32 0, i32 0
  %31 = call i32 (...) @ocfs2_orphan_scan_timeout()
  %32 = call i32 @queue_delayed_work(i32 %28, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @ocfs2_orphan_scan_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
