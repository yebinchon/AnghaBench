; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@JBD2_BARRIER = common dso_local global i32 0, align 4
@BARRIER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext4_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_sb_info*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %11)
  store %struct.ext4_sb_info* %12, %struct.ext4_sb_info** %9, align 8
  %13 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %14 = call i32 @ext4_forced_shutdown(%struct.ext4_sb_info* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

18:                                               ; preds = %2
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @trace_ext4_sync_fs(%struct.super_block* %19, i32 %20)
  %22 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %23 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @flush_workqueue(i32 %24)
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = call i32 @dquot_writeback_dquots(%struct.super_block* %26, i32 -1)
  %28 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %29 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %73

32:                                               ; preds = %18
  %33 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %34 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @jbd2_get_latest_transaction(%struct.TYPE_5__* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %41 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @JBD2_BARRIER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %50 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_5__* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %48, %39, %32
  %57 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %58 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i64 @jbd2_journal_start_commit(%struct.TYPE_5__* %59, i32* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %67 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @jbd2_log_wait_commit(%struct.TYPE_5__* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %65, %62
  br label %72

72:                                               ; preds = %71, %56
  br label %83

73:                                               ; preds = %18
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.super_block*, %struct.super_block** %4, align 8
  %78 = load i32, i32* @BARRIER, align 4
  %79 = call i64 @test_opt(%struct.super_block* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %76, %73
  br label %83

83:                                               ; preds = %82, %72
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.super_block*, %struct.super_block** %4, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32 @blkdev_issue_flush(i32 %89, i32 %90, i32* null)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %86
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %17
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.ext4_sb_info*) #1

declare dso_local i32 @trace_ext4_sync_fs(%struct.super_block*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @dquot_writeback_dquots(%struct.super_block*, i32) #1

declare dso_local i32 @jbd2_get_latest_transaction(%struct.TYPE_5__*) #1

declare dso_local i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @jbd2_journal_start_commit(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @jbd2_log_wait_commit(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
