; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { i32 }
%struct.fscrypt_str = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EXT4_N_BLOCKS = common dso_local global i32 0, align 4
@EXT4_XATTR_TRANS_BLOCKS = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@ext4_encrypted_symlink_inode_operations = common dso_local global i32 0, align 4
@ext4_symlink_inode_operations = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@ext4_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ext4_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fscrypt_str, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @EXT4_SB(%struct.TYPE_5__* %18)
  %20 = call i32 @ext4_forced_shutdown(i32 %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %254

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fscrypt_prepare_symlink(%struct.inode* %27, i8* %28, i32 %29, i32 %34, %struct.fscrypt_str* %13)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %254

40:                                               ; preds = %26
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @dquot_initialize(%struct.inode* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %254

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EXT4_N_BLOCKS, align 4
  %51 = mul nsw i32 %50, 4
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_5__* %56)
  %58 = add nsw i32 4, %57
  %59 = load i32, i32* @EXT4_XATTR_TRANS_BLOCKS, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %12, align 4
  br label %69

61:                                               ; preds = %47
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_5__* %64)
  %66 = load i32, i32* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 4
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 3
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %61, %53
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load i32, i32* @S_IFLNK, align 4
  %72 = load i32, i32* @S_IRWXUGO, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 0
  %76 = load i32, i32* @EXT4_HT_DIR, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call %struct.inode* @ext4_new_inode_start_handle(%struct.inode* %70, i32 %73, i32* %75, i32 0, i32* null, i32 %76, i32 %77)
  store %struct.inode* %78, %struct.inode** %9, align 8
  %79 = call %struct.inode* (...) @ext4_journal_current_handle()
  store %struct.inode* %79, %struct.inode** %8, align 8
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call i64 @IS_ERR(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %69
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = icmp ne %struct.inode* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @ext4_journal_stop(%struct.inode* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call i32 @PTR_ERR(%struct.inode* %90)
  store i32 %91, i32* %4, align 4
  br label %254

92:                                               ; preds = %69
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call i64 @IS_ENCRYPTED(%struct.inode* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @fscrypt_encrypt_symlink(%struct.inode* %97, i8* %98, i32 %99, %struct.fscrypt_str* %13)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %230

104:                                              ; preds = %96
  %105 = load %struct.inode*, %struct.inode** %9, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 2
  store i32* @ext4_encrypted_symlink_inode_operations, i32** %106, align 8
  br label %107

107:                                              ; preds = %104, %92
  %108 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @EXT4_N_BLOCKS, align 4
  %111 = mul nsw i32 %110, 4
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %172

113:                                              ; preds = %107
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = call i64 @IS_ENCRYPTED(%struct.inode* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  store i32* @ext4_symlink_inode_operations, i32** %119, align 8
  br label %120

120:                                              ; preds = %117, %113
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = call i32 @inode_nohighmem(%struct.inode* %121)
  %123 = load %struct.inode*, %struct.inode** %9, align 8
  %124 = call i32 @ext4_set_aops(%struct.inode* %123)
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = call i32 @drop_nlink(%struct.inode* %125)
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = load %struct.inode*, %struct.inode** %9, align 8
  %129 = call i32 @ext4_orphan_add(%struct.inode* %127, %struct.inode* %128)
  store i32 %129, i32* %10, align 4
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = call i32 @ext4_journal_stop(%struct.inode* %130)
  store %struct.inode* null, %struct.inode** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %230

135:                                              ; preds = %120
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @__page_symlink(%struct.inode* %136, i8* %138, i32 %140, i32 1)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %230

145:                                              ; preds = %135
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = load i32, i32* @EXT4_HT_DIR, align 4
  %148 = load %struct.inode*, %struct.inode** %5, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 3
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = call i32 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_5__* %150)
  %152 = load i32, i32* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 4
  %153 = add nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = call %struct.inode* @ext4_journal_start(%struct.inode* %146, i32 %147, i32 %154)
  store %struct.inode* %155, %struct.inode** %8, align 8
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = call i64 @IS_ERR(%struct.inode* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %145
  %160 = load %struct.inode*, %struct.inode** %8, align 8
  %161 = call i32 @PTR_ERR(%struct.inode* %160)
  store i32 %161, i32* %10, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  br label %230

162:                                              ; preds = %145
  %163 = load %struct.inode*, %struct.inode** %9, align 8
  %164 = call i32 @set_nlink(%struct.inode* %163, i32 1)
  %165 = load %struct.inode*, %struct.inode** %8, align 8
  %166 = load %struct.inode*, %struct.inode** %9, align 8
  %167 = call i32 @ext4_orphan_del(%struct.inode* %165, %struct.inode* %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %230

171:                                              ; preds = %162
  br label %203

172:                                              ; preds = %107
  %173 = load %struct.inode*, %struct.inode** %9, align 8
  %174 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %175 = call i32 @ext4_clear_inode_flag(%struct.inode* %173, i32 %174)
  %176 = load %struct.inode*, %struct.inode** %9, align 8
  %177 = call i64 @IS_ENCRYPTED(%struct.inode* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %172
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 2
  store i32* @ext4_fast_symlink_inode_operations, i32** %181, align 8
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = bitcast i32* %184 to i8*
  %186 = load %struct.inode*, %struct.inode** %9, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  br label %188

188:                                              ; preds = %179, %172
  %189 = load %struct.inode*, %struct.inode** %9, align 8
  %190 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %189)
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = bitcast i32* %191 to i8*
  %193 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @memcpy(i8* %192, i8* %194, i32 %196)
  %198 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.inode*, %struct.inode** %9, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %188, %171
  %204 = load %struct.inode*, %struct.inode** %9, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.inode*, %struct.inode** %9, align 8
  %208 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %207)
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 4
  %210 = load %struct.inode*, %struct.inode** %8, align 8
  %211 = load %struct.dentry*, %struct.dentry** %6, align 8
  %212 = load %struct.inode*, %struct.inode** %9, align 8
  %213 = call i32 @ext4_add_nondir(%struct.inode* %210, %struct.dentry* %211, %struct.inode* %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %203
  %217 = load %struct.inode*, %struct.inode** %5, align 8
  %218 = call i64 @IS_DIRSYNC(%struct.inode* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load %struct.inode*, %struct.inode** %8, align 8
  %222 = call i32 @ext4_handle_sync(%struct.inode* %221)
  br label %223

223:                                              ; preds = %220, %216, %203
  %224 = load %struct.inode*, %struct.inode** %8, align 8
  %225 = icmp ne %struct.inode* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load %struct.inode*, %struct.inode** %8, align 8
  %228 = call i32 @ext4_journal_stop(%struct.inode* %227)
  br label %229

229:                                              ; preds = %226, %223
  br label %243

230:                                              ; preds = %170, %159, %144, %134, %103
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = icmp ne %struct.inode* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.inode*, %struct.inode** %8, align 8
  %235 = call i32 @ext4_journal_stop(%struct.inode* %234)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load %struct.inode*, %struct.inode** %9, align 8
  %238 = call i32 @clear_nlink(%struct.inode* %237)
  %239 = load %struct.inode*, %struct.inode** %9, align 8
  %240 = call i32 @unlock_new_inode(%struct.inode* %239)
  %241 = load %struct.inode*, %struct.inode** %9, align 8
  %242 = call i32 @iput(%struct.inode* %241)
  br label %243

243:                                              ; preds = %236, %229
  %244 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = icmp ne i8* %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @kfree(i8* %250)
  br label %252

252:                                              ; preds = %248, %243
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %252, %89, %45, %38, %23
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @fscrypt_prepare_symlink(%struct.inode*, i8*, i32, i32, %struct.fscrypt_str*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_5__*) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_5__*) #1

declare dso_local %struct.inode* @ext4_new_inode_start_handle(%struct.inode*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local %struct.inode* @ext4_journal_current_handle(...) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_encrypt_symlink(%struct.inode*, i8*, i32, %struct.fscrypt_str*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @__page_symlink(%struct.inode*, i8*, i32, i32) #1

declare dso_local %struct.inode* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ext4_orphan_del(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_6__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ext4_add_nondir(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
