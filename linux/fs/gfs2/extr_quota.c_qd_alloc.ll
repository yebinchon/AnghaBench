; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, i32, i32, %struct.kqid, %struct.TYPE_2__, %struct.gfs2_sbd* }
%struct.kqid = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }

@gfs2_quotad_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@gfs2_quota_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_quota_data* (i32, %struct.gfs2_sbd*, i32)* @qd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_quota_data* @qd_alloc(i32 %0, %struct.gfs2_sbd* %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_quota_data*, align 8
  %5 = alloca %struct.kqid, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_quota_data*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  store i32 %0, i32* %6, align 4
  store %struct.gfs2_sbd* %1, %struct.gfs2_sbd** %7, align 8
  %11 = load i32, i32* @gfs2_quotad_cachep, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.gfs2_quota_data* @kmem_cache_zalloc(i32 %11, i32 %12)
  store %struct.gfs2_quota_data* %13, %struct.gfs2_quota_data** %8, align 8
  %14 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %15 = icmp ne %struct.gfs2_quota_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.gfs2_quota_data* null, %struct.gfs2_quota_data** %4, align 8
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %19 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %20 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %19, i32 0, i32 6
  store %struct.gfs2_sbd* %18, %struct.gfs2_sbd** %20, align 8
  %21 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %22 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %25 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %29 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %28, i32 0, i32 4
  %30 = bitcast %struct.kqid* %29 to i8*
  %31 = bitcast %struct.kqid* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %33 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %35 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %34, i32 0, i32 3
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %39 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %41 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %42 = call i32 @qd2index(%struct.gfs2_quota_data* %41)
  %43 = load i32, i32* @CREATE, align 4
  %44 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %45 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %44, i32 0, i32 2
  %46 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %40, i32 %42, i32* @gfs2_quota_glops, i32 %43, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %17
  br label %52

50:                                               ; preds = %17
  %51 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  store %struct.gfs2_quota_data* %51, %struct.gfs2_quota_data** %4, align 8
  br label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @gfs2_quotad_cachep, align 4
  %54 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %55 = call i32 @kmem_cache_free(i32 %53, %struct.gfs2_quota_data* %54)
  store %struct.gfs2_quota_data* null, %struct.gfs2_quota_data** %4, align 8
  br label %56

56:                                               ; preds = %52, %50, %16
  %57 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %4, align 8
  ret %struct.gfs2_quota_data* %57
}

declare dso_local %struct.gfs2_quota_data* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i32, i32*, i32, i32*) #1

declare dso_local i32 @qd2index(%struct.gfs2_quota_data*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
