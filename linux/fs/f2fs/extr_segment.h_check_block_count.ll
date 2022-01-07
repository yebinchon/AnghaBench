; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_check_block_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_check_block_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_sit_entry = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Mismatch valid blocks %d vs. %d\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Wrong valid blocks %d or segno %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, %struct.f2fs_sit_entry*)* @check_block_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_block_count(%struct.f2fs_sb_info* %0, i32 %1, %struct.f2fs_sit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_sit_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.f2fs_sit_entry* %2, %struct.f2fs_sit_entry** %7, align 8
  %12 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %7, align 8
  %13 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @test_bit_le(i32 0, i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %49, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %7, align 8
  %24 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %23, i32 0, i32 0
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @find_next_zero_bit_le(i32* %24, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %43

35:                                               ; preds = %19
  %36 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %7, align 8
  %37 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %36, i32 0, i32 0
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @find_next_bit_le(i32* %37, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %35, %22
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %19, label %55

55:                                               ; preds = %49
  %56 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %7, align 8
  %57 = call i32 @GET_SIT_VBLOCKS(%struct.f2fs_sit_entry* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %65 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %7, align 8
  %66 = call i32 @GET_SIT_VBLOCKS(%struct.f2fs_sit_entry* %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @f2fs_err(%struct.f2fs_sb_info* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %70 = load i32, i32* @SBI_NEED_FSCK, align 4
  %71 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %69, i32 %70)
  %72 = load i32, i32* @EFSCORRUPTED, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %104

74:                                               ; preds = %55
  %75 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %7, align 8
  %76 = call i32 @GET_SIT_VBLOCKS(%struct.f2fs_sit_entry* %75)
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %78 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %84 = call i32 @TOTAL_SEGS(%struct.f2fs_sb_info* %83)
  %85 = sub nsw i32 %84, 1
  %86 = icmp sgt i32 %82, %85
  br label %87

87:                                               ; preds = %81, %74
  %88 = phi i1 [ true, %74 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %94 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %7, align 8
  %95 = call i32 @GET_SIT_VBLOCKS(%struct.f2fs_sit_entry* %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @f2fs_err(%struct.f2fs_sb_info* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %99 = load i32, i32* @SBI_NEED_FSCK, align 4
  %100 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %98, i32 %99)
  %101 = load i32, i32* @EFSCORRUPTED, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %104

103:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %92, %63
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @test_bit_le(i32, i32) #1

declare dso_local i32 @find_next_zero_bit_le(i32*, i32, i32) #1

declare dso_local i32 @find_next_bit_le(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @GET_SIT_VBLOCKS(%struct.f2fs_sit_entry*) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i32, i32) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @TOTAL_SEGS(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
