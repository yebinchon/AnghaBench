; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_blockcheck_inc_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_blockcheck_inc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_blockcheck_stats = type { i32, i64 }

@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Block check count has wrapped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_blockcheck_stats*)* @ocfs2_blockcheck_inc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats* %0) #0 {
  %2 = alloca %struct.ocfs2_blockcheck_stats*, align 8
  %3 = alloca i64, align 8
  store %struct.ocfs2_blockcheck_stats* %0, %struct.ocfs2_blockcheck_stats** %2, align 8
  %4 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %2, align 8
  %5 = icmp ne %struct.ocfs2_blockcheck_stats* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_blockcheck_stats, %struct.ocfs2_blockcheck_stats* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_blockcheck_stats, %struct.ocfs2_blockcheck_stats* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_blockcheck_stats, %struct.ocfs2_blockcheck_stats* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  %18 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_blockcheck_stats, %struct.ocfs2_blockcheck_stats* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ML_NOTICE, align 4
  %25 = call i32 @mlog(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %6, %23, %7
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
