; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_recover_orphan_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_recover_orphan_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.f2fs_orphan_block = type { i32*, i32 }

@CP_ORPHAN_PRESENT_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"write access unavailable, skipping orphan cleanup\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"orphan cleanup on readonly fs\00", align 1
@META_CP = common dso_local global i32 0, align 4
@SBI_IS_RECOVERED = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_recover_orphan_inodes(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.f2fs_orphan_block*, align 8
  %12 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %19 = load i32, i32* @CP_ORPHAN_PRESENT_FLAG, align 4
  %20 = call i32 @is_set_ckpt_flags(%struct.f2fs_sb_info* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

23:                                               ; preds = %1
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @bdev_read_only(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = call i32 @f2fs_info(%struct.f2fs_sb_info* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %137

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SB_RDONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %41 = call i32 @f2fs_info(%struct.f2fs_sb_info* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @SB_RDONLY, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %45 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %39, %34
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %52 = call i32 @__start_cp_addr(%struct.f2fs_sb_info* %51)
  %53 = add nsw i32 %52, 1
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %55 = call i32 @__cp_payload(%struct.f2fs_sb_info* %54)
  %56 = add nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %4, align 8
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %59 = call i32 @__start_sum_addr(%struct.f2fs_sb_info* %58)
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %62 = call i32 @__cp_payload(%struct.f2fs_sb_info* %61)
  %63 = sub nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %5, align 8
  %65 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i32, i32* @META_CP, align 4
  %69 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %65, i64 %66, i64 %67, i32 %68, i32 1)
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %120, %50
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %70
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %76, %77
  %79 = call %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info* %75, i64 %78)
  store %struct.page* %79, %struct.page** %10, align 8
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = call i64 @IS_ERR(%struct.page* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.page*, %struct.page** %10, align 8
  %85 = call i32 @PTR_ERR(%struct.page* %84)
  store i32 %85, i32* %9, align 4
  br label %127

86:                                               ; preds = %74
  %87 = load %struct.page*, %struct.page** %10, align 8
  %88 = call i64 @page_address(%struct.page* %87)
  %89 = inttoptr i64 %88 to %struct.f2fs_orphan_block*
  store %struct.f2fs_orphan_block* %89, %struct.f2fs_orphan_block** %11, align 8
  store i64 0, i64* %7, align 8
  br label %90

90:                                               ; preds = %114, %86
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.f2fs_orphan_block*, %struct.f2fs_orphan_block** %11, align 8
  %93 = getelementptr inbounds %struct.f2fs_orphan_block, %struct.f2fs_orphan_block* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @le32_to_cpu(i32 %94)
  %96 = icmp slt i64 %91, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load %struct.f2fs_orphan_block*, %struct.f2fs_orphan_block** %11, align 8
  %99 = getelementptr inbounds %struct.f2fs_orphan_block, %struct.f2fs_orphan_block* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @le32_to_cpu(i32 %103)
  store i64 %104, i64* %12, align 8
  %105 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @recover_orphan_inode(%struct.f2fs_sb_info* %105, i64 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load %struct.page*, %struct.page** %10, align 8
  %112 = call i32 @f2fs_put_page(%struct.page* %111, i32 1)
  br label %127

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %7, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %7, align 8
  br label %90

117:                                              ; preds = %90
  %118 = load %struct.page*, %struct.page** %10, align 8
  %119 = call i32 @f2fs_put_page(%struct.page* %118, i32 1)
  br label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %6, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %6, align 8
  br label %70

123:                                              ; preds = %70
  %124 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %125 = load i32, i32* @CP_ORPHAN_PRESENT_FLAG, align 4
  %126 = call i32 @clear_ckpt_flags(%struct.f2fs_sb_info* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %110, %83
  %128 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %129 = load i32, i32* @SBI_IS_RECOVERED, align 4
  %130 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %133 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %127, %31, %22
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @is_set_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @bdev_read_only(i32) #1

declare dso_local i32 @f2fs_info(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @__start_cp_addr(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__cp_payload(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__start_sum_addr(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i64, i64, i32, i32) #1

declare dso_local %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @recover_orphan_inode(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @clear_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
