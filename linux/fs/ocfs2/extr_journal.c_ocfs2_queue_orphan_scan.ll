; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_queue_orphan_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_queue_orphan_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, %struct.ocfs2_orphan_scan }
%struct.ocfs2_orphan_scan = type { i64, i32, i32, i32 }

@ORPHAN_SCAN_INACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ORPHAN_NO_NEED_TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*)* @ocfs2_queue_orphan_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_queue_orphan_scan(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_orphan_scan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 2
  store %struct.ocfs2_orphan_scan* %8, %struct.ocfs2_orphan_scan** %3, align 8
  %9 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load i64, i64* @ORPHAN_SCAN_INACTIVE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %22, i32 0, i32 1
  %24 = call i64 @atomic_read(i32* %23)
  %25 = call i32 @trace_ocfs2_queue_orphan_scan_begin(i32 %18, i64 %21, i64 %24)
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %27 = call i32 @ocfs2_orphan_scan_lock(%struct.ocfs2_super* %26, i64* %6)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %87

39:                                               ; preds = %15
  %40 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %41 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %40, i32 0, i32 1
  %42 = call i64 @atomic_read(i32* %41)
  %43 = load i64, i64* @ORPHAN_SCAN_INACTIVE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %83

46:                                               ; preds = %39
  %47 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %48 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %55 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %83

56:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %60 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %65 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @ORPHAN_NO_NEED_TRUNCATE, align 4
  %69 = call i32 @ocfs2_queue_recovery_completion(i32 %66, i32 %67, i32* null, i32* null, i32* null, i32 %68)
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %57

73:                                               ; preds = %57
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %6, align 8
  %76 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %77 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = call i32 (...) @ktime_get_seconds()
  %81 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %82 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %73, %52, %45
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @ocfs2_orphan_scan_unlock(%struct.ocfs2_super* %84, i64 %85)
  br label %87

87:                                               ; preds = %83, %38, %14
  %88 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %89 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %92 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ocfs2_orphan_scan*, %struct.ocfs2_orphan_scan** %3, align 8
  %95 = getelementptr inbounds %struct.ocfs2_orphan_scan, %struct.ocfs2_orphan_scan* %94, i32 0, i32 1
  %96 = call i64 @atomic_read(i32* %95)
  %97 = call i32 @trace_ocfs2_queue_orphan_scan_end(i32 %90, i64 %93, i64 %96)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_ocfs2_queue_orphan_scan_begin(i32, i64, i64) #1

declare dso_local i32 @ocfs2_orphan_scan_lock(%struct.ocfs2_super*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_queue_recovery_completion(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @ocfs2_orphan_scan_unlock(%struct.ocfs2_super*, i64) #1

declare dso_local i32 @trace_ocfs2_queue_orphan_scan_end(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
