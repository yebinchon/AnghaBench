; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32 }
%struct.gfs2_quota_data = type { i32, i32, i32 }
%struct.kqid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@qd_lock = common dso_local global i32 0, align 4
@qd_hash_table = common dso_local global i32* null, align 8
@gfs2_quotad_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, %struct.gfs2_quota_data**)* @qd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qd_get(%struct.gfs2_sbd* %0, i32 %1, %struct.gfs2_quota_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqid, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_quota_data**, align 8
  %8 = alloca %struct.gfs2_quota_data*, align 8
  %9 = alloca %struct.gfs2_quota_data*, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_quota_data** %2, %struct.gfs2_quota_data*** %7, align 8
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %13 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gfs2_qd_hash(%struct.gfs2_sbd* %12, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %19 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.gfs2_quota_data* @gfs2_qd_search_bucket(i32 %17, %struct.gfs2_sbd* %18, i32 %20)
  store %struct.gfs2_quota_data* %21, %struct.gfs2_quota_data** %8, align 8
  %22 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  store %struct.gfs2_quota_data* %21, %struct.gfs2_quota_data** %22, align 8
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %25 = icmp ne %struct.gfs2_quota_data* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %30 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.gfs2_quota_data* @qd_alloc(i32 %28, %struct.gfs2_sbd* %29, i32 %31)
  store %struct.gfs2_quota_data* %32, %struct.gfs2_quota_data** %9, align 8
  %33 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %34 = icmp ne %struct.gfs2_quota_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %83

38:                                               ; preds = %27
  %39 = call i32 @spin_lock(i32* @qd_lock)
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @spin_lock_bucket(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %44 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.gfs2_quota_data* @gfs2_qd_search_bucket(i32 %42, %struct.gfs2_sbd* %43, i32 %45)
  store %struct.gfs2_quota_data* %46, %struct.gfs2_quota_data** %8, align 8
  %47 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  store %struct.gfs2_quota_data* %46, %struct.gfs2_quota_data** %47, align 8
  %48 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %49 = icmp eq %struct.gfs2_quota_data* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %38
  %51 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %52 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  store %struct.gfs2_quota_data* %51, %struct.gfs2_quota_data** %52, align 8
  %53 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %54 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %53, i32 0, i32 2
  %55 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %56 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %55, i32 0, i32 1
  %57 = call i32 @list_add(i32* %54, i32* %56)
  %58 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %59 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %58, i32 0, i32 1
  %60 = load i32*, i32** @qd_hash_table, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @hlist_bl_add_head_rcu(i32* %59, i32* %63)
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 0
  %67 = call i32 @atomic_inc(i32* %66)
  br label %68

68:                                               ; preds = %50, %38
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @spin_unlock_bucket(i32 %69)
  %71 = call i32 @spin_unlock(i32* @qd_lock)
  %72 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %73 = icmp ne %struct.gfs2_quota_data* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %76 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gfs2_glock_put(i32 %77)
  %79 = load i32, i32* @gfs2_quotad_cachep, align 4
  %80 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %81 = call i32 @kmem_cache_free(i32 %79, %struct.gfs2_quota_data* %80)
  br label %82

82:                                               ; preds = %74, %68
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %35, %26
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @gfs2_qd_hash(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.gfs2_quota_data* @gfs2_qd_search_bucket(i32, %struct.gfs2_sbd*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.gfs2_quota_data* @qd_alloc(i32, %struct.gfs2_sbd*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_bucket(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hlist_bl_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bucket(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_glock_put(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
