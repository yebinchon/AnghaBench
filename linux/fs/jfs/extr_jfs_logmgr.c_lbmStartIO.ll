; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmStartIO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmStartIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.lbuf = type { i32, i32, i32, %struct.jfs_log* }
%struct.jfs_log = type { i32, i64, i32 }
%struct.bio = type { i32, %struct.TYPE_3__, %struct.lbuf*, i32 (%struct.bio*)* }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"lbmStartIO\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@LOGPSIZE = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@lmStat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbuf*)* @lbmStartIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmStartIO(%struct.lbuf* %0) #0 {
  %2 = alloca %struct.lbuf*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.jfs_log*, align 8
  store %struct.lbuf* %0, %struct.lbuf** %2, align 8
  %5 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %6 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %5, i32 0, i32 3
  %7 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  store %struct.jfs_log* %7, %struct.jfs_log** %4, align 8
  %8 = call i32 @jfs_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.bio* @bio_alloc(i32 %9, i32 1)
  store %struct.bio* %10, %struct.bio** %3, align 8
  %11 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %12 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %15 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 9
  %18 = shl i32 %13, %17
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.bio*, %struct.bio** %3, align 8
  %23 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %24 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bio_set_dev(%struct.bio* %22, i32 %25)
  %27 = load %struct.bio*, %struct.bio** %3, align 8
  %28 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %29 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* @LOGPSIZE, align 8
  %32 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %33 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bio_add_page(%struct.bio* %27, i32 %30, i64 %31, i32 %34)
  %36 = load %struct.bio*, %struct.bio** %3, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LOGPSIZE, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.bio*, %struct.bio** %3, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 3
  store i32 (%struct.bio*)* @lbmIODone, i32 (%struct.bio*)** %45, align 8
  %46 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %47 = load %struct.bio*, %struct.bio** %3, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 2
  store %struct.lbuf* %46, %struct.lbuf** %48, align 8
  %49 = load i32, i32* @REQ_OP_WRITE, align 4
  %50 = load i32, i32* @REQ_SYNC, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.bio*, %struct.bio** %3, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %55 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %1
  %59 = load %struct.bio*, %struct.bio** %3, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.bio*, %struct.bio** %3, align 8
  %63 = call i32 @lbmIODone(%struct.bio* %62)
  br label %69

64:                                               ; preds = %1
  %65 = load %struct.bio*, %struct.bio** %3, align 8
  %66 = call i32 @submit_bio(%struct.bio* %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lmStat, i32 0, i32 0), align 4
  %68 = call i32 @INCREMENT(i32 %67)
  br label %69

69:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @jfs_info(i8*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lbmIODone(%struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @INCREMENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
