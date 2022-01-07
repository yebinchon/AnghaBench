; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_group_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_new_group_data = type { i32, i64 }
%struct.ext4_new_flex_group_data = type { i32, i32*, %struct.ext4_new_group_data* }
%struct.ext4_sb_info = type { %struct.ext4_super_block* }
%struct.ext4_super_block = type { i32, i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Can't resize non-sparse filesystem further\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"blocks_count overflow\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"inodes_count overflow\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"No reserved GDT blocks, can't resize\00", align 1
@EXT4_RESIZE_INO = common dso_local global i32 0, align 4
@EXT4_IGET_SPECIAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Error opening resize inode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_group_add(%struct.super_block* %0, %struct.ext4_new_group_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext4_new_group_data*, align 8
  %6 = alloca %struct.ext4_new_flex_group_data, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.ext4_super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext4_new_group_data* %1, %struct.ext4_new_group_data** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %14)
  store %struct.ext4_sb_info* %15, %struct.ext4_sb_info** %7, align 8
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 0
  %18 = load %struct.ext4_super_block*, %struct.ext4_super_block** %17, align 8
  store %struct.ext4_super_block* %18, %struct.ext4_super_block** %8, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %21 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ext4_bg_has_super(%struct.super_block* %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %27 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32 [ %29, %25 ], [ 0, %30 ]
  store i32 %32, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  store i32 0, i32* %13, align 4
  %33 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %34 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %36)
  %38 = srem i32 %35, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = call i32 @ext4_has_feature_sparse_super(%struct.super_block* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = call i32 @ext4_warning(%struct.super_block* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %157

50:                                               ; preds = %41, %31
  %51 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %52 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %51)
  %53 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %54 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %58 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %57)
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = call i32 @ext4_warning(%struct.super_block* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %157

65:                                               ; preds = %50
  %66 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %67 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  %70 = load %struct.super_block*, %struct.super_block** %4, align 8
  %71 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %70)
  %72 = add nsw i64 %69, %71
  %73 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %74 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load %struct.super_block*, %struct.super_block** %4, align 8
  %80 = call i32 @ext4_warning(%struct.super_block* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %157

83:                                               ; preds = %65
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %86, %83
  %90 = load %struct.super_block*, %struct.super_block** %4, align 8
  %91 = call i32 @ext4_has_feature_resize_inode(%struct.super_block* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %95 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %93, %89
  %100 = load %struct.super_block*, %struct.super_block** %4, align 8
  %101 = call i32 @ext4_warning(%struct.super_block* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @EPERM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %157

104:                                              ; preds = %93
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = load i32, i32* @EXT4_RESIZE_INO, align 4
  %107 = load i32, i32* @EXT4_IGET_SPECIAL, align 4
  %108 = call %struct.inode* @ext4_iget(%struct.super_block* %105, i32 %106, i32 %107)
  store %struct.inode* %108, %struct.inode** %10, align 8
  %109 = load %struct.inode*, %struct.inode** %10, align 8
  %110 = call i64 @IS_ERR(%struct.inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load %struct.super_block*, %struct.super_block** %4, align 8
  %114 = call i32 @ext4_warning(%struct.super_block* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = call i32 @PTR_ERR(%struct.inode* %115)
  store i32 %116, i32* %3, align 4
  br label %157

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %86
  %119 = load %struct.super_block*, %struct.super_block** %4, align 8
  %120 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %121 = call i32 @verify_group_input(%struct.super_block* %119, %struct.ext4_new_group_data* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %153

125:                                              ; preds = %118
  %126 = load %struct.super_block*, %struct.super_block** %4, align 8
  %127 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %128 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  %131 = call i32 @ext4_alloc_flex_bg_array(%struct.super_block* %126, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %153

135:                                              ; preds = %125
  %136 = load %struct.super_block*, %struct.super_block** %4, align 8
  %137 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %138 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  %141 = call i32 @ext4_mb_alloc_groupinfo(%struct.super_block* %136, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %153

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %6, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %5, align 8
  %148 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %6, i32 0, i32 2
  store %struct.ext4_new_group_data* %147, %struct.ext4_new_group_data** %148, align 8
  %149 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %6, i32 0, i32 1
  store i32* %13, i32** %149, align 8
  %150 = load %struct.super_block*, %struct.super_block** %4, align 8
  %151 = load %struct.inode*, %struct.inode** %10, align 8
  %152 = call i32 @ext4_flex_group_add(%struct.super_block* %150, %struct.inode* %151, %struct.ext4_new_flex_group_data* %6)
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %145, %144, %134, %124
  %154 = load %struct.inode*, %struct.inode** %10, align 8
  %155 = call i32 @iput(%struct.inode* %154)
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %112, %99, %78, %60, %45
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_bg_has_super(%struct.super_block*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @ext4_has_feature_sparse_super(%struct.super_block*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*) #1

declare dso_local i64 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_has_feature_resize_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ext4_iget(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @verify_group_input(%struct.super_block*, %struct.ext4_new_group_data*) #1

declare dso_local i32 @ext4_alloc_flex_bg_array(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_mb_alloc_groupinfo(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_flex_group_add(%struct.super_block*, %struct.inode*, %struct.ext4_new_flex_group_data*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
