; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_set_journal_csum_feature_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_set_journal_csum_feature_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32 }

@JBD2_FEATURE_INCOMPAT_CSUM_V3 = common dso_local global i32 0, align 4
@JBD2_FEATURE_COMPAT_CHECKSUM = common dso_local global i32 0, align 4
@JBD2_FEATURE_INCOMPAT_CSUM_V2 = common dso_local global i32 0, align 4
@JOURNAL_ASYNC_COMMIT = common dso_local global i32 0, align 4
@JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT = common dso_local global i32 0, align 4
@JOURNAL_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @set_journal_csum_feature_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_journal_csum_feature_set(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %7)
  store %struct.ext4_sb_info* %8, %struct.ext4_sb_info** %6, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call i64 @ext4_has_metadata_csum(%struct.super_block* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* @JBD2_FEATURE_INCOMPAT_CSUM_V3, align 4
  store i32 %13, i32* %5, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @JBD2_FEATURE_COMPAT_CHECKSUM, align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @JBD2_FEATURE_COMPAT_CHECKSUM, align 4
  %21 = load i32, i32* @JBD2_FEATURE_INCOMPAT_CSUM_V3, align 4
  %22 = load i32, i32* @JBD2_FEATURE_INCOMPAT_CSUM_V2, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @jbd2_journal_clear_features(i32 %19, i32 %20, i32 0, i32 %23)
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = load i32, i32* @JOURNAL_ASYNC_COMMIT, align 4
  %27 = call i64 @test_opt(%struct.super_block* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %16
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %31 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @jbd2_journal_set_features(i32 %32, i32 %33, i32 0, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %16
  %39 = load %struct.super_block*, %struct.super_block** %2, align 8
  %40 = load i32, i32* @JOURNAL_CHECKSUM, align 4
  %41 = call i64 @test_opt(%struct.super_block* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %45 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @jbd2_journal_set_features(i32 %46, i32 %47, i32 0, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %51 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT, align 4
  %54 = call i32 @jbd2_journal_clear_features(i32 %52, i32 0, i32 0, i32 %53)
  br label %61

55:                                               ; preds = %38
  %56 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %57 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT, align 4
  %60 = call i32 @jbd2_journal_clear_features(i32 %58, i32 0, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %55, %43
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local i32 @jbd2_journal_clear_features(i32, i32, i32, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @jbd2_journal_set_features(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
