; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_ail_empty_gl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_ail_empty_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32, i64, i32, i32, i32 }
%struct.gfs2_glock = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_AIL_EMPTY_GL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @gfs2_ail_empty_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_ail_empty_gl(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_trans, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %5 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %3, align 8
  %9 = call i32 @memset(%struct.gfs2_trans* %4, i32 0, i32 32)
  %10 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 4
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 3
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %15 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @gfs2_struct2blk(%struct.gfs2_sbd* %23, i32 %25, i32 4)
  %27 = add nsw i64 1, %26
  %28 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @_RET_IP_, align 4
  %30 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %32 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @gfs2_log_reserve(%struct.gfs2_sbd* %31, i64 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %55

37:                                               ; preds = %22
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.gfs2_trans*, %struct.gfs2_trans** %39, align 8
  %41 = call i32 @WARN_ON_ONCE(%struct.gfs2_trans* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.gfs2_trans* %4, %struct.gfs2_trans** %43, align 8
  %44 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %45 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @__gfs2_ail_flush(%struct.gfs2_glock* %44, i32 0, i32 %46)
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %49 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %48)
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %51 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %52 = load i32, i32* @GFS2_LFC_AIL_EMPTY_GL, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %50, i32* null, i32 %53)
  br label %55

55:                                               ; preds = %37, %36, %21
  ret void
}

declare dso_local i32 @memset(%struct.gfs2_trans*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @gfs2_struct2blk(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i64 @gfs2_log_reserve(%struct.gfs2_sbd*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.gfs2_trans*) #1

declare dso_local i32 @__gfs2_ail_flush(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
