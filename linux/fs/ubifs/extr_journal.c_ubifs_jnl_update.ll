; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32 }
%struct.fscrypt_name = type { i32, i32 }
%struct.inode = type { i64, i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32, i32, i32 }
%struct.ubifs_dent_node = type { i8*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_ino_node = type { i8*, i32, i32, i32, i32, %struct.TYPE_3__ }
%union.ubifs_key = type { i32 }

@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@UBIFS_DENT_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BASEHD = common dso_local global i64 0, align 8
@UBIFS_DENT_NODE = common dso_local global i32 0, align 4
@UBIFS_XENT_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_update(%struct.ubifs_info* %0, %struct.inode* %1, %struct.fscrypt_name* %2, %struct.inode* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.fscrypt_name*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ubifs_inode*, align 8
  %26 = alloca %struct.ubifs_inode*, align 8
  %27 = alloca %struct.ubifs_dent_node*, align 8
  %28 = alloca %struct.ubifs_ino_node*, align 8
  %29 = alloca %union.ubifs_key, align 4
  %30 = alloca %union.ubifs_key, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = call i32 @IS_DIRSYNC(%struct.inode* %37)
  store i32 %38, i32* %23, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %6
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br label %46

46:                                               ; preds = %41, %6
  %47 = phi i1 [ false, %6 ], [ %45, %41 ]
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %24, align 4
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %51)
  store %struct.ubifs_inode* %52, %struct.ubifs_inode** %25, align 8
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %53)
  store %struct.ubifs_inode* %54, %struct.ubifs_inode** %26, align 8
  %55 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %31, align 8
  %58 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %32, align 8
  %59 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %33, align 8
  %62 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %63 = zext i32 %62 to i64
  %64 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %34, align 8
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 5
  %68 = call i32 @mutex_is_locked(i32* %67)
  %69 = call i32 @ubifs_assert(%struct.ubifs_info* %65, i32 %68)
  %70 = load i32, i32* @UBIFS_DENT_NODE_SZ, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %73 = call i64 @fname_len(%struct.fscrypt_name* %72)
  %74 = add i64 %71, %73
  %75 = add i64 %74, 1
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %24, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %46
  %81 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %82 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %16, align 4
  %86 = load %struct.inode*, %struct.inode** %11, align 8
  %87 = call i32 @IS_SYNC(%struct.inode* %86)
  %88 = load i32, i32* %23, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %23, align 4
  br label %90

90:                                               ; preds = %80, %46
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @ALIGN(i32 %91, i32 8)
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @ALIGN(i32 %93, i32 8)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %22, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %17, align 4
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %101 = call i64 @ubifs_authenticated(%struct.ubifs_info* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %90
  %104 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %105 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ALIGN(i32 %106, i32 8)
  %108 = sext i32 %107 to i64
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %110 = call i64 @ubifs_auth_node_sz(%struct.ubifs_info* %109)
  %111 = add nsw i64 %108, %110
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %17, align 4
  br label %122

116:                                              ; preds = %90
  %117 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %118 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %116, %103
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @GFP_NOFS, align 4
  %125 = call %struct.ubifs_ino_node* @kzalloc(i32 %123, i32 %124)
  %126 = bitcast %struct.ubifs_ino_node* %125 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %126, %struct.ubifs_dent_node** %27, align 8
  %127 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %128 = icmp ne %struct.ubifs_dent_node* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  store i32 1, i32* %35, align 4
  br label %479

132:                                              ; preds = %122
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %134 = load i64, i64* @BASEHD, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @make_reservation(%struct.ubifs_info* %133, i64 %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %451

140:                                              ; preds = %132
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %169, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @UBIFS_DENT_NODE, align 4
  %145 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %146 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %149 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %143
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %154 = load %struct.inode*, %struct.inode** %9, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %158 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dent_key_init_hash(%struct.ubifs_info* %153, %union.ubifs_key* %29, i32 %156, i32 %159)
  br label %168

161:                                              ; preds = %143
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %163 = load %struct.inode*, %struct.inode** %9, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %167 = call i32 @dent_key_init(%struct.ubifs_info* %162, %union.ubifs_key* %29, i32 %165, %struct.fscrypt_name* %166)
  br label %168

168:                                              ; preds = %161, %152
  br label %180

169:                                              ; preds = %140
  %170 = load i32, i32* @UBIFS_XENT_NODE, align 4
  %171 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %172 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %175 = load %struct.inode*, %struct.inode** %9, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %179 = call i32 @xent_key_init(%struct.ubifs_info* %174, %union.ubifs_key* %29, i32 %177, %struct.fscrypt_name* %178)
  br label %180

180:                                              ; preds = %169, %168
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %182 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %183 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @key_write(%struct.ubifs_info* %181, %union.ubifs_key* %29, i32 %184)
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %194

189:                                              ; preds = %180
  %190 = load %struct.inode*, %struct.inode** %11, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @cpu_to_le64(i32 %192)
  br label %194

194:                                              ; preds = %189, %188
  %195 = phi i32 [ 0, %188 ], [ %193, %189 ]
  %196 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %197 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load %struct.inode*, %struct.inode** %11, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @get_dent_type(i32 %200)
  %202 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %203 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %205 = call i64 @fname_len(%struct.fscrypt_name* %204)
  %206 = call i32 @cpu_to_le16(i64 %205)
  %207 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %208 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %210 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %213 = call i32 @fname_name(%struct.fscrypt_name* %212)
  %214 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %215 = call i64 @fname_len(%struct.fscrypt_name* %214)
  %216 = call i32 @memcpy(i8* %211, i32 %213, i64 %215)
  %217 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %218 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %221 = call i64 @fname_len(%struct.fscrypt_name* %220)
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  store i8 0, i8* %222, align 1
  %223 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %224 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %225 = bitcast %struct.ubifs_dent_node* %224 to %struct.ubifs_ino_node*
  %226 = call i32 @set_dent_cookie(%struct.ubifs_info* %223, %struct.ubifs_ino_node* %225)
  %227 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %228 = bitcast %struct.ubifs_dent_node* %227 to %struct.ubifs_ino_node*
  %229 = call i32 @zero_dent_node_unused(%struct.ubifs_ino_node* %228)
  %230 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %231 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %232 = bitcast %struct.ubifs_dent_node* %231 to %struct.ubifs_ino_node*
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @ubifs_prep_grp_node(%struct.ubifs_info* %230, %struct.ubifs_ino_node* %232, i32 %233, i32 0)
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %236 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %237 = bitcast %struct.ubifs_dent_node* %236 to %struct.ubifs_ino_node*
  %238 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %235, %struct.ubifs_ino_node* %237, i32* %58)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %194
  br label %456

242:                                              ; preds = %194
  %243 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %244 = bitcast %struct.ubifs_dent_node* %243 to i8*
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr i8, i8* %244, i64 %246
  %248 = bitcast i8* %247 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %248, %struct.ubifs_ino_node** %28, align 8
  %249 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %250 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %251 = load %struct.inode*, %struct.inode** %11, align 8
  %252 = call i32 @pack_inode(%struct.ubifs_info* %249, %struct.ubifs_ino_node* %250, %struct.inode* %251, i32 0)
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %254 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %255 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %253, %struct.ubifs_ino_node* %254, i32* %61)
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %242
  br label %456

259:                                              ; preds = %242
  %260 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %261 = bitcast %struct.ubifs_ino_node* %260 to i8*
  %262 = load i32, i32* %22, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr i8, i8* %261, i64 %263
  %265 = bitcast i8* %264 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %265, %struct.ubifs_ino_node** %28, align 8
  %266 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %267 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %268 = load %struct.inode*, %struct.inode** %9, align 8
  %269 = call i32 @pack_inode(%struct.ubifs_info* %266, %struct.ubifs_ino_node* %267, %struct.inode* %268, i32 1)
  %270 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %271 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %28, align 8
  %272 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %270, %struct.ubifs_ino_node* %271, i32* %64)
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %259
  br label %456

276:                                              ; preds = %259
  %277 = load i32, i32* %24, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %297

279:                                              ; preds = %276
  %280 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %281 = load %struct.inode*, %struct.inode** %11, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @ubifs_add_orphan(%struct.ubifs_info* %280, i32 %283)
  store i32 %284, i32* %14, align 4
  %285 = load i32, i32* %14, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %279
  %288 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %289 = load i64, i64* @BASEHD, align 8
  %290 = call i32 @release_head(%struct.ubifs_info* %288, i64 %289)
  br label %448

291:                                              ; preds = %279
  %292 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %293 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %296 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %295, i32 0, i32 4
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %291, %276
  %298 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %299 = load i64, i64* @BASEHD, align 8
  %300 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %301 = bitcast %struct.ubifs_dent_node* %300 to %struct.ubifs_ino_node*
  %302 = load i32, i32* %17, align 4
  %303 = load i32, i32* %23, align 4
  %304 = call i32 @write_head(%struct.ubifs_info* %298, i64 %299, %struct.ubifs_ino_node* %301, i32 %302, i32* %18, i32* %20, i32 %303)
  store i32 %304, i32* %14, align 4
  %305 = load i32, i32* %14, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %297
  br label %456

308:                                              ; preds = %297
  %309 = load i32, i32* %23, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %328, label %311

311:                                              ; preds = %308
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %313 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %312, i32 0, i32 0
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = load i64, i64* @BASEHD, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  store %struct.ubifs_wbuf* %317, %struct.ubifs_wbuf** %36, align 8
  %318 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %36, align 8
  %319 = load %struct.inode*, %struct.inode** %11, align 8
  %320 = getelementptr inbounds %struct.inode, %struct.inode* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf* %318, i32 %321)
  %323 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %36, align 8
  %324 = load %struct.inode*, %struct.inode** %9, align 8
  %325 = getelementptr inbounds %struct.inode, %struct.inode* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf* %323, i32 %326)
  br label %328

328:                                              ; preds = %311, %308
  %329 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %330 = load i64, i64* @BASEHD, align 8
  %331 = call i32 @release_head(%struct.ubifs_info* %329, i64 %330)
  %332 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %333 = bitcast %struct.ubifs_dent_node* %332 to %struct.ubifs_ino_node*
  %334 = call i32 @kfree(%struct.ubifs_ino_node* %333)
  %335 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %336 = load i32, i32* %18, align 4
  %337 = call i32 @ubifs_add_auth_dirt(%struct.ubifs_info* %335, i32 %336)
  %338 = load i32, i32* %12, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %364

340:                                              ; preds = %328
  %341 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %342 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %347 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %348 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @ubifs_tnc_remove_dh(%struct.ubifs_info* %346, %union.ubifs_key* %29, i32 %349)
  store i32 %350, i32* %14, align 4
  br label %355

351:                                              ; preds = %340
  %352 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %353 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %354 = call i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %352, %union.ubifs_key* %29, %struct.fscrypt_name* %353)
  store i32 %354, i32* %14, align 4
  br label %355

355:                                              ; preds = %351, %345
  %356 = load i32, i32* %14, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  br label %463

359:                                              ; preds = %355
  %360 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* %15, align 4
  %363 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %360, i32 %361, i32 %362)
  store i32 %363, i32* %14, align 4
  br label %371

364:                                              ; preds = %328
  %365 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %366 = load i32, i32* %18, align 4
  %367 = load i32, i32* %20, align 4
  %368 = load i32, i32* %15, align 4
  %369 = load %struct.fscrypt_name*, %struct.fscrypt_name** %10, align 8
  %370 = call i32 @ubifs_tnc_add_nm(%struct.ubifs_info* %365, %union.ubifs_key* %29, i32 %366, i32 %367, i32 %368, i32* %58, %struct.fscrypt_name* %369)
  store i32 %370, i32* %14, align 4
  br label %371

371:                                              ; preds = %364, %359
  %372 = load i32, i32* %14, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %371
  br label %463

375:                                              ; preds = %371
  %376 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %377 = load %struct.inode*, %struct.inode** %11, align 8
  %378 = getelementptr inbounds %struct.inode, %struct.inode* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @ino_key_init(%struct.ubifs_info* %376, %union.ubifs_key* %30, i32 %379)
  %381 = load i32, i32* %20, align 4
  %382 = load i32, i32* %21, align 4
  %383 = add nsw i32 %381, %382
  store i32 %383, i32* %19, align 4
  %384 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %385 = load i32, i32* %18, align 4
  %386 = load i32, i32* %19, align 4
  %387 = load i32, i32* %16, align 4
  %388 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %384, %union.ubifs_key* %30, i32 %385, i32 %386, i32 %387, i32* %61)
  store i32 %388, i32* %14, align 4
  %389 = load i32, i32* %14, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %375
  br label %463

392:                                              ; preds = %375
  %393 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %394 = load %struct.inode*, %struct.inode** %9, align 8
  %395 = getelementptr inbounds %struct.inode, %struct.inode* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @ino_key_init(%struct.ubifs_info* %393, %union.ubifs_key* %30, i32 %396)
  %398 = load i32, i32* %22, align 4
  %399 = load i32, i32* %19, align 4
  %400 = add nsw i32 %399, %398
  store i32 %400, i32* %19, align 4
  %401 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* %19, align 4
  %404 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %405 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %406 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = add nsw i32 %404, %407
  %409 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %401, %union.ubifs_key* %30, i32 %402, i32 %403, i32 %408, i32* %64)
  store i32 %409, i32* %14, align 4
  %410 = load i32, i32* %14, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %392
  br label %463

413:                                              ; preds = %392
  %414 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %415 = call i32 @finish_reservation(%struct.ubifs_info* %414)
  %416 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %417 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %416, i32 0, i32 1
  %418 = call i32 @spin_lock(i32* %417)
  %419 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %420 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %423 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %422, i32 0, i32 3
  store i32 %421, i32* %423, align 4
  %424 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %425 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %424, i32 0, i32 1
  %426 = call i32 @spin_unlock(i32* %425)
  %427 = load i32, i32* %13, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %441

429:                                              ; preds = %413
  %430 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %431 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %430, i32 0, i32 1
  %432 = call i32 @spin_lock(i32* %431)
  %433 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %434 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %437 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %436, i32 0, i32 3
  store i32 %435, i32* %437, align 4
  %438 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %439 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %438, i32 0, i32 1
  %440 = call i32 @spin_unlock(i32* %439)
  br label %441

441:                                              ; preds = %429, %413
  %442 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %443 = load %struct.ubifs_inode*, %struct.ubifs_inode** %25, align 8
  %444 = call i32 @mark_inode_clean(%struct.ubifs_info* %442, %struct.ubifs_inode* %443)
  %445 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %446 = load %struct.ubifs_inode*, %struct.ubifs_inode** %26, align 8
  %447 = call i32 @mark_inode_clean(%struct.ubifs_info* %445, %struct.ubifs_inode* %446)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %35, align 4
  br label %479

448:                                              ; preds = %287
  %449 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %450 = call i32 @finish_reservation(%struct.ubifs_info* %449)
  br label %451

451:                                              ; preds = %448, %139
  %452 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %453 = bitcast %struct.ubifs_dent_node* %452 to %struct.ubifs_ino_node*
  %454 = call i32 @kfree(%struct.ubifs_ino_node* %453)
  %455 = load i32, i32* %14, align 4
  store i32 %455, i32* %7, align 4
  store i32 1, i32* %35, align 4
  br label %479

456:                                              ; preds = %307, %275, %258, %241
  %457 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %458 = load i64, i64* @BASEHD, align 8
  %459 = call i32 @release_head(%struct.ubifs_info* %457, i64 %458)
  %460 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %27, align 8
  %461 = bitcast %struct.ubifs_dent_node* %460 to %struct.ubifs_ino_node*
  %462 = call i32 @kfree(%struct.ubifs_ino_node* %461)
  br label %463

463:                                              ; preds = %456, %412, %391, %374, %358
  %464 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %465 = load i32, i32* %14, align 4
  %466 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %464, i32 %465)
  %467 = load i32, i32* %24, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %463
  %470 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %471 = load %struct.inode*, %struct.inode** %11, align 8
  %472 = getelementptr inbounds %struct.inode, %struct.inode* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @ubifs_delete_orphan(%struct.ubifs_info* %470, i32 %473)
  br label %475

475:                                              ; preds = %469, %463
  %476 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %477 = call i32 @finish_reservation(%struct.ubifs_info* %476)
  %478 = load i32, i32* %14, align 4
  store i32 %478, i32* %7, align 4
  store i32 1, i32* %35, align 4
  br label %479

479:                                              ; preds = %475, %451, %441, %129
  %480 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %480)
  %481 = load i32, i32* %7, align 4
  ret i32 %481
}

declare dso_local i32 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ubifs_authenticated(%struct.ubifs_info*) #1

declare dso_local i64 @ubifs_auth_node_sz(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_ino_node* @kzalloc(i32, i32) #1

declare dso_local i32 @make_reservation(%struct.ubifs_info*, i64, i32) #1

declare dso_local i32 @dent_key_init_hash(%struct.ubifs_info*, %union.ubifs_key*, i32, i32) #1

declare dso_local i32 @dent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @key_write(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @get_dent_type(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @fname_name(%struct.fscrypt_name*) #1

declare dso_local i32 @set_dent_cookie(%struct.ubifs_info*, %struct.ubifs_ino_node*) #1

declare dso_local i32 @zero_dent_node_unused(%struct.ubifs_ino_node*) #1

declare dso_local i32 @ubifs_prep_grp_node(%struct.ubifs_info*, %struct.ubifs_ino_node*, i32, i32) #1

declare dso_local i32 @ubifs_node_calc_hash(%struct.ubifs_info*, %struct.ubifs_ino_node*, i32*) #1

declare dso_local i32 @pack_inode(%struct.ubifs_info*, %struct.ubifs_ino_node*, %struct.inode*, i32) #1

declare dso_local i32 @ubifs_add_orphan(%struct.ubifs_info*, i32) #1

declare dso_local i32 @release_head(%struct.ubifs_info*, i64) #1

declare dso_local i32 @write_head(%struct.ubifs_info*, i64, %struct.ubifs_ino_node*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf*, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_ino_node*) #1

declare dso_local i32 @ubifs_add_auth_dirt(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_tnc_remove_dh(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_tnc_add_nm(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32, i32*, %struct.fscrypt_name*) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32, i32*) #1

declare dso_local i32 @finish_reservation(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_inode_clean(%struct.ubifs_info*, %struct.ubifs_inode*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_delete_orphan(%struct.ubifs_info*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
