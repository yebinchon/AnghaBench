; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_cut_from_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_cut_from_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.inode = type { i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.tree_balance = type { i32*, %struct.treepath* }
%struct.item_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CARRY_ON = common dso_local global i32 0, align 4
@M_CONVERT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"PAP-5570: can not convert twice\00", align 1
@M_SKIP_BALANCING = common dso_local global i8 0, align 1
@TYPE_INDIRECT = common dso_local global i32 0, align 4
@POSITION_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PAP-5580\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"item to convert does not exist (%K)\00", align 1
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@cut_from_item_restarted = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"PAP-5610\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"item %K not found\00", align 1
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"reiserfs-5092\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NO_DISK_SPACE\00", align 1
@M_PASTE = common dso_local global i8 0, align 1
@M_INSERT = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@M_DELETE = common dso_local global i8 0, align 1
@U32_MAX = common dso_local global i32 0, align 4
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@i_pack_on_close_mask = common dso_local global i32 0, align 4
@M_CUT = common dso_local global i8 0, align 1
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle* %0, %struct.treepath* %1, %struct.cpu_key* %2, %struct.inode* %3, %struct.page* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca %struct.treepath*, align 8
  %10 = alloca %struct.cpu_key*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.tree_balance, align 8
  %16 = alloca %struct.item_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %8, align 8
  store %struct.treepath* %1, %struct.treepath** %9, align 8
  store %struct.cpu_key* %2, %struct.cpu_key** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.page* %4, %struct.page** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %14, align 8
  store i32 0, i32* %17, align 4
  %29 = load i32, i32* @CARRY_ON, align 4
  store i32 %29, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %30 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %31 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load %struct.super_block*, %struct.super_block** %39, align 8
  %41 = load %struct.treepath*, %struct.treepath** %9, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @init_tb_struct(%struct.reiserfs_transaction_handle* %37, %struct.tree_balance* %15, %struct.super_block* %40, %struct.treepath* %41, i32 %42)
  br label %44

44:                                               ; preds = %6, %115, %144
  %45 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = load %struct.treepath*, %struct.treepath** %9, align 8
  %48 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call signext i8 @prepare_for_delete_or_cut(%struct.reiserfs_transaction_handle* %45, %struct.inode* %46, %struct.treepath* %47, %struct.cpu_key* %48, i32* %19, i32* %17, i32 %49)
  store i8 %50, i8* %21, align 1
  %51 = load i8, i8* %21, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @M_CONVERT, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %44
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* @CARRY_ON, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @RFALSE(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = load %struct.page*, %struct.page** %12, align 8
  %65 = load %struct.treepath*, %struct.treepath** %9, align 8
  %66 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @maybe_indirect_to_direct(%struct.reiserfs_transaction_handle* %62, %struct.inode* %63, %struct.page* %64, %struct.treepath* %65, %struct.cpu_key* %66, i32 %67, i8* %21)
  store i32 %68, i32* %18, align 4
  %69 = load i8, i8* %21, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @M_SKIP_BALANCING, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %7, align 4
  br label %290

76:                                               ; preds = %56
  store i32 1, i32* %20, align 4
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %22, align 4
  %78 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %79 = load i32, i32* @TYPE_INDIRECT, align 4
  %80 = call i32 @set_cpu_key_k_type(%struct.cpu_key* %78, i32 %79)
  %81 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %82 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %81, i32 0, i32 0
  store i32 4, i32* %82, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.super_block*, %struct.super_block** %14, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %83, %87
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %24, align 4
  %92 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %92, i32 %94)
  %96 = load %struct.super_block*, %struct.super_block** %14, align 8
  %97 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %98 = load %struct.treepath*, %struct.treepath** %9, align 8
  %99 = call i32 @search_for_position_by_key(%struct.super_block* %96, %struct.cpu_key* %97, %struct.treepath* %98)
  %100 = load i32, i32* @POSITION_NOT_FOUND, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %76
  %103 = load %struct.treepath*, %struct.treepath** %9, align 8
  %104 = call i32 @PATH_PLAST_BUFFER(%struct.treepath* %103)
  %105 = load %struct.treepath*, %struct.treepath** %9, align 8
  %106 = call i64 @PATH_LAST_POSITION(%struct.treepath* %105)
  %107 = sub nsw i64 %106, 1
  %108 = load %struct.treepath*, %struct.treepath** %9, align 8
  %109 = call i64 @PATH_LAST_POSITION(%struct.treepath* %108)
  %110 = add nsw i64 %109, 1
  %111 = call i32 @print_block(i32 %104, i32 3, i64 %107, i64 %110)
  %112 = load %struct.super_block*, %struct.super_block** %14, align 8
  %113 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %114 = call i32 (%struct.super_block*, i8*, i8*, %struct.cpu_key*, ...) @reiserfs_panic(%struct.super_block* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.cpu_key* %113)
  br label %115

115:                                              ; preds = %102, %76
  br label %44

116:                                              ; preds = %44
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.treepath*, %struct.treepath** %9, align 8
  %121 = call i32 @pathrelse(%struct.treepath* %120)
  store i32 0, i32* %7, align 4
  br label %290

122:                                              ; preds = %116
  %123 = load i32, i32* %17, align 4
  %124 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %123, i32* %126, align 4
  %127 = load i8, i8* %21, align 1
  %128 = call i32 @fix_nodes(i8 signext %127, %struct.tree_balance* %15, i32* null, i32* null)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* @REPEAT_SEARCH, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %161

133:                                              ; preds = %122
  %134 = load %struct.super_block*, %struct.super_block** %14, align 8
  %135 = load i32, i32* @cut_from_item_restarted, align 4
  %136 = call i32 @PROC_INFO_INC(%struct.super_block* %134, i32 %135)
  %137 = load %struct.super_block*, %struct.super_block** %14, align 8
  %138 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %139 = load %struct.treepath*, %struct.treepath** %9, align 8
  %140 = call i32 @search_for_position_by_key(%struct.super_block* %137, %struct.cpu_key* %138, %struct.treepath* %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @POSITION_FOUND, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %44

145:                                              ; preds = %133
  %146 = load %struct.super_block*, %struct.super_block** %14, align 8
  %147 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %148 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.cpu_key* %147)
  %149 = call i32 @unfix_nodes(%struct.tree_balance* %15)
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* @IO_ERROR, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  br label %159

156:                                              ; preds = %145
  %157 = load i32, i32* @ENOENT, align 4
  %158 = sub nsw i32 0, %157
  br label %159

159:                                              ; preds = %156, %153
  %160 = phi i32 [ %155, %153 ], [ %158, %156 ]
  store i32 %160, i32* %7, align 4
  br label %290

161:                                              ; preds = %132
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* @CARRY_ON, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %161
  %166 = load i32, i32* %20, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %170 = load %struct.inode*, %struct.inode** %11, align 8
  %171 = load %struct.treepath*, %struct.treepath** %9, align 8
  %172 = call i32 @indirect_to_direct_roll_back(%struct.reiserfs_transaction_handle* %169, %struct.inode* %170, %struct.treepath* %171)
  br label %173

173:                                              ; preds = %168, %165
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @NO_DISK_SPACE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.super_block*, %struct.super_block** %14, align 8
  %179 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %173
  %181 = call i32 @unfix_nodes(%struct.tree_balance* %15)
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %7, align 4
  br label %290

184:                                              ; preds = %161
  %185 = load i8, i8* %21, align 1
  %186 = sext i8 %185 to i32
  %187 = load i8, i8* @M_PASTE, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load i8, i8* %21, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8, i8* @M_INSERT, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br label %196

196:                                              ; preds = %190, %184
  %197 = phi i1 [ true, %184 ], [ %195, %190 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @RFALSE(i32 %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %200 = load i8, i8* %21, align 1
  %201 = sext i8 %200 to i32
  %202 = load i8, i8* @M_DELETE, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load %struct.treepath*, %struct.treepath** %9, align 8
  %207 = call %struct.item_head* @tp_item_head(%struct.treepath* %206)
  %208 = call i32 @ih_item_len(%struct.item_head* %207)
  br label %215

209:                                              ; preds = %196
  %210 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 0, %213
  br label %215

215:                                              ; preds = %209, %205
  %216 = phi i32 [ %208, %205 ], [ %214, %209 ]
  store i32 %216, i32* %23, align 4
  %217 = load i32, i32* %22, align 4
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i8, i8* %21, align 1
  %221 = call i32 @calc_deleted_bytes_number(%struct.tree_balance* %15, i8 signext %220)
  store i32 %221, i32* %18, align 4
  br label %224

222:                                              ; preds = %215
  %223 = load i32, i32* %22, align 4
  store i32 %223, i32* %18, align 4
  br label %224

224:                                              ; preds = %222, %219
  %225 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 1
  %226 = load %struct.treepath*, %struct.treepath** %225, align 8
  %227 = call %struct.item_head* @tp_item_head(%struct.treepath* %226)
  store %struct.item_head* %227, %struct.item_head** %16, align 8
  %228 = load %struct.inode*, %struct.inode** %11, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @S_ISLNK(i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %264, label %233

233:                                              ; preds = %224
  %234 = load %struct.item_head*, %struct.item_head** %16, align 8
  %235 = call i64 @is_direct_le_ih(%struct.item_head* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %264

237:                                              ; preds = %233
  %238 = load i8, i8* %21, align 1
  %239 = sext i8 %238 to i32
  %240 = load i8, i8* @M_DELETE, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %262

243:                                              ; preds = %237
  %244 = load %struct.item_head*, %struct.item_head** %16, align 8
  %245 = call i32 @le_ih_k_offset(%struct.item_head* %244)
  %246 = load %struct.super_block*, %struct.super_block** %14, align 8
  %247 = getelementptr inbounds %struct.super_block, %struct.super_block* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %248, 1
  %250 = and i32 %245, %249
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %262

252:                                              ; preds = %243
  %253 = load i32, i32* @U32_MAX, align 4
  %254 = load %struct.inode*, %struct.inode** %11, align 8
  %255 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %254)
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  %257 = load %struct.super_block*, %struct.super_block** %14, align 8
  %258 = getelementptr inbounds %struct.super_block, %struct.super_block* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @UNFM_P_SIZE, align 4
  %261 = add nsw i32 %259, %260
  store i32 %261, i32* %23, align 4
  br label %263

262:                                              ; preds = %243, %237
  store i32 0, i32* %23, align 4
  br label %263

263:                                              ; preds = %262, %252
  br label %264

264:                                              ; preds = %263, %233, %224
  %265 = load i8, i8* %21, align 1
  %266 = call i32 @do_balance(%struct.tree_balance* %15, i32* null, i32* null, i8 signext %265)
  %267 = load i32, i32* %20, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %264
  %270 = load %struct.page*, %struct.page** %12, align 8
  %271 = load i32, i32* %24, align 4
  %272 = call i32 @unmap_buffers(%struct.page* %270, i32 %271)
  %273 = load i32, i32* @i_pack_on_close_mask, align 4
  %274 = xor i32 %273, -1
  %275 = load %struct.inode*, %struct.inode** %11, align 8
  %276 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %275)
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, %274
  store i32 %279, i32* %277, align 4
  br label %280

280:                                              ; preds = %269, %264
  %281 = load %struct.super_block*, %struct.super_block** %14, align 8
  %282 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %281)
  store i32 %282, i32* %25, align 4
  %283 = load %struct.inode*, %struct.inode** %11, align 8
  %284 = load i32, i32* %23, align 4
  %285 = call i32 @dquot_free_space_nodirty(%struct.inode* %283, i32 %284)
  %286 = load %struct.super_block*, %struct.super_block** %14, align 8
  %287 = load i32, i32* %25, align 4
  %288 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %286, i32 %287)
  %289 = load i32, i32* %18, align 4
  store i32 %289, i32* %7, align 4
  br label %290

290:                                              ; preds = %280, %180, %159, %119, %74
  %291 = load i32, i32* %7, align 4
  ret i32 %291
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_tb_struct(%struct.reiserfs_transaction_handle*, %struct.tree_balance*, %struct.super_block*, %struct.treepath*, i32) #1

declare dso_local signext i8 @prepare_for_delete_or_cut(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.treepath*, %struct.cpu_key*, i32*, i32*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @maybe_indirect_to_direct(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.page*, %struct.treepath*, %struct.cpu_key*, i32, i8*) #1

declare dso_local i32 @set_cpu_key_k_type(%struct.cpu_key*, i32) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @search_for_position_by_key(%struct.super_block*, %struct.cpu_key*, %struct.treepath*) #1

declare dso_local i32 @print_block(i32, i32, i64, i64) #1

declare dso_local i32 @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local i64 @PATH_LAST_POSITION(%struct.treepath*) #1

declare dso_local i32 @reiserfs_panic(%struct.super_block*, i8*, i8*, %struct.cpu_key*, ...) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @fix_nodes(i8 signext, %struct.tree_balance*, i32*, i32*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, ...) #1

declare dso_local i32 @unfix_nodes(%struct.tree_balance*) #1

declare dso_local i32 @indirect_to_direct_roll_back(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.treepath*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local %struct.item_head* @tp_item_head(%struct.treepath*) #1

declare dso_local i32 @calc_deleted_bytes_number(%struct.tree_balance*, i8 signext) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @do_balance(%struct.tree_balance*, i32*, i32*, i8 signext) #1

declare dso_local i32 @unmap_buffers(%struct.page*, i32) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @dquot_free_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
