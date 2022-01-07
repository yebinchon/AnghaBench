; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_convert_meta_bg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_convert_meta_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ext4_sb_info = type { i32, i32, %struct.ext4_super_block*, i32 }
%struct.ext4_super_block = type { i32, i64 }
%struct.ext4_inode_info = type { i64* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Converting file system to meta_bg\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unexpected non-zero s_reserved_gdt_blocks\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EXT4_N_BLOCKS = common dso_local global i32 0, align 4
@EXT4_DIND_BLOCK = common dso_local global i32 0, align 4
@EXT4_HT_RESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"corrupted/inconsistent resize inode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @ext4_convert_meta_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_convert_meta_bg(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.ext4_super_block*, align 8
  %9 = alloca %struct.ext4_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %15)
  store %struct.ext4_sb_info* %16, %struct.ext4_sb_info** %7, align 8
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %17, i32 0, i32 2
  %19 = load %struct.ext4_super_block*, %struct.ext4_super_block** %18, align 8
  store %struct.ext4_super_block* %19, %struct.ext4_super_block** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %20)
  store %struct.ext4_inode_info* %21, %struct.ext4_inode_info** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load i32, i32* @KERN_INFO, align 4
  %24 = call i32 @ext4_msg(%struct.super_block* %22, i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %27, label %89

27:                                               ; preds = %2
  %28 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %29 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = call i32 @ext4_error(%struct.super_block* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %189

37:                                               ; preds = %27
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %45 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 9, %46
  %48 = sub nsw i32 %43, %47
  %49 = shl i32 1, %48
  %50 = icmp ne i32 %40, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %184

52:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %83, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @EXT4_N_BLOCKS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @EXT4_DIND_BLOCK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %63 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %83

71:                                               ; preds = %61
  br label %184

72:                                               ; preds = %57
  %73 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %74 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %184

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %53

86:                                               ; preds = %53
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 3
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %86, %2
  %90 = load %struct.super_block*, %struct.super_block** %4, align 8
  %91 = load i32, i32* @EXT4_HT_RESIZE, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32* @ext4_journal_start_sb(%struct.super_block* %90, i32 %91, i32 %92)
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @IS_ERR(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @PTR_ERR(i32* %98)
  store i32 %99, i32* %3, align 4
  br label %189

100:                                              ; preds = %89
  %101 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %102 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @BUFFER_TRACE(i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %107 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ext4_journal_get_write_access(i32* %105, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %175

113:                                              ; preds = %100
  %114 = load %struct.super_block*, %struct.super_block** %4, align 8
  %115 = call i32 @ext4_clear_feature_resize_inode(%struct.super_block* %114)
  %116 = load %struct.super_block*, %struct.super_block** %4, align 8
  %117 = call i32 @ext4_set_feature_meta_bg(%struct.super_block* %116)
  %118 = load %struct.super_block*, %struct.super_block** %4, align 8
  %119 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %120 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @num_desc_blocks(%struct.super_block* %118, i32 %121)
  %123 = call i32 @cpu_to_le32(i32 %122)
  %124 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %125 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %124, i32 0, i32 2
  %126 = load %struct.ext4_super_block*, %struct.ext4_super_block** %125, align 8
  %127 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.super_block*, %struct.super_block** %4, align 8
  %130 = call i32 @ext4_handle_dirty_super(i32* %128, %struct.super_block* %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %113
  %134 = load %struct.super_block*, %struct.super_block** %4, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @ext4_std_error(%struct.super_block* %134, i32 %135)
  br label %175

137:                                              ; preds = %113
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = icmp ne %struct.inode* %138, null
  br i1 %139, label %140, label %174

140:                                              ; preds = %137
  %141 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %142 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* @EXT4_DIND_BLOCK, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @le32_to_cpu(i64 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32*, i32** %6, align 8
  %150 = load %struct.inode*, %struct.inode** %5, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %153 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @ext4_free_blocks(i32* %149, %struct.inode* %150, i32* null, i32 %151, i32 1, i32 %154)
  %156 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %157 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* @EXT4_DIND_BLOCK, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 0, i64* %161, align 8
  %162 = load %struct.inode*, %struct.inode** %5, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 0
  store i32 0, i32* %163, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.inode*, %struct.inode** %5, align 8
  %166 = call i32 @ext4_mark_inode_dirty(i32* %164, %struct.inode* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %140
  %170 = load %struct.super_block*, %struct.super_block** %4, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @ext4_std_error(%struct.super_block* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %140
  br label %174

174:                                              ; preds = %173, %137
  br label %175

175:                                              ; preds = %174, %133, %112
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @ext4_journal_stop(i32* %176)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %180, %175
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %3, align 4
  br label %189

184:                                              ; preds = %81, %71, %51
  %185 = load %struct.super_block*, %struct.super_block** %4, align 8
  %186 = call i32 @ext4_error(%struct.super_block* %185, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %184, %182, %97, %32
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*) #1

declare dso_local i32* @ext4_journal_start_sb(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @BUFFER_TRACE(i32, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32) #1

declare dso_local i32 @ext4_clear_feature_resize_inode(%struct.super_block*) #1

declare dso_local i32 @ext4_set_feature_meta_bg(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @num_desc_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_handle_dirty_super(i32*, %struct.super_block*) #1

declare dso_local i32 @ext4_std_error(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
