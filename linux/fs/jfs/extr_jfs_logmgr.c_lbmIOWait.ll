; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmIOWait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmIOWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbuf = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"lbmIOWait1: bp:0x%p flag:0x%x:0x%x\00", align 1
@lbmDONE = common dso_local global i32 0, align 4
@lbmERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@lbmFREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"lbmIOWait2: bp:0x%p flag:0x%x:0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbuf*, i32)* @lbmIOWait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbmIOWait(%struct.lbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.lbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lbuf* %0, %struct.lbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %8 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %9 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @jfs_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.lbuf* %7, i32 %10, i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @LCACHE_LOCK(i64 %13)
  %15 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %16 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %19 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @lbmDONE, align 4
  %22 = and i32 %20, %21
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @LCACHE_SLEEP_COND(i32 %17, i32 %22, i64 %23)
  %25 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %26 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @lbmERROR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @lbmFREE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %43 = call i32 @lbmfree(%struct.lbuf* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @LCACHE_UNLOCK(i64 %45)
  %47 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %48 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %49 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @jfs_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.lbuf* %47, i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @jfs_info(i8*, %struct.lbuf*, i32, i32) #1

declare dso_local i32 @LCACHE_LOCK(i64) #1

declare dso_local i32 @LCACHE_SLEEP_COND(i32, i32, i64) #1

declare dso_local i32 @lbmfree(%struct.lbuf*) #1

declare dso_local i32 @LCACHE_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
