; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qc_state = type { %struct.qc_type_state* }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32, i32 }
%struct.quota_info = type { %struct.TYPE_2__**, %struct.mem_dqinfo* }
%struct.TYPE_2__ = type { i32, i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@QCI_ACCT_ENABLED = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4
@DQF_SYS_FILE = common dso_local global i32 0, align 4
@QCI_SYSFILE = common dso_local global i32 0, align 4
@DQF_ROOT_SQUASH = common dso_local global i32 0, align 4
@QCI_ROOT_SQUASH = common dso_local global i32 0, align 4
@QCI_LIMITS_ENFORCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_get_state(%struct.super_block* %0, %struct.qc_state* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.qc_state*, align 8
  %5 = alloca %struct.mem_dqinfo*, align 8
  %6 = alloca %struct.qc_type_state*, align 8
  %7 = alloca %struct.quota_info*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.qc_state* %1, %struct.qc_state** %4, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %9)
  store %struct.quota_info* %10, %struct.quota_info** %7, align 8
  %11 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %12 = call i32 @memset(%struct.qc_state* %11, i32 0, i32 8)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %113, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MAXQUOTAS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %13
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @sb_has_quota_active(%struct.super_block* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %113

23:                                               ; preds = %17
  %24 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %25 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %24, i32 0, i32 0
  %26 = load %struct.qc_type_state*, %struct.qc_type_state** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %26, i64 %28
  store %struct.qc_type_state* %29, %struct.qc_type_state** %6, align 8
  %30 = load %struct.super_block*, %struct.super_block** %3, align 8
  %31 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %31, i32 0, i32 1
  %33 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %33, i64 %35
  store %struct.mem_dqinfo* %36, %struct.mem_dqinfo** %5, align 8
  %37 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %38 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %39 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = call i32 @spin_lock(i32* @dq_data_lock)
  %41 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %42 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DQF_SYS_FILE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %23
  %48 = load i32, i32* @QCI_SYSFILE, align 4
  %49 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %50 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %23
  %54 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %55 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DQF_ROOT_SQUASH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @QCI_ROOT_SQUASH, align 4
  %62 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %63 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.super_block*, %struct.super_block** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @sb_has_quota_limits_enabled(%struct.super_block* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %73 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %74 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %79 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %82 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %84 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %87 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %89 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %98 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %100 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %101, i64 %103
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %109 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.qc_type_state*, %struct.qc_type_state** %6, align 8
  %111 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  %112 = call i32 @spin_unlock(i32* @dq_data_lock)
  br label %113

113:                                              ; preds = %77, %22
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %13

116:                                              ; preds = %13
  ret i32 0
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @memset(%struct.qc_state*, i32, i32) #1

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sb_has_quota_limits_enabled(%struct.super_block*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
