; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_quiet_read_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_quiet_read_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }
%struct.xfs_dsb = type { i64 }

@XFS_SB_MAGIC = common dso_local global i32 0, align 4
@EWRONGFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_sb_quiet_read_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_sb_quiet_read_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_dsb*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %4 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %5 = call %struct.xfs_dsb* @XFS_BUF_TO_SBP(%struct.xfs_buf* %4)
  store %struct.xfs_dsb* %5, %struct.xfs_dsb** %3, align 8
  %6 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @XFS_SB_MAGIC, align 4
  %10 = call i64 @cpu_to_be32(i32 %9)
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = call i32 @xfs_sb_read_verify(%struct.xfs_buf* %13)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %17 = load i32, i32* @EWRONGFS, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @xfs_buf_ioerror(%struct.xfs_buf* %16, i32 %18)
  br label %20

20:                                               ; preds = %15, %12
  ret void
}

declare dso_local %struct.xfs_dsb* @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_sb_read_verify(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_ioerror(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
