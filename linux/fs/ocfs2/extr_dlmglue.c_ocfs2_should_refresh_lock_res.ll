; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_should_refresh_lock_res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_should_refresh_lock_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }

@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_REFRESHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*)* @ocfs2_should_refresh_lock_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %43

21:                                               ; preds = %5
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCFS2_LOCK_REFRESHING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %34 = call i32 @ocfs2_wait_on_refreshing_lock(%struct.ocfs2_lock_res* %33)
  br label %5

35:                                               ; preds = %21
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %37 = load i32, i32* @OCFS2_LOCK_REFRESHING, align 4
  %38 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %36, i32 %37)
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 1
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %16
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_wait_on_refreshing_lock(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
