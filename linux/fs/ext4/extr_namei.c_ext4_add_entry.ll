; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_dir_entry_2 = type { i32, i64 }
%struct.ext4_sb_info = type { i64 }
%struct.ext4_filename = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ERR_BAD_DX_DIR = common dso_local global i32 0, align 4
@EXT4_INODE_INDEX = common dso_local global i32 0, align 4
@DIRENT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT4_STATE_NEWENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dentry*, %struct.inode*)* @ext4_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_add_entry(i32* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext4_dir_entry_2*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.ext4_sb_info*, align 8
  %13 = alloca %struct.ext4_filename, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.inode* @d_inode(i32 %22)
  store %struct.inode* %23, %struct.inode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  %27 = call i64 @ext4_has_metadata_csum(%struct.super_block* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 4, i32* %19, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %11, align 8
  %34 = load %struct.super_block*, %struct.super_block** %11, align 8
  %35 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %34)
  store %struct.ext4_sb_info* %35, %struct.ext4_sb_info** %12, align 8
  %36 = load %struct.super_block*, %struct.super_block** %11, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %213

47:                                               ; preds = %30
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = call i32 @ext4_fname_setup_filename(%struct.inode* %48, %struct.TYPE_3__* %50, i32 0, %struct.ext4_filename* %13)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %4, align 4
  br label %213

56:                                               ; preds = %47
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i64 @ext4_has_inline_data(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i32 @ext4_try_add_inline_entry(i32* %61, %struct.ext4_filename* %13, %struct.inode* %62, %struct.inode* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %201

68:                                               ; preds = %60
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %201

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i64 @is_dx(%struct.inode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = call i32 @ext4_dx_add_entry(i32* %78, %struct.ext4_filename* %13, %struct.inode* %79, %struct.inode* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %77
  br label %201

89:                                               ; preds = %84
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = load i32, i32* @EXT4_INODE_INDEX, align 4
  %92 = call i32 @ext4_clear_inode_flag(%struct.inode* %90, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = call i32 @ext4_mark_inode_dirty(i32* %95, %struct.inode* %96)
  br label %98

98:                                               ; preds = %89, %73
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.super_block*, %struct.super_block** %11, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %101, %104
  store i32 %105, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %160, %98
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %163

110:                                              ; preds = %106
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* @DIRENT, align 4
  %114 = call %struct.buffer_head* @ext4_read_dirblock(%struct.inode* %111, i32 %112, i32 %113)
  store %struct.buffer_head* %114, %struct.buffer_head** %9, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %116 = icmp eq %struct.buffer_head* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %122 = call %struct.buffer_head* @ext4_bread(i32* %118, %struct.inode* %119, i32 %120, i32 %121)
  store %struct.buffer_head* %122, %struct.buffer_head** %9, align 8
  br label %167

123:                                              ; preds = %110
  %124 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %125 = call i64 @IS_ERR(%struct.buffer_head* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %129 = call i32 @PTR_ERR(%struct.buffer_head* %128)
  store i32 %129, i32* %14, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %201

130:                                              ; preds = %123
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %135 = call i32 @add_dirent_to_buf(i32* %131, %struct.ext4_filename* %13, %struct.inode* %132, %struct.inode* %133, %struct.ext4_dir_entry_2* null, %struct.buffer_head* %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @ENOSPC, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %201

141:                                              ; preds = %130
  %142 = load i32, i32* %18, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = load %struct.super_block*, %struct.super_block** %11, align 8
  %149 = call i64 @ext4_has_feature_dir_index(%struct.super_block* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i32*, i32** %5, align 8
  %153 = load %struct.inode*, %struct.inode** %8, align 8
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %156 = call i32 @make_indexed_dir(i32* %152, %struct.ext4_filename* %13, %struct.inode* %153, %struct.inode* %154, %struct.buffer_head* %155)
  store i32 %156, i32* %14, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %201

157:                                              ; preds = %147, %144, %141
  %158 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %159 = call i32 @brelse(%struct.buffer_head* %158)
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %106

163:                                              ; preds = %106
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.inode*, %struct.inode** %8, align 8
  %166 = call %struct.buffer_head* @ext4_append(i32* %164, %struct.inode* %165, i32* %17)
  store %struct.buffer_head* %166, %struct.buffer_head** %9, align 8
  br label %167

167:                                              ; preds = %163, %117
  %168 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %169 = call i64 @IS_ERR(%struct.buffer_head* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %173 = call i32 @PTR_ERR(%struct.buffer_head* %172)
  store i32 %173, i32* %14, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %201

174:                                              ; preds = %167
  %175 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %176 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %178, %struct.ext4_dir_entry_2** %10, align 8
  %179 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %180 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %19, align 4
  %183 = sub i32 %181, %182
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @ext4_rec_len_to_disk(i32 %183, i32 %184)
  %186 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %187 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %19, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %174
  %191 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @ext4_initialize_dirent_tail(%struct.buffer_head* %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %174
  %195 = load i32*, i32** %5, align 8
  %196 = load %struct.inode*, %struct.inode** %8, align 8
  %197 = load %struct.inode*, %struct.inode** %7, align 8
  %198 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %199 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %200 = call i32 @add_dirent_to_buf(i32* %195, %struct.ext4_filename* %13, %struct.inode* %196, %struct.inode* %197, %struct.ext4_dir_entry_2* %198, %struct.buffer_head* %199)
  store i32 %200, i32* %14, align 4
  br label %201

201:                                              ; preds = %194, %171, %151, %140, %127, %88, %71, %67
  %202 = call i32 @ext4_fname_free_filename(%struct.ext4_filename* %13)
  %203 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %204 = call i32 @brelse(%struct.buffer_head* %203)
  %205 = load i32, i32* %14, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load %struct.inode*, %struct.inode** %7, align 8
  %209 = load i32, i32* @EXT4_STATE_NEWENTRY, align 4
  %210 = call i32 @ext4_set_inode_state(%struct.inode* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %201
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %54, %44
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_fname_setup_filename(%struct.inode*, %struct.TYPE_3__*, i32, %struct.ext4_filename*) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_try_add_inline_entry(i32*, %struct.ext4_filename*, %struct.inode*, %struct.inode*) #1

declare dso_local i64 @is_dx(%struct.inode*) #1

declare dso_local i32 @ext4_dx_add_entry(i32*, %struct.ext4_filename*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_read_dirblock(%struct.inode*, i32, i32) #1

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @add_dirent_to_buf(i32*, %struct.ext4_filename*, %struct.inode*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i64 @ext4_has_feature_dir_index(%struct.super_block*) #1

declare dso_local i32 @make_indexed_dir(i32*, %struct.ext4_filename*, %struct.inode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ext4_append(i32*, %struct.inode*, i32*) #1

declare dso_local i32 @ext4_rec_len_to_disk(i32, i32) #1

declare dso_local i32 @ext4_initialize_dirent_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_fname_free_filename(%struct.ext4_filename*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
