; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_restore_curseg_summaries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_restore_curseg_summaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_journal = type { i32 }
%struct.TYPE_2__ = type { %struct.f2fs_journal* }

@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@CP_COMPACT_SUM_FLAG = common dso_local global i32 0, align 4
@META_CP = common dso_local global i32 0, align 4
@CURSEG_HOT_NODE = common dso_local global i32 0, align 4
@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@CURSEG_COLD_NODE = common dso_local global i32 0, align 4
@NAT_JOURNAL_ENTRIES = common dso_local global i64 0, align 8
@SIT_JOURNAL_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"invalid journal entries nats %u sits %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @restore_curseg_summaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_curseg_summaries(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_journal*, align 8
  %5 = alloca %struct.f2fs_journal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %11 = call %struct.TYPE_2__* @CURSEG_I(%struct.f2fs_sb_info* %9, i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.f2fs_journal*, %struct.f2fs_journal** %12, align 8
  store %struct.f2fs_journal* %13, %struct.f2fs_journal** %4, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %16 = call %struct.TYPE_2__* @CURSEG_I(%struct.f2fs_sb_info* %14, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.f2fs_journal*, %struct.f2fs_journal** %17, align 8
  store %struct.f2fs_journal* %18, %struct.f2fs_journal** %5, align 8
  %19 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = load i32, i32* @CP_COMPACT_SUM_FLAG, align 4
  %22 = call i64 @is_set_ckpt_flags(%struct.f2fs_sb_info* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = call i32 @f2fs_npages_for_summary_flush(%struct.f2fs_sb_info* %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %32 = call i32 @start_sum_block(%struct.f2fs_sb_info* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @META_CP, align 4
  %35 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %30, i32 %32, i32 %33, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %38 = call i32 @read_compacted_summaries(%struct.f2fs_sb_info* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %97

43:                                               ; preds = %36
  %44 = load i32, i32* @CURSEG_HOT_NODE, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %1
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %47 = call i64 @__exist_node_summaries(%struct.f2fs_sb_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %52 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sum_blk_addr(%struct.f2fs_sb_info* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* @META_CP, align 4
  %59 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %50, i32 %54, i32 %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %49, %45
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @CURSEG_COLD_NODE, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @read_normal_summaries(%struct.f2fs_sb_info* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %97

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.f2fs_journal*, %struct.f2fs_journal** %5, align 8
  %79 = call i64 @nats_in_cursum(%struct.f2fs_journal* %78)
  %80 = load i64, i64* @NAT_JOURNAL_ENTRIES, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %84 = call i64 @sits_in_cursum(%struct.f2fs_journal* %83)
  %85 = load i64, i64* @SIT_JOURNAL_ENTRIES, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %82, %77
  %88 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %89 = load %struct.f2fs_journal*, %struct.f2fs_journal** %5, align 8
  %90 = call i64 @nats_in_cursum(%struct.f2fs_journal* %89)
  %91 = load %struct.f2fs_journal*, %struct.f2fs_journal** %4, align 8
  %92 = call i64 @sits_in_cursum(%struct.f2fs_journal* %91)
  %93 = call i32 @f2fs_err(%struct.f2fs_sb_info* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %87, %71, %41
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_2__* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @is_set_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_npages_for_summary_flush(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i32, i32, i32, i32) #1

declare dso_local i32 @start_sum_block(%struct.f2fs_sb_info*) #1

declare dso_local i32 @read_compacted_summaries(%struct.f2fs_sb_info*) #1

declare dso_local i64 @__exist_node_summaries(%struct.f2fs_sb_info*) #1

declare dso_local i32 @sum_blk_addr(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @read_normal_summaries(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @nats_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i64 @sits_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
