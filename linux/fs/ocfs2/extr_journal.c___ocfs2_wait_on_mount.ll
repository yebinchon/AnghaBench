; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c___ocfs2_wait_on_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c___ocfs2_wait_on_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32 }

@VOLUME_MOUNTED = common dso_local global i64 0, align 8
@VOLUME_MOUNTED_QUOTAS = common dso_local global i64 0, align 8
@VOLUME_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"mount error, exiting!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32)* @__ocfs2_wait_on_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_wait_on_mount(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = load i64, i64* @VOLUME_MOUNTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 0
  %20 = call i64 @atomic_read(i32* %19)
  %21 = load i64, i64* @VOLUME_MOUNTED_QUOTAS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = load i64, i64* @VOLUME_DISABLED, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17, %11
  %30 = phi i1 [ true, %17 ], [ true, %11 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @wait_event(i32 %8, i32 %31)
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = call i64 @atomic_read(i32* %34)
  %36 = load i64, i64* @VOLUME_DISABLED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i64, i64* @VOLUME_DISABLED, align 8
  %40 = call i32 @trace_ocfs2_wait_on_mount(i64 %39)
  %41 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_ocfs2_wait_on_mount(i64) #1

declare dso_local i32 @mlog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
