; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_do_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_do_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32, i8*, i8*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.page = type { i32 }
%struct.item_head = type { i32 }
%struct.cpu_key = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.cpu_key* }

@s_search_path = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@TYPE_DIRECT = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vs-5657\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"i/o failure occurred trying to truncate %K\00", align 1
@EIO = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"PAP-5660\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"wrong result %d of search for %K\00", align 1
@PATH_READA = common dso_local global i32 0, align 4
@PATH_READA_BACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vs-5665\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"reiserfs_cut_from_item failed\00", align 1
@.str.6 = private unnamed_addr constant [97 x i8] c"PAP-5670: reiserfs_cut_from_item: too many bytes deleted: deleted %d, file_size %lu, item_key %K\00", align 1
@JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD = common dso_local global i64 0, align 8
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [76 x i8] c"PAP-5680: truncate did not finish: new_file_size %lld, current %lld, oid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_transaction_handle*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.cpu_key, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i64, i64* bitcast (%struct.TYPE_14__* @s_search_path to i64*), align 4
  %20 = call i32 @INITIALIZE_PATH(i64 %19)
  store i32 0, i32* %16, align 4
  %21 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %22 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @S_ISREG(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %4
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @S_ISLNK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %255

46:                                               ; preds = %39, %33, %4
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @S_ISDIR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call i32 @truncate_directory(%struct.reiserfs_transaction_handle* %53, %struct.inode* %54)
  store i32 0, i32* %5, align 4
  br label %255

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @max_reiserfs_offset(%struct.inode* %61)
  %63 = load i32, i32* @TYPE_DIRECT, align 4
  %64 = call i32 @make_cpu_key(%struct.cpu_key* %11, %struct.inode* %60, i32 %62, i32 %63, i32 3)
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 3
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = call i32 @search_for_position_by_key(%struct.TYPE_15__* %67, %struct.cpu_key* %11, %struct.TYPE_14__* @s_search_path)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @IO_ERROR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %56
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @reiserfs_error(%struct.TYPE_15__* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %11)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %16, align 4
  br label %252

79:                                               ; preds = %56
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @POSITION_FOUND, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @FILE_NOT_FOUND, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83, %79
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 (%struct.TYPE_15__*, i8*, i8*, ...) @reiserfs_error(%struct.TYPE_15__* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %91, %struct.cpu_key* %11)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %252

95:                                               ; preds = %83
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_search_path, i32 0, i32 1), align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_search_path, i32 0, i32 1), align 4
  %98 = call %struct.item_head* @tp_item_head(%struct.TYPE_14__* @s_search_path)
  store %struct.item_head* %98, %struct.item_head** %10, align 8
  %99 = load %struct.item_head*, %struct.item_head** %10, align 8
  %100 = call i64 @is_statdata_le_ih(%struct.item_head* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 0, i32* %12, align 4
  br label %117

103:                                              ; preds = %95
  %104 = load %struct.item_head*, %struct.item_head** %10, align 8
  %105 = call i32 @le_ih_k_offset(%struct.item_head* %104)
  store i32 %105, i32* %17, align 4
  %106 = load %struct.item_head*, %struct.item_head** %10, align 8
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 3
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @op_bytes_number(%struct.item_head* %106, i32 %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %103, %102
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @PATH_READA, align 4
  %122 = load i32, i32* @PATH_READA_BACK, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_search_path, i32 0, i32 0), align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %124
  br label %236

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %11, i32 %133)
  br label %135

135:                                              ; preds = %222, %132
  %136 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = load %struct.page*, %struct.page** %8, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle* %136, %struct.TYPE_14__* @s_search_path, %struct.cpu_key* %11, %struct.inode* %137, %struct.page* %138, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 3
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = call i32 @reiserfs_warning(%struct.TYPE_15__* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %148 = call i32 @reiserfs_check_path(%struct.TYPE_14__* @s_search_path)
  store i32 0, i32* %5, align 4
  br label %255

149:                                              ; preds = %135
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp sgt i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @RFALSE(i32 %153, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0), i32 %154, i32 %155, %struct.cpu_key* %11)
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %12, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %11, i32 %160)
  %162 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %163 = call i64 @journal_transaction_should_end(%struct.reiserfs_transaction_handle* %162, i32 0)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %149
  %166 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %167 = call i64 @reiserfs_transaction_free_space(%struct.reiserfs_transaction_handle* %166)
  %168 = load i64, i64* @JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD, align 8
  %169 = icmp sle i64 %167, %168
  br i1 %169, label %170, label %209

170:                                              ; preds = %165, %149
  %171 = call i32 @pathrelse(%struct.TYPE_14__* @s_search_path)
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load %struct.inode*, %struct.inode** %7, align 8
  %176 = call i8* @current_time(%struct.inode* %175)
  %177 = load %struct.inode*, %struct.inode** %7, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load %struct.inode*, %struct.inode** %7, align 8
  %180 = call i8* @current_time(%struct.inode* %179)
  %181 = load %struct.inode*, %struct.inode** %7, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %174, %170
  %184 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %185 = load %struct.inode*, %struct.inode** %7, align 8
  %186 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %184, %struct.inode* %185)
  %187 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %188 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %252

192:                                              ; preds = %183
  %193 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %194 = load %struct.inode*, %struct.inode** %7, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 3
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = load i64, i64* @JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD, align 8
  %198 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %199 = mul nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %197, %200
  %202 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %193, %struct.TYPE_15__* %196, i64 %201)
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %192
  br label %252

206:                                              ; preds = %192
  %207 = load %struct.inode*, %struct.inode** %7, align 8
  %208 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %207)
  br label %209

209:                                              ; preds = %206, %165
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @ROUND_UP(i32 %212)
  %214 = icmp sgt i32 %211, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %210
  %216 = load %struct.inode*, %struct.inode** %7, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 3
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = call i32 @search_for_position_by_key(%struct.TYPE_15__* %218, %struct.cpu_key* %11, %struct.TYPE_14__* @s_search_path)
  %220 = load i32, i32* @POSITION_FOUND, align 4
  %221 = icmp eq i32 %219, %220
  br label %222

222:                                              ; preds = %215, %210
  %223 = phi i1 [ false, %210 ], [ %221, %215 ]
  br i1 %223, label %135, label %224

224:                                              ; preds = %222
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @ROUND_UP(i32 %226)
  %228 = icmp sgt i32 %225, %227
  %229 = zext i1 %228 to i32
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %12, align 4
  %232 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %11, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load %struct.cpu_key*, %struct.cpu_key** %233, align 8
  %235 = call i32 @RFALSE(i32 %229, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i32 %230, i32 %231, %struct.cpu_key* %234)
  br label %236

236:                                              ; preds = %224, %131
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load %struct.inode*, %struct.inode** %7, align 8
  %241 = call i8* @current_time(%struct.inode* %240)
  %242 = load %struct.inode*, %struct.inode** %7, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  %244 = load %struct.inode*, %struct.inode** %7, align 8
  %245 = call i8* @current_time(%struct.inode* %244)
  %246 = load %struct.inode*, %struct.inode** %7, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %239, %236
  %249 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %250 = load %struct.inode*, %struct.inode** %7, align 8
  %251 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %249, %struct.inode* %250)
  br label %252

252:                                              ; preds = %248, %205, %191, %87, %72
  %253 = call i32 @pathrelse(%struct.TYPE_14__* @s_search_path)
  %254 = load i32, i32* %16, align 4
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %252, %143, %52, %45
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @INITIALIZE_PATH(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @truncate_directory(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @max_reiserfs_offset(%struct.inode*) #1

declare dso_local i32 @search_for_position_by_key(%struct.TYPE_15__*, %struct.cpu_key*, %struct.TYPE_14__*) #1

declare dso_local i32 @reiserfs_error(%struct.TYPE_15__*, i8*, i8*, ...) #1

declare dso_local %struct.item_head* @tp_item_head(%struct.TYPE_14__*) #1

declare dso_local i64 @is_statdata_le_ih(%struct.item_head*) #1

declare dso_local i32 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i32 @op_bytes_number(%struct.item_head*, i32) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle*, %struct.TYPE_14__*, %struct.cpu_key*, %struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @reiserfs_check_path(%struct.TYPE_14__*) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, i32, %struct.cpu_key*) #1

declare dso_local i64 @journal_transaction_should_end(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i64 @reiserfs_transaction_free_space(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_14__*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @ROUND_UP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
