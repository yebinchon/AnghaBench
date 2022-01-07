; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_set_dqinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_set_dqinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.mem_dqinfo* }

@QC_WARNS_MASK = common dso_local global i32 0, align 4
@QC_RT_SPC_TIMER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@QC_FLAGS = common dso_local global i32 0, align 4
@QCI_ROOT_SQUASH = common dso_local global i32 0, align 4
@QFMT_VFS_OLD = common dso_local global i64 0, align 8
@dq_data_lock = common dso_local global i32 0, align 4
@QC_SPC_TIMER = common dso_local global i32 0, align 4
@QC_INO_TIMER = common dso_local global i32 0, align 4
@DQF_ROOT_SQUASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_set_dqinfo(%struct.super_block* %0, i32 %1, %struct.qc_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qc_info*, align 8
  %8 = alloca %struct.mem_dqinfo*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qc_info* %2, %struct.qc_info** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %11 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @QC_WARNS_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %18 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QC_RT_SPC_TIMER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %136

26:                                               ; preds = %16
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sb_has_quota_active(%struct.super_block* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ESRCH, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %136

34:                                               ; preds = %26
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = call %struct.TYPE_6__* @sb_dqopt(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %38, i64 %40
  store %struct.mem_dqinfo* %41, %struct.mem_dqinfo** %8, align 8
  %42 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %43 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @QC_FLAGS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %34
  %49 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %50 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QCI_ROOT_SQUASH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %57 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @QFMT_VFS_OLD, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %136

66:                                               ; preds = %55, %48
  br label %67

67:                                               ; preds = %66, %34
  %68 = call i32 @spin_lock(i32* @dq_data_lock)
  %69 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %70 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @QC_SPC_TIMER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %77 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %80 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %83 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @QC_INO_TIMER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %90 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %93 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %96 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @QC_FLAGS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %103 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @QCI_ROOT_SQUASH, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @DQF_ROOT_SQUASH, align 4
  %110 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %111 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %121

114:                                              ; preds = %101
  %115 = load i32, i32* @DQF_ROOT_SQUASH, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %118 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %108
  br label %122

122:                                              ; preds = %121, %94
  %123 = call i32 @spin_unlock(i32* @dq_data_lock)
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @mark_info_dirty(%struct.super_block* %124, i32 %125)
  %127 = load %struct.super_block*, %struct.super_block** %5, align 8
  %128 = getelementptr inbounds %struct.super_block, %struct.super_block* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %130, align 8
  %132 = load %struct.super_block*, %struct.super_block** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 %131(%struct.super_block* %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %122, %63, %31, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_6__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_info_dirty(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
