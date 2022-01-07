; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dqput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dqput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.dquot*)*, i32 (%struct.dquot*)* }
%struct.TYPE_7__ = type { i64 }

@DQST_DROPS = common dso_local global i32 0, align 4
@dq_list_lock = common dso_local global i32 0, align 4
@dquot_ref_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Can't write quota structure (error %d). Quota may get out of sync!\00", align 1
@DQ_ACTIVE_B = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@quotatypes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dqput(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %4 = load %struct.dquot*, %struct.dquot** %2, align 8
  %5 = icmp ne %struct.dquot* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %88

7:                                                ; preds = %1
  %8 = load i32, i32* @DQST_DROPS, align 4
  %9 = call i32 @dqstats_inc(i32 %8)
  br label %10

10:                                               ; preds = %70, %63, %7
  %11 = call i32 @spin_lock(i32* @dq_list_lock)
  %12 = load %struct.dquot*, %struct.dquot** %2, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 1
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.dquot*, %struct.dquot** %2, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 1
  %19 = call i32 @atomic_dec(i32* %18)
  %20 = load %struct.dquot*, %struct.dquot** %2, align 8
  %21 = getelementptr inbounds %struct.dquot, %struct.dquot* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.dquot*, %struct.dquot** %2, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @sb_has_quota_active(%struct.TYPE_6__* %22, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %16
  %30 = load %struct.dquot*, %struct.dquot** %2, align 8
  %31 = getelementptr inbounds %struct.dquot, %struct.dquot* %30, i32 0, i32 1
  %32 = call i32 @atomic_read(i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @wake_up(i32* @dquot_ref_wq)
  br label %36

36:                                               ; preds = %34, %29, %16
  %37 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %88

38:                                               ; preds = %10
  %39 = load %struct.dquot*, %struct.dquot** %2, align 8
  %40 = call i64 @dquot_dirty(%struct.dquot* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = call i32 @spin_unlock(i32* @dq_list_lock)
  %44 = load %struct.dquot*, %struct.dquot** %2, align 8
  %45 = getelementptr inbounds %struct.dquot, %struct.dquot* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %49, align 8
  %51 = load %struct.dquot*, %struct.dquot** %2, align 8
  %52 = call i32 %50(%struct.dquot* %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.dquot*, %struct.dquot** %2, align 8
  %57 = getelementptr inbounds %struct.dquot, %struct.dquot* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @quota_error(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.dquot*, %struct.dquot** %2, align 8
  %62 = call i32 @clear_dquot_dirty(%struct.dquot* %61)
  br label %63

63:                                               ; preds = %55, %42
  br label %10

64:                                               ; preds = %38
  %65 = load i32, i32* @DQ_ACTIVE_B, align 4
  %66 = load %struct.dquot*, %struct.dquot** %2, align 8
  %67 = getelementptr inbounds %struct.dquot, %struct.dquot* %66, i32 0, i32 3
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = call i32 @spin_unlock(i32* @dq_list_lock)
  %72 = load %struct.dquot*, %struct.dquot** %2, align 8
  %73 = getelementptr inbounds %struct.dquot, %struct.dquot* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32 (%struct.dquot*)*, i32 (%struct.dquot*)** %77, align 8
  %79 = load %struct.dquot*, %struct.dquot** %2, align 8
  %80 = call i32 %78(%struct.dquot* %79)
  br label %10

81:                                               ; preds = %64
  %82 = load %struct.dquot*, %struct.dquot** %2, align 8
  %83 = getelementptr inbounds %struct.dquot, %struct.dquot* %82, i32 0, i32 1
  %84 = call i32 @atomic_dec(i32* %83)
  %85 = load %struct.dquot*, %struct.dquot** %2, align 8
  %86 = call i32 @put_dquot_last(%struct.dquot* %85)
  %87 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %88

88:                                               ; preds = %81, %36, %6
  ret void
}

declare dso_local i32 @dqstats_inc(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @sb_has_quota_active(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @dquot_dirty(%struct.dquot*) #1

declare dso_local i32 @quota_error(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @clear_dquot_dirty(%struct.dquot*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @put_dquot_last(%struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
