; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_bio_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_bio_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap_dio = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { %struct.iov_iter* }
%struct.iov_iter = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iomap = type { i64, i32, i32 }
%struct.bio = type { i32, %struct.TYPE_5__, i32, %struct.iomap_dio*, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IOMAP_UNWRITTEN = common dso_local global i64 0, align 8
@IOMAP_DIO_UNWRITTEN = common dso_local global i32 0, align 4
@IOMAP_F_SHARED = common dso_local global i32 0, align 4
@IOMAP_DIO_COW = common dso_local global i32 0, align 4
@IOMAP_F_NEW = common dso_local global i32 0, align 4
@IOMAP_MAPPED = common dso_local global i64 0, align 8
@IOMAP_F_DIRTY = common dso_local global i32 0, align 4
@IOMAP_DIO_WRITE_FUA = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iomap_dio_bio_end_io = common dso_local global i32 0, align 4
@IOMAP_DIO_WRITE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_IDLE = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@IOMAP_DIO_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, %struct.iomap_dio*, %struct.iomap*)* @iomap_dio_bio_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_dio_bio_actor(%struct.inode* %0, i32 %1, i32 %2, %struct.iomap_dio* %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iomap_dio*, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iov_iter, align 4
  %17 = alloca %struct.bio*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.iomap_dio* %3, %struct.iomap_dio** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %24 = load %struct.iomap*, %struct.iomap** %11, align 8
  %25 = getelementptr inbounds %struct.iomap, %struct.iomap* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bdev_logical_block_size(i32 %26)
  %28 = call i32 @blksize_bits(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @i_blocksize(%struct.inode* %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %32 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.iov_iter*, %struct.iov_iter** %33, align 8
  %35 = call i32 @iov_iter_alignment(%struct.iov_iter* %34)
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %15, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %5
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %327

49:                                               ; preds = %5
  %50 = load %struct.iomap*, %struct.iomap** %11, align 8
  %51 = getelementptr inbounds %struct.iomap, %struct.iomap* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IOMAP_UNWRITTEN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @IOMAP_DIO_UNWRITTEN, align 4
  %57 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %58 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  store i32 1, i32* %18, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.iomap*, %struct.iomap** %11, align 8
  %63 = getelementptr inbounds %struct.iomap, %struct.iomap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IOMAP_F_SHARED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @IOMAP_DIO_COW, align 4
  %70 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %71 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.iomap*, %struct.iomap** %11, align 8
  %76 = getelementptr inbounds %struct.iomap, %struct.iomap* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IOMAP_F_NEW, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 1, i32* %18, align 4
  br label %114

82:                                               ; preds = %74
  %83 = load %struct.iomap*, %struct.iomap** %11, align 8
  %84 = getelementptr inbounds %struct.iomap, %struct.iomap* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IOMAP_MAPPED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load %struct.iomap*, %struct.iomap** %11, align 8
  %90 = getelementptr inbounds %struct.iomap, %struct.iomap* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IOMAP_F_SHARED, align 4
  %93 = load i32, i32* @IOMAP_F_DIRTY, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %88
  %98 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %99 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IOMAP_DIO_WRITE_FUA, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.iomap*, %struct.iomap** %11, align 8
  %106 = getelementptr inbounds %struct.iomap, %struct.iomap* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bdev_get_queue(i32 %107)
  %109 = call i64 @blk_queue_fua(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 1, i32* %19, align 4
  br label %112

112:                                              ; preds = %111, %104, %97, %88
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113, %81
  %115 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %116 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.iov_iter*, %struct.iov_iter** %117, align 8
  %119 = bitcast %struct.iov_iter* %16 to i8*
  %120 = bitcast %struct.iov_iter* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @iov_iter_truncate(%struct.iov_iter* %16, i32 %121)
  %123 = load i32, i32* @BIO_MAX_PAGES, align 4
  %124 = call i32 @iov_iter_npages(%struct.iov_iter* %16, i32 %123)
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* %20, align 4
  store i32 %128, i32* %6, align 4
  br label %327

129:                                              ; preds = %114
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sub i32 %134, 1
  %136 = and i32 %133, %135
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %141 = load %struct.iomap*, %struct.iomap** %11, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %14, align 4
  %144 = sub i32 %142, %143
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @iomap_dio_zero(%struct.iomap_dio* %140, %struct.iomap* %141, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %132
  br label %148

148:                                              ; preds = %147, %129
  br label %149

149:                                              ; preds = %281, %148
  %150 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %151 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %156 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load %struct.iov_iter*, %struct.iov_iter** %157, align 8
  %159 = load i64, i64* %22, align 8
  %160 = call i32 @iov_iter_revert(%struct.iov_iter* %158, i64 %159)
  store i32 0, i32* %6, align 4
  br label %327

161:                                              ; preds = %149
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = load i32, i32* %20, align 4
  %164 = call %struct.bio* @bio_alloc(i32 %162, i32 %163)
  store %struct.bio* %164, %struct.bio** %17, align 8
  %165 = load %struct.bio*, %struct.bio** %17, align 8
  %166 = load %struct.iomap*, %struct.iomap** %11, align 8
  %167 = getelementptr inbounds %struct.iomap, %struct.iomap* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @bio_set_dev(%struct.bio* %165, i32 %168)
  %170 = load %struct.iomap*, %struct.iomap** %11, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @iomap_sector(%struct.iomap* %170, i32 %171)
  %173 = load %struct.bio*, %struct.bio** %17, align 8
  %174 = getelementptr inbounds %struct.bio, %struct.bio* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 8
  %176 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %177 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %176, i32 0, i32 3
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.bio*, %struct.bio** %17, align 8
  %182 = getelementptr inbounds %struct.bio, %struct.bio* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %184 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %183, i32 0, i32 3
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.bio*, %struct.bio** %17, align 8
  %189 = getelementptr inbounds %struct.bio, %struct.bio* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %191 = load %struct.bio*, %struct.bio** %17, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 3
  store %struct.iomap_dio* %190, %struct.iomap_dio** %192, align 8
  %193 = load i32, i32* @iomap_dio_bio_end_io, align 4
  %194 = load %struct.bio*, %struct.bio** %17, align 8
  %195 = getelementptr inbounds %struct.bio, %struct.bio* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.bio*, %struct.bio** %17, align 8
  %197 = call i32 @bio_iov_iter_get_pages(%struct.bio* %196, %struct.iov_iter* %16)
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %21, align 4
  %199 = call i64 @unlikely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %161
  %202 = load %struct.bio*, %struct.bio** %17, align 8
  %203 = call i32 @bio_put(%struct.bio* %202)
  br label %285

204:                                              ; preds = %161
  %205 = load %struct.bio*, %struct.bio** %17, align 8
  %206 = getelementptr inbounds %struct.bio, %struct.bio* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %23, align 8
  %209 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %210 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %241

215:                                              ; preds = %204
  %216 = load i32, i32* @REQ_OP_WRITE, align 4
  %217 = load i32, i32* @REQ_SYNC, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @REQ_IDLE, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.bio*, %struct.bio** %17, align 8
  %222 = getelementptr inbounds %struct.bio, %struct.bio* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* %19, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %215
  %226 = load i32, i32* @REQ_FUA, align 4
  %227 = load %struct.bio*, %struct.bio** %17, align 8
  %228 = getelementptr inbounds %struct.bio, %struct.bio* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %238

231:                                              ; preds = %215
  %232 = load i32, i32* @IOMAP_DIO_WRITE_FUA, align 4
  %233 = xor i32 %232, -1
  %234 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %235 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %231, %225
  %239 = load i64, i64* %23, align 8
  %240 = call i32 @task_io_account_write(i64 %239)
  br label %255

241:                                              ; preds = %204
  %242 = load i32, i32* @REQ_OP_READ, align 4
  %243 = load %struct.bio*, %struct.bio** %17, align 8
  %244 = getelementptr inbounds %struct.bio, %struct.bio* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %246 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @IOMAP_DIO_DIRTY, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %241
  %252 = load %struct.bio*, %struct.bio** %17, align 8
  %253 = call i32 @bio_set_pages_dirty(%struct.bio* %252)
  br label %254

254:                                              ; preds = %251, %241
  br label %255

255:                                              ; preds = %254, %238
  %256 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %257 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load %struct.iov_iter*, %struct.iov_iter** %258, align 8
  %260 = load i64, i64* %23, align 8
  %261 = call i32 @iov_iter_advance(%struct.iov_iter* %259, i64 %260)
  %262 = load i64, i64* %23, align 8
  %263 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %264 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, %262
  store i64 %266, i64* %264, align 8
  %267 = load i64, i64* %23, align 8
  %268 = load i32, i32* %8, align 4
  %269 = zext i32 %268 to i64
  %270 = add i64 %269, %267
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %8, align 4
  %272 = load i64, i64* %23, align 8
  %273 = load i64, i64* %22, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %22, align 8
  %275 = load i32, i32* @BIO_MAX_PAGES, align 4
  %276 = call i32 @iov_iter_npages(%struct.iov_iter* %16, i32 %275)
  store i32 %276, i32* %20, align 4
  %277 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %278 = load %struct.iomap*, %struct.iomap** %11, align 8
  %279 = load %struct.bio*, %struct.bio** %17, align 8
  %280 = call i32 @iomap_dio_submit_bio(%struct.iomap_dio* %277, %struct.iomap* %278, %struct.bio* %279)
  br label %281

281:                                              ; preds = %255
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %149, label %284

284:                                              ; preds = %281
  br label %285

285:                                              ; preds = %284, %201
  %286 = load i32, i32* %18, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %285
  %289 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %290 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %316

295:                                              ; preds = %288
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.inode*, %struct.inode** %7, align 8
  %298 = call i32 @i_size_read(%struct.inode* %297)
  %299 = icmp uge i32 %296, %298
  br i1 %299, label %300, label %316

300:                                              ; preds = %295, %285
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %13, align 4
  %303 = sub i32 %302, 1
  %304 = and i32 %301, %303
  store i32 %304, i32* %14, align 4
  %305 = load i32, i32* %14, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %300
  %308 = load %struct.iomap_dio*, %struct.iomap_dio** %10, align 8
  %309 = load %struct.iomap*, %struct.iomap** %11, align 8
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %14, align 4
  %313 = sub i32 %311, %312
  %314 = call i32 @iomap_dio_zero(%struct.iomap_dio* %308, %struct.iomap* %309, i32 %310, i32 %313)
  br label %315

315:                                              ; preds = %307, %300
  br label %316

316:                                              ; preds = %315, %295, %288
  %317 = load i64, i64* %22, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = load i64, i64* %22, align 8
  br label %324

321:                                              ; preds = %316
  %322 = load i32, i32* %21, align 4
  %323 = sext i32 %322 to i64
  br label %324

324:                                              ; preds = %321, %319
  %325 = phi i64 [ %320, %319 ], [ %323, %321 ]
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %6, align 4
  br label %327

327:                                              ; preds = %324, %154, %127, %46
  %328 = load i32, i32* %6, align 4
  ret i32 %328
}

declare dso_local i32 @blksize_bits(i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @iov_iter_alignment(%struct.iov_iter*) #1

declare dso_local i64 @blk_queue_fua(i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i32) #1

declare dso_local i32 @iov_iter_npages(%struct.iov_iter*, i32) #1

declare dso_local i32 @iomap_dio_zero(%struct.iomap_dio*, %struct.iomap*, i32, i32) #1

declare dso_local i32 @iov_iter_revert(%struct.iov_iter*, i64) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @iomap_sector(%struct.iomap*, i32) #1

declare dso_local i32 @bio_iov_iter_get_pages(%struct.bio*, %struct.iov_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @task_io_account_write(i64) #1

declare dso_local i32 @bio_set_pages_dirty(%struct.bio*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

declare dso_local i32 @iomap_dio_submit_bio(%struct.iomap_dio*, %struct.iomap*, %struct.bio*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
