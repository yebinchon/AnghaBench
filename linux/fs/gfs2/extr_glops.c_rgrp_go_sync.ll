; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_rgrp_go_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_rgrp_go_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, %struct.TYPE_6__, %struct.gfs2_rgrpd*, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.address_space }
%struct.address_space = type { i32 }

@GLF_DIRTY = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_RGRP_GO_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @rgrp_go_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgrp_go_sync(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %3, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 0
  store %struct.address_space* %12, %struct.address_space** %4, align 8
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %18 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %17, i32 0, i32 2
  %19 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %18, align 8
  store %struct.gfs2_rgrpd* %19, %struct.gfs2_rgrpd** %5, align 8
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %21 = icmp ne %struct.gfs2_rgrpd* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %24 = call i32 @gfs2_rgrp_brelse(%struct.gfs2_rgrpd* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %27 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @GLF_DIRTY, align 4
  %31 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %32 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %31, i32 0, i32 4
  %33 = call i32 @test_and_clear_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %93

36:                                               ; preds = %25
  %37 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %38 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %39 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @GLOCK_BUG_ON(%struct.gfs2_glock* %37, i32 %43)
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %46 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %47 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %48 = load i32, i32* @GFS2_LFC_RGRP_GO_SYNC, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %45, %struct.gfs2_glock* %46, i32 %49)
  %51 = load %struct.address_space*, %struct.address_space** %4, align 8
  %52 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %53 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %57 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @filemap_fdatawrite_range(%struct.address_space* %51, i32 %55, i32 %59)
  %61 = load %struct.address_space*, %struct.address_space** %4, align 8
  %62 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %63 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %67 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @filemap_fdatawait_range(%struct.address_space* %61, i32 %65, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.address_space*, %struct.address_space** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @mapping_set_error(%struct.address_space* %71, i32 %72)
  %74 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %75 = call i32 @gfs2_ail_empty_gl(%struct.gfs2_glock* %74)
  %76 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %77 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %81 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %80, i32 0, i32 2
  %82 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %81, align 8
  store %struct.gfs2_rgrpd* %82, %struct.gfs2_rgrpd** %5, align 8
  %83 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %84 = icmp ne %struct.gfs2_rgrpd* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %36
  %86 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %87 = call i32 @gfs2_free_clones(%struct.gfs2_rgrpd* %86)
  br label %88

88:                                               ; preds = %85, %36
  %89 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %90 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %88, %35
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_rgrp_brelse(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @GLOCK_BUG_ON(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, %struct.gfs2_glock*, i32) #1

declare dso_local i32 @filemap_fdatawrite_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @filemap_fdatawait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

declare dso_local i32 @gfs2_ail_empty_gl(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_free_clones(%struct.gfs2_rgrpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
