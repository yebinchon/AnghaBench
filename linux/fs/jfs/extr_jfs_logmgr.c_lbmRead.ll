; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmRead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32, i64, i32 }
%struct.lbuf = type { i32, i32, i32, i32, i32 }
%struct.bio = type { %struct.TYPE_2__, i32, %struct.lbuf*, i32 (%struct.bio*)* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"lbmRead: bp:0x%p pn:0x%x\00", align 1
@lbmREAD = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@LOGPSIZE = common dso_local global i64 0, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, i32, %struct.lbuf**)* @lbmRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbmRead(%struct.jfs_log* %0, i32 %1, %struct.lbuf** %2) #0 {
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lbuf**, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.lbuf*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.lbuf** %2, %struct.lbuf*** %6, align 8
  %9 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.lbuf* @lbmAllocate(%struct.jfs_log* %9, i32 %10)
  store %struct.lbuf* %11, %struct.lbuf** %8, align 8
  %12 = load %struct.lbuf**, %struct.lbuf*** %6, align 8
  store %struct.lbuf* %11, %struct.lbuf** %12, align 8
  %13 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @jfs_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.lbuf* %13, i32 %14)
  %16 = load i32, i32* @lbmREAD, align 4
  %17 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %18 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.bio* @bio_alloc(i32 %21, i32 1)
  store %struct.bio* %22, %struct.bio** %7, align 8
  %23 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %24 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %27 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 9
  %30 = shl i32 %25, %29
  %31 = load %struct.bio*, %struct.bio** %7, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %36 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bio_set_dev(%struct.bio* %34, i32 %37)
  %39 = load %struct.bio*, %struct.bio** %7, align 8
  %40 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %41 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @LOGPSIZE, align 8
  %44 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %45 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bio_add_page(%struct.bio* %39, i32 %42, i64 %43, i32 %46)
  %48 = load %struct.bio*, %struct.bio** %7, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LOGPSIZE, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.bio*, %struct.bio** %7, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 3
  store i32 (%struct.bio*)* @lbmIODone, i32 (%struct.bio*)** %57, align 8
  %58 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %59 = load %struct.bio*, %struct.bio** %7, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  store %struct.lbuf* %58, %struct.lbuf** %60, align 8
  %61 = load i32, i32* @REQ_OP_READ, align 4
  %62 = load %struct.bio*, %struct.bio** %7, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %65 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %3
  %69 = load %struct.bio*, %struct.bio** %7, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.bio*, %struct.bio** %7, align 8
  %73 = call i32 @lbmIODone(%struct.bio* %72)
  br label %77

74:                                               ; preds = %3
  %75 = load %struct.bio*, %struct.bio** %7, align 8
  %76 = call i32 @submit_bio(%struct.bio* %75)
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %79 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %82 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @lbmREAD, align 4
  %85 = icmp ne i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @wait_event(i32 %80, i32 %86)
  ret i32 0
}

declare dso_local %struct.lbuf* @lbmAllocate(%struct.jfs_log*, i32) #1

declare dso_local i32 @jfs_info(i8*, %struct.lbuf*, i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lbmIODone(%struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
