; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmfree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbuf = type { %struct.lbuf*, i32*, %struct.jfs_log* }
%struct.jfs_log = type { i32, %struct.lbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbuf*)* @lbmfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmfree(%struct.lbuf* %0) #0 {
  %2 = alloca %struct.lbuf*, align 8
  %3 = alloca %struct.jfs_log*, align 8
  store %struct.lbuf* %0, %struct.lbuf** %2, align 8
  %4 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %5 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %4, i32 0, i32 2
  %6 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  store %struct.jfs_log* %6, %struct.jfs_log** %3, align 8
  %7 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %8 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %14 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %13, i32 0, i32 1
  %15 = load %struct.lbuf*, %struct.lbuf** %14, align 8
  %16 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %17 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %16, i32 0, i32 0
  store %struct.lbuf* %15, %struct.lbuf** %17, align 8
  %18 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %19 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %20 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %19, i32 0, i32 1
  store %struct.lbuf* %18, %struct.lbuf** %20, align 8
  %21 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %22 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %21, i32 0, i32 0
  %23 = call i32 @wake_up(i32* %22)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
