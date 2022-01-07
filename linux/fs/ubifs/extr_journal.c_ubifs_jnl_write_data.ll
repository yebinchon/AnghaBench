; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_4__*, %struct.ubifs_data_node* }
%struct.TYPE_4__ = type { i32 }
%struct.ubifs_data_node = type { i32, i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_inode = type { i32, i32 }

@COMPRESSED_DATA_NODE_BUF_SZ = common dso_local global i32 0, align 4
@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ino %lu, blk %u, len %d, key \00", align 1
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_CIPHER_BLOCK_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE = common dso_local global i32 0, align 4
@UBIFS_COMPR_FL = common dso_local global i32 0, align 4
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE_SZ = common dso_local global i32 0, align 4
@DATAHD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_write_data(%struct.ubifs_info* %0, %struct.inode* %1, %union.ubifs_key* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_data_node*, align 8
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
  %23 = alloca %struct.ubifs_inode*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %union.ubifs_key* %2, %union.ubifs_key** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load i32, i32* @COMPRESSED_DATA_NODE_BUF_SZ, align 4
  store i32 %28, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %29)
  store %struct.ubifs_inode* %30, %struct.ubifs_inode** %23, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @ubifs_crypt_is_encrypted(%struct.inode* %31)
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %25, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  %37 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %39 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %40 = call i64 @key_inum(%struct.ubifs_info* %38, %union.ubifs_key* %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %42 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %43 = call i32 @key_block(%struct.ubifs_info* %41, %union.ubifs_key* %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @dbg_jnlk(%union.ubifs_key* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %43, i32 %44)
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %49 = icmp sle i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ubifs_assert(%struct.ubifs_info* %46, i32 %50)
  %52 = load i32, i32* %24, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %5
  %55 = load i64, i64* @UBIFS_CIPHER_BLOCK_SIZE, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %20, align 4
  br label %60

60:                                               ; preds = %54, %5
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %62 = call i32 @ubifs_auth_node_sz(%struct.ubifs_info* %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @GFP_NOFS, align 4
  %67 = load i32, i32* @__GFP_NOWARN, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.ubifs_data_node* @kmalloc(i32 %65, i32 %68)
  store %struct.ubifs_data_node* %69, %struct.ubifs_data_node** %12, align 8
  %70 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %71 = icmp ne %struct.ubifs_data_node* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %60
  store i32 0, i32* %21, align 4
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 0
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 2
  %78 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %77, align 8
  store %struct.ubifs_data_node* %78, %struct.ubifs_data_node** %12, align 8
  br label %79

79:                                               ; preds = %72, %60
  %80 = load i32, i32* @UBIFS_DATA_NODE, align 4
  %81 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %82 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %85 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %86 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %87 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %86, i32 0, i32 4
  %88 = call i32 @key_write(%struct.ubifs_info* %84, %union.ubifs_key* %85, i32* %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %92 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ubifs_inode*, %struct.ubifs_inode** %23, align 8
  %94 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @UBIFS_COMPR_FL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %79
  %100 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  store i32 %100, i32* %16, align 4
  br label %105

101:                                              ; preds = %79
  %102 = load %struct.ubifs_inode*, %struct.ubifs_inode** %23, align 8
  %103 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %101, %99
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %18, align 4
  store i32 %108, i32* %17, align 4
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %113 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %112, i32 0, i32 2
  %114 = call i32 @ubifs_compress(%struct.ubifs_info* %109, i8* %110, i32 %111, i32* %113, i32* %18, i32* %16)
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %118 = icmp sle i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @ubifs_assert(%struct.ubifs_info* %115, i32 %119)
  %121 = load i32, i32* %24, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %105
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %128 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %129 = call i32 @key_block(%struct.ubifs_info* %127, %union.ubifs_key* %128)
  %130 = call i32 @ubifs_encrypt(%struct.inode* %124, %struct.ubifs_data_node* %125, i32 %126, i32* %17, i32 %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %234

134:                                              ; preds = %123
  br label %139

135:                                              ; preds = %105
  %136 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %137 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %18, align 4
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %135, %134
  %140 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %20, align 4
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %144 = call i64 @ubifs_authenticated(%struct.ubifs_info* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @ALIGN(i32 %147, i32 8)
  %149 = load i32, i32* %19, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %22, align 4
  br label %153

151:                                              ; preds = %139
  %152 = load i32, i32* %20, align 4
  store i32 %152, i32* %22, align 4
  br label %153

153:                                              ; preds = %151, %146
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @cpu_to_le16(i32 %154)
  %156 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %157 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %159 = load i64, i64* @DATAHD, align 8
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @make_reservation(%struct.ubifs_info* %158, i64 %159, i32 %160)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %234

165:                                              ; preds = %153
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %167 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %168 = load i32, i32* %20, align 4
  %169 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %166, %struct.ubifs_data_node* %167, i32 %168, i32 0)
  %170 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %171 = load i64, i64* @DATAHD, align 8
  %172 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %173 = load i32, i32* %22, align 4
  %174 = call i32 @write_head(%struct.ubifs_info* %170, i64 %171, %struct.ubifs_data_node* %172, i32 %173, i32* %14, i32* %15, i32 0)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  br label %224

178:                                              ; preds = %165
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %180 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %181 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %179, %struct.ubifs_data_node* %180, i32* %36)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %224

185:                                              ; preds = %178
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 1
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i64, i64* @DATAHD, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %193 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %194 = call i64 @key_inum(%struct.ubifs_info* %192, %union.ubifs_key* %193)
  %195 = call i32 @ubifs_wbuf_add_ino_nolock(i32* %191, i64 %194)
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %197 = load i64, i64* @DATAHD, align 8
  %198 = call i32 @release_head(%struct.ubifs_info* %196, i64 %197)
  %199 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @ubifs_add_auth_dirt(%struct.ubifs_info* %199, i32 %200)
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %203 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %20, align 4
  %207 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %202, %union.ubifs_key* %203, i32 %204, i32 %205, i32 %206, i32* %36)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %185
  br label %228

211:                                              ; preds = %185
  %212 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %213 = call i32 @finish_reservation(%struct.ubifs_info* %212)
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %218 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %217, i32 0, i32 0
  %219 = call i32 @mutex_unlock(i32* %218)
  br label %223

220:                                              ; preds = %211
  %221 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %222 = call i32 @kfree(%struct.ubifs_data_node* %221)
  br label %223

223:                                              ; preds = %220, %216
  store i32 0, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %246

224:                                              ; preds = %184, %177
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %226 = load i64, i64* @DATAHD, align 8
  %227 = call i32 @release_head(%struct.ubifs_info* %225, i64 %226)
  br label %228

228:                                              ; preds = %224, %210
  %229 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %229, i32 %230)
  %232 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %233 = call i32 @finish_reservation(%struct.ubifs_info* %232)
  br label %234

234:                                              ; preds = %228, %164, %133
  %235 = load i32, i32* %21, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %239 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %238, i32 0, i32 0
  %240 = call i32 @mutex_unlock(i32* %239)
  br label %244

241:                                              ; preds = %234
  %242 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %12, align 8
  %243 = call i32 @kfree(%struct.ubifs_data_node* %242)
  br label %244

244:                                              ; preds = %241, %237
  %245 = load i32, i32* %13, align 4
  store i32 %245, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %246

246:                                              ; preds = %244, %223
  %247 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %247)
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_crypt_is_encrypted(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dbg_jnlk(%union.ubifs_key*, i8*, i64, i32, i32) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @key_block(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_auth_node_sz(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_data_node* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @key_write(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ubifs_compress(%struct.ubifs_info*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ubifs_encrypt(%struct.inode*, %struct.ubifs_data_node*, i32, i32*, i32) #1

declare dso_local i64 @ubifs_authenticated(%struct.ubifs_info*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @make_reservation(%struct.ubifs_info*, i64, i32) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_data_node*, i32, i32) #1

declare dso_local i32 @write_head(%struct.ubifs_info*, i64, %struct.ubifs_data_node*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ubifs_node_calc_hash(%struct.ubifs_info*, %struct.ubifs_data_node*, i32*) #1

declare dso_local i32 @ubifs_wbuf_add_ino_nolock(i32*, i64) #1

declare dso_local i32 @release_head(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_add_auth_dirt(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32, i32*) #1

declare dso_local i32 @finish_reservation(%struct.ubifs_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_data_node*) #1

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
