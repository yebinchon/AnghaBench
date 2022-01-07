; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_write_data_summaries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_write_data_summaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@CP_COMPACT_SUM_FLAG = common dso_local global i32 0, align 4
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_write_data_summaries(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %6 = load i32, i32* @CP_COMPACT_SUM_FLAG, align 4
  %7 = call i64 @is_set_ckpt_flags(%struct.f2fs_sb_info* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @write_compacted_summaries(%struct.f2fs_sb_info* %10, i32 %11)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %17 = call i32 @write_normal_summaries(%struct.f2fs_sb_info* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %9
  ret void
}

declare dso_local i64 @is_set_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @write_compacted_summaries(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @write_normal_summaries(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
