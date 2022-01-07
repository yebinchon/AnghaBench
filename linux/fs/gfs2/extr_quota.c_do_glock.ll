; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_do_glock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_do_glock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { %struct.TYPE_6__*, %struct.gfs2_quota_lvb, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_quota_lvb = type { i64 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_6__* }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@QDF_REFRESH = common dso_local global i32 0, align 4
@FORCE = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*, i32, %struct.gfs2_holder*)* @do_glock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_glock(%struct.gfs2_quota_data* %0, i32 %1, %struct.gfs2_holder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_quota_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_holder*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.gfs2_holder* %2, %struct.gfs2_holder** %7, align 8
  %12 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %8, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.gfs2_inode* @GFS2_I(i32 %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %9, align 8
  br label %22

22:                                               ; preds = %93, %3
  %23 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %24 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* @LM_ST_SHARED, align 4
  %27 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %28 = call i32 @gfs2_glock_nq_init(%struct.TYPE_6__* %25, i32 %26, i32 0, %struct.gfs2_holder* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %104

33:                                               ; preds = %22
  %34 = load i32, i32* @QDF_REFRESH, align 4
  %35 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %35, i32 0, i32 2
  %37 = call i64 @test_and_clear_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @FORCE, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %42, i32 0, i32 1
  %44 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %45 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.gfs2_quota_lvb*
  %51 = bitcast %struct.gfs2_quota_lvb* %43 to i8*
  %52 = bitcast %struct.gfs2_quota_lvb* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %41
  %56 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %57 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.gfs2_quota_lvb, %struct.gfs2_quota_lvb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GFS2_MAGIC, align 4
  %61 = call i64 @cpu_to_be32(i32 %60)
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %55, %41
  %64 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %65 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %64)
  %66 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %67 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %70 = load i32, i32* @GL_NOCACHE, align 4
  %71 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %72 = call i32 @gfs2_glock_nq_init(%struct.TYPE_6__* %68, i32 %69, i32 %70, %struct.gfs2_holder* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %104

77:                                               ; preds = %63
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %79 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* @LM_ST_SHARED, align 4
  %82 = call i32 @gfs2_glock_nq_init(%struct.TYPE_6__* %80, i32 %81, i32 0, %struct.gfs2_holder* %10)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %100

86:                                               ; preds = %77
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %88 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %89 = call i32 @update_qd(%struct.gfs2_sbd* %87, %struct.gfs2_quota_data* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %98

93:                                               ; preds = %86
  %94 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  %95 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %96 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %95)
  store i32 0, i32* %6, align 4
  br label %22

97:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %104

98:                                               ; preds = %92
  %99 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  br label %100

100:                                              ; preds = %98, %85
  %101 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %102 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %97, %75, %31
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_6__*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @update_qd(%struct.gfs2_sbd*, %struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
