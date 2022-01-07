; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dqget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dqget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, i32, %struct.kqid }
%struct.kqid = type { i32 }
%struct.super_block = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dquot*)* }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@dq_list_lock = common dso_local global i32 0, align 4
@dq_state_lock = common dso_local global i32 0, align 4
@DQST_LOOKUPS = common dso_local global i32 0, align 4
@DQST_CACHE_HITS = common dso_local global i32 0, align 4
@DQ_ACTIVE_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dquot* @dqget(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.kqid, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dquot*, align 8
  %8 = alloca %struct.dquot*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hashfn(%struct.super_block* %11, i32 %13)
  store i32 %14, i32* %6, align 4
  store %struct.dquot* null, %struct.dquot** %8, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @qid_has_mapping(i32 %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.dquot* @ERR_PTR(i32 %24)
  store %struct.dquot* %25, %struct.dquot** %3, align 8
  br label %138

26:                                               ; preds = %2
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sb_has_quota_active(%struct.super_block* %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ESRCH, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dquot* @ERR_PTR(i32 %34)
  store %struct.dquot* %35, %struct.dquot** %3, align 8
  br label %138

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %73, %36
  %38 = call i32 @spin_lock(i32* @dq_list_lock)
  %39 = call i32 @spin_lock(i32* @dq_state_lock)
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sb_has_quota_active(%struct.super_block* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = call i32 @spin_unlock(i32* @dq_state_lock)
  %47 = call i32 @spin_unlock(i32* @dq_list_lock)
  %48 = load i32, i32* @ESRCH, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.dquot* @ERR_PTR(i32 %49)
  store %struct.dquot* %50, %struct.dquot** %7, align 8
  br label %130

51:                                               ; preds = %37
  %52 = call i32 @spin_unlock(i32* @dq_state_lock)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.dquot* @find_dquot(i32 %53, %struct.super_block* %54, i32 %56)
  store %struct.dquot* %57, %struct.dquot** %7, align 8
  %58 = load %struct.dquot*, %struct.dquot** %7, align 8
  %59 = icmp ne %struct.dquot* %58, null
  br i1 %59, label %87, label %60

60:                                               ; preds = %51
  %61 = load %struct.dquot*, %struct.dquot** %8, align 8
  %62 = icmp ne %struct.dquot* %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = call i32 @spin_unlock(i32* @dq_list_lock)
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.dquot* @get_empty_dquot(%struct.super_block* %65, i32 %67)
  store %struct.dquot* %68, %struct.dquot** %8, align 8
  %69 = load %struct.dquot*, %struct.dquot** %8, align 8
  %70 = icmp ne %struct.dquot* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = call i32 (...) @schedule()
  br label %73

73:                                               ; preds = %71, %63
  br label %37

74:                                               ; preds = %60
  %75 = load %struct.dquot*, %struct.dquot** %8, align 8
  store %struct.dquot* %75, %struct.dquot** %7, align 8
  store %struct.dquot* null, %struct.dquot** %8, align 8
  %76 = load %struct.dquot*, %struct.dquot** %7, align 8
  %77 = getelementptr inbounds %struct.dquot, %struct.dquot* %76, i32 0, i32 3
  %78 = bitcast %struct.kqid* %77 to i8*
  %79 = bitcast %struct.kqid* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = load %struct.dquot*, %struct.dquot** %7, align 8
  %81 = call i32 @put_inuse(%struct.dquot* %80)
  %82 = load %struct.dquot*, %struct.dquot** %7, align 8
  %83 = call i32 @insert_dquot_hash(%struct.dquot* %82)
  %84 = call i32 @spin_unlock(i32* @dq_list_lock)
  %85 = load i32, i32* @DQST_LOOKUPS, align 4
  %86 = call i32 @dqstats_inc(i32 %85)
  br label %104

87:                                               ; preds = %51
  %88 = load %struct.dquot*, %struct.dquot** %7, align 8
  %89 = getelementptr inbounds %struct.dquot, %struct.dquot* %88, i32 0, i32 2
  %90 = call i32 @atomic_read(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load %struct.dquot*, %struct.dquot** %7, align 8
  %94 = call i32 @remove_free_dquot(%struct.dquot* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.dquot*, %struct.dquot** %7, align 8
  %97 = getelementptr inbounds %struct.dquot, %struct.dquot* %96, i32 0, i32 2
  %98 = call i32 @atomic_inc(i32* %97)
  %99 = call i32 @spin_unlock(i32* @dq_list_lock)
  %100 = load i32, i32* @DQST_CACHE_HITS, align 4
  %101 = call i32 @dqstats_inc(i32 %100)
  %102 = load i32, i32* @DQST_LOOKUPS, align 4
  %103 = call i32 @dqstats_inc(i32 %102)
  br label %104

104:                                              ; preds = %95, %74
  %105 = load %struct.dquot*, %struct.dquot** %7, align 8
  %106 = call i32 @wait_on_dquot(%struct.dquot* %105)
  %107 = load i32, i32* @DQ_ACTIVE_B, align 4
  %108 = load %struct.dquot*, %struct.dquot** %7, align 8
  %109 = getelementptr inbounds %struct.dquot, %struct.dquot* %108, i32 0, i32 1
  %110 = call i32 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %104
  %113 = load %struct.super_block*, %struct.super_block** %5, align 8
  %114 = getelementptr inbounds %struct.super_block, %struct.super_block* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %116, align 8
  %118 = load %struct.dquot*, %struct.dquot** %7, align 8
  %119 = call i32 %117(%struct.dquot* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load %struct.dquot*, %struct.dquot** %7, align 8
  %124 = call i32 @dqput(%struct.dquot* %123)
  %125 = load i32, i32* %9, align 4
  %126 = call %struct.dquot* @ERR_PTR(i32 %125)
  store %struct.dquot* %126, %struct.dquot** %7, align 8
  br label %130

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %104
  %129 = call i32 (...) @smp_rmb()
  br label %130

130:                                              ; preds = %128, %122, %45
  %131 = load %struct.dquot*, %struct.dquot** %8, align 8
  %132 = icmp ne %struct.dquot* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.dquot*, %struct.dquot** %8, align 8
  %135 = call i32 @do_destroy_dquot(%struct.dquot* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.dquot*, %struct.dquot** %7, align 8
  store %struct.dquot* %137, %struct.dquot** %3, align 8
  br label %138

138:                                              ; preds = %136, %32, %22
  %139 = load %struct.dquot*, %struct.dquot** %3, align 8
  ret %struct.dquot* %139
}

declare dso_local i32 @hashfn(%struct.super_block*, i32) #1

declare dso_local i32 @qid_has_mapping(i32, i32) #1

declare dso_local %struct.dquot* @ERR_PTR(i32) #1

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dquot* @find_dquot(i32, %struct.super_block*, i32) #1

declare dso_local %struct.dquot* @get_empty_dquot(%struct.super_block*, i32) #1

declare dso_local i32 @schedule(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @put_inuse(%struct.dquot*) #1

declare dso_local i32 @insert_dquot_hash(%struct.dquot*) #1

declare dso_local i32 @dqstats_inc(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @remove_free_dquot(%struct.dquot*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_on_dquot(%struct.dquot*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dqput(%struct.dquot*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @do_destroy_dquot(%struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
