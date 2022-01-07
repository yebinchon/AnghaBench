; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_delete_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_delete_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i64, i32, i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_dent_node = type { i8*, i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_ino_node = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32, i32 }

@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@UBIFS_DENT_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BASEHD = common dso_local global i64 0, align 8
@UBIFS_XENT_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_delete_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.inode* %2, %struct.fscrypt_name* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fscrypt_name*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_dent_node*, align 8
  %19 = alloca %struct.ubifs_ino_node*, align 8
  %20 = alloca %union.ubifs_key, align 4
  %21 = alloca %union.ubifs_key, align 4
  %22 = alloca %union.ubifs_key, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ubifs_inode*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.fscrypt_name* %3, %struct.fscrypt_name** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call i32 @IS_DIRSYNC(%struct.inode* %28)
  store i32 %29, i32* %23, align 4
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %30)
  store %struct.ubifs_inode* %31, %struct.ubifs_inode** %24, align 8
  %32 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %25, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %26, align 8
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ubifs_assert(%struct.ubifs_info* %36, i32 %41)
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %44 = load %struct.ubifs_inode*, %struct.ubifs_inode** %24, align 8
  %45 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %44, i32 0, i32 4
  %46 = call i32 @mutex_is_locked(i32* %45)
  %47 = call i32 @ubifs_assert(%struct.ubifs_info* %43, i32 %46)
  %48 = load i32, i32* @UBIFS_DENT_NODE_SZ, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %51 = call i64 @fname_len(%struct.fscrypt_name* %50)
  %52 = add i64 %49, %51
  %53 = add i64 %52, 1
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ALIGN(i32 %55, i32 8)
  store i32 %56, i32* %16, align 4
  %57 = load %struct.ubifs_inode*, %struct.ubifs_inode** %24, align 8
  %58 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @ALIGN(i32 %65, i32 8)
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %70 = call i32 @ubifs_auth_node_sz(%struct.ubifs_info* %69)
  %71 = add nsw i32 %68, %70
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @GFP_NOFS, align 4
  %74 = call %struct.ubifs_dent_node* @kzalloc(i32 %72, i32 %73)
  store %struct.ubifs_dent_node* %74, %struct.ubifs_dent_node** %18, align 8
  %75 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %76 = icmp ne %struct.ubifs_dent_node* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %4
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %288

80:                                               ; preds = %4
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %82 = load i64, i64* @BASEHD, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @make_reservation(%struct.ubifs_info* %81, i64 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %89 = call i32 @kfree(%struct.ubifs_dent_node* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %288

91:                                               ; preds = %80
  %92 = load i32, i32* @UBIFS_XENT_NODE, align 4
  %93 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %94 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %101 = call i32 @xent_key_init(%struct.ubifs_info* %96, %union.ubifs_key* %20, i32 %99, %struct.fscrypt_name* %100)
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %103 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %104 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @key_write(%struct.ubifs_info* %102, %union.ubifs_key* %20, i32 %105)
  %107 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %108 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @get_dent_type(i32 %111)
  %113 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %114 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %116 = call i64 @fname_len(%struct.fscrypt_name* %115)
  %117 = call i32 @cpu_to_le16(i64 %116)
  %118 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %119 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %121 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %124 = call i32 @fname_name(%struct.fscrypt_name* %123)
  %125 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %126 = call i64 @fname_len(%struct.fscrypt_name* %125)
  %127 = call i32 @memcpy(i8* %122, i32 %124, i64 %126)
  %128 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %129 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %132 = call i64 @fname_len(%struct.fscrypt_name* %131)
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %135 = call i32 @zero_dent_node_unused(%struct.ubifs_dent_node* %134)
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %137 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @ubifs_prep_grp_node(%struct.ubifs_info* %136, %struct.ubifs_dent_node* %137, i32 %138, i32 0)
  %140 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %141 = bitcast %struct.ubifs_dent_node* %140 to i8*
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr i8, i8* %141, i64 %143
  %145 = bitcast i8* %144 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %145, %struct.ubifs_ino_node** %19, align 8
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %147 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %19, align 8
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = call i32 @pack_inode(%struct.ubifs_info* %146, %struct.ubifs_ino_node* %147, %struct.inode* %148, i32 0)
  %150 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %19, align 8
  %151 = bitcast %struct.ubifs_ino_node* %150 to i8*
  %152 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr i8, i8* %151, i64 %153
  %155 = bitcast i8* %154 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %155, %struct.ubifs_ino_node** %19, align 8
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %157 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %19, align 8
  %158 = load %struct.inode*, %struct.inode** %7, align 8
  %159 = call i32 @pack_inode(%struct.ubifs_info* %156, %struct.ubifs_ino_node* %157, %struct.inode* %158, i32 1)
  %160 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %161 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %19, align 8
  %162 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %160, %struct.ubifs_ino_node* %161, i32* %35)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %91
  br label %275

166:                                              ; preds = %91
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %168 = load i64, i64* @BASEHD, align 8
  %169 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %23, align 4
  %172 = call i32 @write_head(%struct.ubifs_info* %167, i64 %168, %struct.ubifs_dent_node* %169, i32 %170, i32* %14, i32* %15, i32 %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %23, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %189, label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %175
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %180 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i64, i64* @BASEHD, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load %struct.inode*, %struct.inode** %7, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @ubifs_wbuf_add_ino_nolock(i32* %184, i32 %187)
  br label %189

189:                                              ; preds = %178, %175, %166
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %191 = load i64, i64* @BASEHD, align 8
  %192 = call i32 @release_head(%struct.ubifs_info* %190, i64 %191)
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @ubifs_add_auth_dirt(%struct.ubifs_info* %193, i32 %194)
  %196 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %197 = call i32 @kfree(%struct.ubifs_dent_node* %196)
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %281

201:                                              ; preds = %189
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %203 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %204 = call i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %202, %union.ubifs_key* %20, %struct.fscrypt_name* %203)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %281

208:                                              ; preds = %201
  %209 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %209, i32 %210, i32 %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %281

216:                                              ; preds = %208
  %217 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %218 = load %struct.inode*, %struct.inode** %8, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @lowest_ino_key(%struct.ubifs_info* %217, %union.ubifs_key* %21, i32 %220)
  %222 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %223 = load %struct.inode*, %struct.inode** %8, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @highest_ino_key(%struct.ubifs_info* %222, %union.ubifs_key* %22, i32 %225)
  %227 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %228 = call i32 @ubifs_tnc_remove_range(%struct.ubifs_info* %227, %union.ubifs_key* %21, %union.ubifs_key* %22)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %216
  br label %281

232:                                              ; preds = %216
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %236 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %233, i32 %234, i32 %235)
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %281

240:                                              ; preds = %232
  %241 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %242 = load %struct.inode*, %struct.inode** %7, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @ino_key_init(%struct.ubifs_info* %241, %union.ubifs_key* %21, i32 %244)
  %246 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %248, %249
  %251 = load i32, i32* %12, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* %12, align 4
  %254 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %246, %union.ubifs_key* %21, i32 %247, i32 %252, i32 %253, i32* %35)
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %240
  br label %281

258:                                              ; preds = %240
  %259 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %260 = call i32 @finish_reservation(%struct.ubifs_info* %259)
  %261 = load %struct.ubifs_inode*, %struct.ubifs_inode** %24, align 8
  %262 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %261, i32 0, i32 1
  %263 = call i32 @spin_lock(i32* %262)
  %264 = load %struct.ubifs_inode*, %struct.ubifs_inode** %24, align 8
  %265 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ubifs_inode*, %struct.ubifs_inode** %24, align 8
  %268 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 4
  %269 = load %struct.ubifs_inode*, %struct.ubifs_inode** %24, align 8
  %270 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %269, i32 0, i32 1
  %271 = call i32 @spin_unlock(i32* %270)
  %272 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %273 = load %struct.ubifs_inode*, %struct.ubifs_inode** %24, align 8
  %274 = call i32 @mark_inode_clean(%struct.ubifs_info* %272, %struct.ubifs_inode* %273)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %288

275:                                              ; preds = %165
  %276 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %18, align 8
  %277 = call i32 @kfree(%struct.ubifs_dent_node* %276)
  %278 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %279 = load i64, i64* @BASEHD, align 8
  %280 = call i32 @release_head(%struct.ubifs_info* %278, i64 %279)
  br label %281

281:                                              ; preds = %275, %257, %239, %231, %215, %207, %200
  %282 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %283 = load i32, i32* %10, align 4
  %284 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %282, i32 %283)
  %285 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %286 = call i32 @finish_reservation(%struct.ubifs_info* %285)
  %287 = load i32, i32* %10, align 4
  store i32 %287, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %288

288:                                              ; preds = %281, %258, %87, %77
  %289 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %289)
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i32 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_auth_node_sz(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_dent_node* @kzalloc(i32, i32) #1

declare dso_local i32 @make_reservation(%struct.ubifs_info*, i64, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @key_write(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @get_dent_type(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @fname_name(%struct.fscrypt_name*) #1

declare dso_local i32 @zero_dent_node_unused(%struct.ubifs_dent_node*) #1

declare dso_local i32 @ubifs_prep_grp_node(%struct.ubifs_info*, %struct.ubifs_dent_node*, i32, i32) #1

declare dso_local i32 @pack_inode(%struct.ubifs_info*, %struct.ubifs_ino_node*, %struct.inode*, i32) #1

declare dso_local i32 @ubifs_node_calc_hash(%struct.ubifs_info*, %struct.ubifs_ino_node*, i32*) #1

declare dso_local i32 @write_head(%struct.ubifs_info*, i64, %struct.ubifs_dent_node*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ubifs_wbuf_add_ino_nolock(i32*, i32) #1

declare dso_local i32 @release_head(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_add_auth_dirt(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @lowest_ino_key(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @highest_ino_key(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_remove_range(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32, i32*) #1

declare dso_local i32 @finish_reservation(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_inode_clean(%struct.ubifs_info*, %struct.ubifs_inode*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
