; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_direct_IO_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_direct_IO_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32*, %struct.file* }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.ext4_inode_info = type { i64 }

@EXT4_HT_INODE = common dso_local global i32 0, align 4
@ext4_dio_get_block_overwrite = common dso_local global i32* null, align 8
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@ext4_dio_get_block = common dso_local global i32* null, align 8
@DIO_LOCKING = common dso_local global i32 0, align 4
@DIO_SKIP_HOLES = common dso_local global i32 0, align 4
@ext4_dio_get_block_unwritten_sync = common dso_local global i32* null, align 8
@ext4_dio_get_block_unwritten_async = common dso_local global i32* null, align 8
@ext4_end_io_dio = common dso_local global i32 0, align 4
@EXT4_STATE_DIO_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @ext4_direct_IO_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_direct_IO_write(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_inode_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 2
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %5, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %6, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %28)
  store %struct.ext4_inode_info* %29, %struct.ext4_inode_info** %7, align 8
  %30 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %31 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %34 = call i64 @iov_iter_count(%struct.iov_iter* %33)
  store i64 %34, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %2
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %46 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43, %2
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load i32, i32* @EXT4_HT_INODE, align 4
  %52 = call i32* @ext4_journal_start(%struct.inode* %50, i32 %51, i32 2)
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32*, i32** %16, align 8
  %58 = call i64 @PTR_ERR(i32* %57)
  store i64 %58, i64* %8, align 8
  br label %269

59:                                               ; preds = %49
  %60 = load i32*, i32** %16, align 8
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i64 @ext4_orphan_add(i32* %60, %struct.inode* %61)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @ext4_journal_stop(i32* %66)
  br label %269

68:                                               ; preds = %59
  store i32 1, i32* %15, align 4
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ext4_update_i_disksize(%struct.inode* %69, i64 %72)
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @ext4_journal_stop(i32* %74)
  br label %76

76:                                               ; preds = %68, %43
  %77 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %78 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @inode_dio_begin(%struct.inode* %83)
  %85 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %86 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = call i32 @inode_unlock(%struct.inode* %92)
  br label %94

94:                                               ; preds = %91, %76
  %95 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %96 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32*, i32** @ext4_dio_get_block_overwrite, align 8
  store i32* %100, i32** %12, align 8
  br label %132

101:                                              ; preds = %94
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %104 = call i32 @ext4_test_inode_flag(%struct.inode* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = call i32 @i_blocksize(%struct.inode* %108)
  %110 = call i64 @round_down(i64 %107, i32 %109)
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %106, %101
  %116 = load i32*, i32** @ext4_dio_get_block, align 8
  store i32* %116, i32** %12, align 8
  %117 = load i32, i32* @DIO_LOCKING, align 4
  %118 = load i32, i32* @DIO_SKIP_HOLES, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %13, align 4
  br label %131

120:                                              ; preds = %106
  %121 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %122 = call i64 @is_sync_kiocb(%struct.kiocb* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32*, i32** @ext4_dio_get_block_unwritten_sync, align 8
  store i32* %125, i32** %12, align 8
  %126 = load i32, i32* @DIO_LOCKING, align 4
  store i32 %126, i32* %13, align 4
  br label %130

127:                                              ; preds = %120
  %128 = load i32*, i32** @ext4_dio_get_block_unwritten_async, align 8
  store i32* %128, i32** %12, align 8
  %129 = load i32, i32* @DIO_LOCKING, align 4
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %115
  br label %132

132:                                              ; preds = %131, %99
  %133 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* @ext4_end_io_dio, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i64 @__blockdev_direct_IO(%struct.kiocb* %133, %struct.inode* %134, i32 %139, %struct.iov_iter* %140, i32* %141, i32 %142, i32* null, i32 %143)
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %132
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %147
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = load i32, i32* @EXT4_STATE_DIO_UNWRITTEN, align 4
  %153 = call i64 @ext4_test_inode_state(%struct.inode* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %150
  %156 = load %struct.inode*, %struct.inode** %6, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call i32 @ext4_convert_unwritten_extents(i32* null, %struct.inode* %156, i64 %157, i64 %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %8, align 8
  br label %165

165:                                              ; preds = %162, %155
  %166 = load %struct.inode*, %struct.inode** %6, align 8
  %167 = load i32, i32* @EXT4_STATE_DIO_UNWRITTEN, align 4
  %168 = call i32 @ext4_clear_inode_state(%struct.inode* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %150, %147, %132
  %170 = load %struct.inode*, %struct.inode** %6, align 8
  %171 = call i32 @inode_dio_end(%struct.inode* %170)
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = call i32 @inode_lock(%struct.inode* %175)
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i64, i64* %8, align 8
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load i64, i64* %14, align 8
  %182 = load %struct.inode*, %struct.inode** %6, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %181, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load %struct.inode*, %struct.inode** %6, align 8
  %188 = call i32 @ext4_truncate_failed_write(%struct.inode* %187)
  br label %189

189:                                              ; preds = %186, %180, %177
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %268

192:                                              ; preds = %189
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = load i32, i32* @EXT4_HT_INODE, align 4
  %195 = call i32* @ext4_journal_start(%struct.inode* %193, i32 %194, i32 2)
  store i32* %195, i32** %16, align 8
  %196 = load i32*, i32** %16, align 8
  %197 = call i64 @IS_ERR(i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %192
  %200 = load i64, i64* %8, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i32*, i32** %16, align 8
  %204 = call i64 @PTR_ERR(i32* %203)
  store i64 %204, i64* %8, align 8
  br label %205

205:                                              ; preds = %202, %199
  %206 = load %struct.inode*, %struct.inode** %6, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.inode*, %struct.inode** %6, align 8
  %212 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %211)
  br label %213

213:                                              ; preds = %210, %205
  br label %269

214:                                              ; preds = %192
  %215 = load %struct.inode*, %struct.inode** %6, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load i32*, i32** %16, align 8
  %221 = load %struct.inode*, %struct.inode** %6, align 8
  %222 = call i32 @ext4_orphan_del(i32* %220, %struct.inode* %221)
  br label %223

223:                                              ; preds = %219, %214
  %224 = load i64, i64* %8, align 8
  %225 = icmp sgt i64 %224, 0
  br i1 %225, label %226, label %259

226:                                              ; preds = %223
  %227 = load i64, i64* %9, align 8
  %228 = load i64, i64* %8, align 8
  %229 = add nsw i64 %227, %228
  store i64 %229, i64* %19, align 8
  %230 = load i64, i64* %19, align 8
  %231 = load %struct.inode*, %struct.inode** %6, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %230, %233
  br i1 %234, label %241, label %235

235:                                              ; preds = %226
  %236 = load i64, i64* %19, align 8
  %237 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %238 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp sgt i64 %236, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %235, %226
  %242 = load %struct.inode*, %struct.inode** %6, align 8
  %243 = load i64, i64* %19, align 8
  %244 = call i32 @ext4_update_i_disksize(%struct.inode* %242, i64 %243)
  %245 = load i64, i64* %19, align 8
  %246 = load %struct.inode*, %struct.inode** %6, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp sgt i64 %245, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %241
  %251 = load %struct.inode*, %struct.inode** %6, align 8
  %252 = load i64, i64* %19, align 8
  %253 = call i32 @i_size_write(%struct.inode* %251, i64 %252)
  br label %254

254:                                              ; preds = %250, %241
  %255 = load i32*, i32** %16, align 8
  %256 = load %struct.inode*, %struct.inode** %6, align 8
  %257 = call i32 @ext4_mark_inode_dirty(i32* %255, %struct.inode* %256)
  br label %258

258:                                              ; preds = %254, %235
  br label %259

259:                                              ; preds = %258, %223
  %260 = load i32*, i32** %16, align 8
  %261 = call i32 @ext4_journal_stop(i32* %260)
  store i32 %261, i32* %18, align 4
  %262 = load i64, i64* %8, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load i32, i32* %18, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %8, align 8
  br label %267

267:                                              ; preds = %264, %259
  br label %268

268:                                              ; preds = %267, %189
  br label %269

269:                                              ; preds = %268, %213, %65, %56
  %270 = load i64, i64* %8, align 8
  ret i64 %270
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i64 @PTR_ERR(i32*) #1

declare dso_local i64 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_update_i_disksize(%struct.inode*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inode_dio_begin(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i64 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @__blockdev_direct_IO(%struct.kiocb*, %struct.inode*, i32, %struct.iov_iter*, i32*, i32, i32*, i32) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_convert_unwritten_extents(i32*, %struct.inode*, i64, i64) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @inode_dio_end(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
