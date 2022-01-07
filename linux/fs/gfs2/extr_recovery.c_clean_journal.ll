; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_clean_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_clean_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i64, i32 }
%struct.gfs2_log_header_host = type { i64, i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFS2_LOG_HEAD_UNMOUNT = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_RECOVERY = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_jdesc*, %struct.gfs2_log_header_host*)* @clean_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_journal(%struct.gfs2_jdesc* %0, %struct.gfs2_log_header_host* %1) #0 {
  %3 = alloca %struct.gfs2_jdesc*, align 8
  %4 = alloca %struct.gfs2_log_header_host*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %3, align 8
  store %struct.gfs2_log_header_host* %1, %struct.gfs2_log_header_host** %4, align 8
  %7 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.gfs2_sbd* @GFS2_SB(i32 %9)
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %5, align 8
  %11 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %15 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc* %14, i32* %6)
  %16 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %30 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %31 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %4, align 8
  %32 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @GFS2_LOG_HEAD_UNMOUNT, align 4
  %37 = load i32, i32* @GFS2_LOG_HEAD_RECOVERY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @REQ_PREFLUSH, align 4
  %40 = load i32, i32* @REQ_FUA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @REQ_META, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @REQ_SYNC, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @gfs2_write_log_header(%struct.gfs2_sbd* %29, %struct.gfs2_jdesc* %30, i64 %34, i32 0, i32 %35, i32 %38, i32 %45)
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc*, i32*) #1

declare dso_local i32 @gfs2_write_log_header(%struct.gfs2_sbd*, %struct.gfs2_jdesc*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
