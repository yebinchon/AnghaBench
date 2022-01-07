; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_allocate_segment_by_default.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_allocate_segment_by_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i64 }

@CP_CRC_RECOVERY_FLAG = common dso_local global i32 0, align 4
@CURSEG_WARM_NODE = common dso_local global i32 0, align 4
@LFS = common dso_local global i64 0, align 8
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @allocate_segment_by_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_segment_by_default(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.curseg_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %8, i32 %9)
  store %struct.curseg_info* %10, %struct.curseg_info** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @new_curseg(%struct.f2fs_sb_info* %14, i32 %15, i32 1)
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %19 = load i32, i32* @CP_CRC_RECOVERY_FLAG, align 4
  %20 = call i32 @is_set_ckpt_flags(%struct.f2fs_sb_info* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CURSEG_WARM_NODE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @new_curseg(%struct.f2fs_sb_info* %27, i32 %28, i32 0)
  br label %73

30:                                               ; preds = %22, %17
  %31 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %32 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LFS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @is_next_segment_free(%struct.f2fs_sb_info* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %43 = load i32, i32* @SBI_CP_DISABLED, align 4
  %44 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @new_curseg(%struct.f2fs_sb_info* %51, i32 %52, i32 0)
  br label %72

54:                                               ; preds = %41, %36, %30
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %56 = call i64 @f2fs_need_SSR(%struct.f2fs_sb_info* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @get_ssr_segment(%struct.f2fs_sb_info* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @change_curseg(%struct.f2fs_sb_info* %64, i32 %65)
  br label %71

67:                                               ; preds = %58, %54
  %68 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @new_curseg(%struct.f2fs_sb_info* %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %50
  br label %73

73:                                               ; preds = %72, %26
  br label %74

74:                                               ; preds = %73, %13
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %76 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %77 = call i32 @stat_inc_seg_type(%struct.f2fs_sb_info* %75, %struct.curseg_info* %76)
  ret void
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @new_curseg(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @is_set_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @is_next_segment_free(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_need_SSR(%struct.f2fs_sb_info*) #1

declare dso_local i64 @get_ssr_segment(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @change_curseg(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @stat_inc_seg_type(%struct.f2fs_sb_info*, %struct.curseg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
