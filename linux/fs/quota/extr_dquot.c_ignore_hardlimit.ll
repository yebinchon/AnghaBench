; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_ignore_hardlimit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_ignore_hardlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.mem_dqinfo = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.mem_dqinfo* }

@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@QFMT_VFS_OLD = common dso_local global i64 0, align 8
@DQF_ROOT_SQUASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ignore_hardlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_hardlimit(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.mem_dqinfo*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %4 = load %struct.dquot*, %struct.dquot** %2, align 8
  %5 = getelementptr inbounds %struct.dquot, %struct.dquot* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.TYPE_6__* @sb_dqopt(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %9, i64 %13
  store %struct.mem_dqinfo* %14, %struct.mem_dqinfo** %3, align 8
  %15 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %16 = call i64 @capable(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %20 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QFMT_VFS_OLD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %28 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DQF_ROOT_SQUASH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %26, %18
  %35 = phi i1 [ true, %18 ], [ %33, %26 ]
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i1 [ false, %1 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local %struct.TYPE_6__* @sb_dqopt(i32) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
