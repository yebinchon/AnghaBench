; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_flex_group_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_flex_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_new_flex_group_data = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.buffer_head**, %struct.TYPE_5__*, %struct.ext4_super_block* }
%struct.buffer_head = type { i64, i8*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ext4_super_block = type { i32 }

@EXT4_HT_RESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, %struct.ext4_new_flex_group_data*)* @ext4_flex_group_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_flex_group_add(%struct.super_block* %0, %struct.inode* %1, %struct.ext4_new_flex_group_data* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_new_flex_group_data*, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.ext4_super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ext4_new_flex_group_data* %2, %struct.ext4_new_flex_group_data** %6, align 8
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %22)
  store %struct.ext4_sb_info* %23, %struct.ext4_sb_info** %7, align 8
  %24 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %25 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %24, i32 0, i32 3
  %26 = load %struct.ext4_super_block*, %struct.ext4_super_block** %25, align 8
  store %struct.ext4_super_block* %26, %struct.ext4_super_block** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %27 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %28 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %33 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %38 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %31, %3
  %43 = phi i1 [ true, %31 ], [ true, %3 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %47 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %51 = call i32 @ext4_blocks_count(%struct.ext4_super_block* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ext4_get_group_no_and_offset(%struct.super_block* %52, i32 %53, i32* %11, i32* %10)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.super_block*, %struct.super_block** %4, align 8
  %58 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %59 = call i32 @setup_new_flex_group_blocks(%struct.super_block* %57, %struct.ext4_new_flex_group_data* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %215

63:                                               ; preds = %42
  store i32 3, i32* %16, align 4
  %64 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %65 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %67)
  %69 = call i64 @DIV_ROUND_UP(i32 %66, i32 %68)
  %70 = add nsw i64 1, %69
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load %struct.super_block*, %struct.super_block** %4, align 8
  %79 = load i32, i32* @EXT4_HT_RESIZE, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32* @ext4_journal_start_sb(%struct.super_block* %78, i32 %79, i32 %80)
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i64 @IS_ERR(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %63
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @PTR_ERR(i32* %86)
  store i32 %87, i32* %14, align 4
  br label %215

88:                                               ; preds = %63
  %89 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %90 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = call i32 @BUFFER_TRACE(%struct.TYPE_5__* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %93 = load i32*, i32** %12, align 8
  %94 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %95 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 @ext4_journal_get_write_access(i32* %93, %struct.TYPE_5__* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %141

101:                                              ; preds = %88
  %102 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %103 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %110 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %108, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  %115 = load i32*, i32** %12, align 8
  %116 = load %struct.super_block*, %struct.super_block** %4, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %120 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ext4_add_new_descs(i32* %115, %struct.super_block* %116, i32 %117, %struct.inode* %118, i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %101
  br label %141

126:                                              ; preds = %101
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.super_block*, %struct.super_block** %4, align 8
  %129 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %130 = call i32 @ext4_setup_new_descs(i32* %127, %struct.super_block* %128, %struct.ext4_new_flex_group_data* %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %141

134:                                              ; preds = %126
  %135 = load %struct.super_block*, %struct.super_block** %4, align 8
  %136 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %137 = call i32 @ext4_update_super(%struct.super_block* %135, %struct.ext4_new_flex_group_data* %136)
  %138 = load i32*, i32** %12, align 8
  %139 = load %struct.super_block*, %struct.super_block** %4, align 8
  %140 = call i32 @ext4_handle_dirty_super(i32* %138, %struct.super_block* %139)
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %134, %133, %125, %100
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @ext4_journal_stop(i32* %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %146, %141
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %214, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.super_block*, %struct.super_block** %4, align 8
  %154 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %153)
  %155 = sdiv i32 %152, %154
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %158 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %156, %159
  %161 = sub nsw i32 %160, 1
  %162 = load %struct.super_block*, %struct.super_block** %4, align 8
  %163 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %162)
  %164 = sdiv i32 %161, %163
  store i32 %164, i32* %18, align 4
  %165 = load %struct.super_block*, %struct.super_block** %4, align 8
  %166 = call i32 @ext4_has_feature_meta_bg(%struct.super_block* %165)
  store i32 %166, i32* %19, align 4
  store i64 0, i64* %20, align 8
  %167 = load %struct.super_block*, %struct.super_block** %4, align 8
  %168 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %169 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %168, i32 0, i32 2
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  %174 = bitcast %struct.ext4_super_block* %173 to i8*
  %175 = call i32 @update_backups(%struct.super_block* %167, i64 %172, i8* %174, i32 4, i32 0)
  br label %176

176:                                              ; preds = %210, %151
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %18, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %213

180:                                              ; preds = %176
  %181 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %182 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %181, i32 0, i32 1
  %183 = load %struct.buffer_head**, %struct.buffer_head*** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %183, i64 %185
  %187 = load %struct.buffer_head*, %struct.buffer_head** %186, align 8
  store %struct.buffer_head* %187, %struct.buffer_head** %21, align 8
  %188 = load i64, i64* %20, align 8
  %189 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %190 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %188, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %180
  br label %210

194:                                              ; preds = %180
  %195 = load %struct.super_block*, %struct.super_block** %4, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %197 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %200 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %203 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %19, align 4
  %206 = call i32 @update_backups(%struct.super_block* %195, i64 %198, i8* %201, i32 %204, i32 %205)
  %207 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %208 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %20, align 8
  br label %210

210:                                              ; preds = %194, %193
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  br label %176

213:                                              ; preds = %176
  br label %214

214:                                              ; preds = %213, %148
  br label %215

215:                                              ; preds = %214, %85, %62
  %216 = load i32, i32* %14, align 4
  ret i32 %216
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local i32 @ext4_get_group_no_and_offset(%struct.super_block*, i32, i32*, i32*) #1

declare dso_local i32 @setup_new_flex_group_blocks(%struct.super_block*, %struct.ext4_new_flex_group_data*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32* @ext4_journal_start_sb(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ext4_add_new_descs(i32*, %struct.super_block*, i32, %struct.inode*, i32) #1

declare dso_local i32 @ext4_setup_new_descs(i32*, %struct.super_block*, %struct.ext4_new_flex_group_data*) #1

declare dso_local i32 @ext4_update_super(%struct.super_block*, %struct.ext4_new_flex_group_data*) #1

declare dso_local i32 @ext4_handle_dirty_super(i32*, %struct.super_block*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_has_feature_meta_bg(%struct.super_block*) #1

declare dso_local i32 @update_backups(%struct.super_block*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
