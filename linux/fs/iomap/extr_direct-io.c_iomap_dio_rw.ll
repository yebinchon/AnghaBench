; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.iov_iter = type { i32 }
%struct.iomap_ops = type { i32 }
%struct.iomap_dio_ops = type { i32 }
%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.blk_plug = type { i32 }
%struct.iomap_dio = type { i64, i32, i32, %struct.TYPE_5__, i32, i64, %struct.iomap_dio_ops*, i64, %struct.kiocb* }
%struct.TYPE_5__ = type { i32*, i32*, i32, %struct.iov_iter* }

@IOMAP_DIRECT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@BLK_QC_T_NONE = common dso_local global i32* null, align 8
@READ = common dso_local global i64 0, align 8
@IOMAP_DIO_DIRTY = common dso_local global i32 0, align 4
@IOMAP_WRITE = common dso_local global i32 0, align 4
@IOMAP_DIO_WRITE = common dso_local global i32 0, align 4
@IOCB_DSYNC = common dso_local global i32 0, align 4
@IOMAP_DIO_NEED_SYNC = common dso_local global i32 0, align 4
@IOCB_SYNC = common dso_local global i32 0, align 4
@IOMAP_DIO_WRITE_FUA = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@IOMAP_NOWAIT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@iomap_dio_actor = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i64 0, align 8
@EIOCBQUEUED = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@IOCB_HIPRI = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iomap_dio_rw(%struct.kiocb* %0, %struct.iov_iter* %1, %struct.iomap_ops* %2, %struct.iomap_dio_ops* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca %struct.iomap_ops*, align 8
  %9 = alloca %struct.iomap_dio_ops*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.blk_plug, align 4
  %20 = alloca %struct.iomap_dio*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %7, align 8
  store %struct.iomap_ops* %2, %struct.iomap_ops** %8, align 8
  store %struct.iomap_dio_ops* %3, %struct.iomap_dio_ops** %9, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.address_space*, %struct.address_space** %24, align 8
  store %struct.address_space* %25, %struct.address_space** %10, align 8
  %26 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %27 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %26, i32 0, i32 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call %struct.inode* @file_inode(%struct.TYPE_7__* %28)
  store %struct.inode* %29, %struct.inode** %11, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %31 = call i64 @iov_iter_count(%struct.iov_iter* %30)
  store i64 %31, i64* %12, align 8
  %32 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %14, align 8
  %36 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %37 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %38, %39
  %41 = sub i64 %40, 1
  store i64 %41, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %42 = load i32, i32* @IOMAP_DIRECT, align 4
  store i32 %42, i32* %17, align 4
  %43 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %44 = call i32 @is_sync_kiocb(%struct.kiocb* %43)
  store i32 %44, i32* %18, align 4
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = call i32 @lockdep_assert_held(i32* %46)
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %369

51:                                               ; preds = %4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.iomap_dio* @kmalloc(i32 88, i32 %52)
  store %struct.iomap_dio* %53, %struct.iomap_dio** %20, align 8
  %54 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %55 = icmp ne %struct.iomap_dio* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @ENOMEM, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %5, align 8
  br label %369

59:                                               ; preds = %51
  %60 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %61 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %62 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %61, i32 0, i32 8
  store %struct.kiocb* %60, %struct.kiocb** %62, align 8
  %63 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %64 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %63, i32 0, i32 4
  %65 = call i32 @atomic_set(i32* %64, i32 1)
  %66 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %67 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %66, i32 0, i32 7
  store i64 0, i64* %67, align 8
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i64 @i_size_read(%struct.inode* %68)
  %70 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %71 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.iomap_dio_ops*, %struct.iomap_dio_ops** %9, align 8
  %73 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %74 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %73, i32 0, i32 6
  store %struct.iomap_dio_ops* %72, %struct.iomap_dio_ops** %74, align 8
  %75 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %76 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %78 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %80 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %81 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store %struct.iov_iter* %79, %struct.iov_iter** %82, align 8
  %83 = load i32, i32* @current, align 4
  %84 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %85 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load i32*, i32** @BLK_QC_T_NONE, align 8
  %88 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %89 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32* %87, i32** %90, align 8
  %91 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %92 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %95 = call i64 @iov_iter_rw(%struct.iov_iter* %94)
  %96 = load i64, i64* @READ, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %59
  %99 = load i64, i64* %13, align 8
  %100 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %101 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %365

105:                                              ; preds = %98
  %106 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %107 = call i64 @iter_is_iovec(%struct.iov_iter* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %111 = call i64 @iov_iter_rw(%struct.iov_iter* %110)
  %112 = load i64, i64* @READ, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* @IOMAP_DIO_DIRTY, align 4
  %116 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %117 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %109, %105
  br label %159

121:                                              ; preds = %59
  %122 = load i32, i32* @IOMAP_WRITE, align 4
  %123 = load i32, i32* %17, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %126 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %127 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %131 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IOCB_DSYNC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %121
  %137 = load i32, i32* @IOMAP_DIO_NEED_SYNC, align 4
  %138 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %139 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %121
  %143 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %144 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @IOCB_DSYNC, align 4
  %147 = load i32, i32* @IOCB_SYNC, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = load i32, i32* @IOCB_DSYNC, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load i32, i32* @IOMAP_DIO_WRITE_FUA, align 4
  %154 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %155 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %142
  br label %159

159:                                              ; preds = %158, %120
  %160 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %161 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IOCB_NOWAIT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %159
  %167 = load %struct.address_space*, %struct.address_space** %10, align 8
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* %15, align 8
  %170 = call i64 @filemap_range_has_page(%struct.address_space* %167, i64 %168, i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i64, i64* @EAGAIN, align 8
  %174 = sub nsw i64 0, %173
  store i64 %174, i64* %16, align 8
  br label %365

175:                                              ; preds = %166
  %176 = load i32, i32* @IOMAP_NOWAIT, align 4
  %177 = load i32, i32* %17, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %17, align 4
  br label %179

179:                                              ; preds = %175, %159
  %180 = load %struct.address_space*, %struct.address_space** %10, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load i64, i64* %15, align 8
  %183 = call i64 @filemap_write_and_wait_range(%struct.address_space* %180, i64 %181, i64 %182)
  store i64 %183, i64* %16, align 8
  %184 = load i64, i64* %16, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %365

187:                                              ; preds = %179
  %188 = load %struct.address_space*, %struct.address_space** %10, align 8
  %189 = load i64, i64* %14, align 8
  %190 = load i64, i64* @PAGE_SHIFT, align 8
  %191 = ashr i64 %189, %190
  %192 = load i64, i64* %15, align 8
  %193 = load i64, i64* @PAGE_SHIFT, align 8
  %194 = ashr i64 %192, %193
  %195 = call i64 @invalidate_inode_pages2_range(%struct.address_space* %188, i64 %191, i64 %194)
  store i64 %195, i64* %16, align 8
  %196 = load i64, i64* %16, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %187
  %199 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %200 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %199, i32 0, i32 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = call i32 @dio_warn_stale_pagecache(%struct.TYPE_7__* %201)
  br label %203

203:                                              ; preds = %198, %187
  store i64 0, i64* %16, align 8
  %204 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %205 = call i64 @iov_iter_rw(%struct.iov_iter* %204)
  %206 = load i64, i64* @WRITE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %227

208:                                              ; preds = %203
  %209 = load i32, i32* %18, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %227, label %211

211:                                              ; preds = %208
  %212 = load %struct.inode*, %struct.inode** %11, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 0
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %211
  %219 = load %struct.inode*, %struct.inode** %11, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 0
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = call i64 @sb_init_dio_done_wq(%struct.TYPE_6__* %221)
  store i64 %222, i64* %16, align 8
  %223 = load i64, i64* %16, align 8
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %365

226:                                              ; preds = %218
  br label %227

227:                                              ; preds = %226, %211, %208, %203
  %228 = load %struct.inode*, %struct.inode** %11, align 8
  %229 = call i32 @inode_dio_begin(%struct.inode* %228)
  %230 = call i32 @blk_start_plug(%struct.blk_plug* %19)
  br label %231

231:                                              ; preds = %265, %227
  %232 = load %struct.inode*, %struct.inode** %11, align 8
  %233 = load i64, i64* %13, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.iomap_ops*, %struct.iomap_ops** %8, align 8
  %237 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %238 = load i32, i32* @iomap_dio_actor, align 4
  %239 = call i64 @iomap_apply(%struct.inode* %232, i64 %233, i64 %234, i32 %235, %struct.iomap_ops* %236, %struct.iomap_dio* %237, i32 %238)
  store i64 %239, i64* %16, align 8
  %240 = load i64, i64* %16, align 8
  %241 = icmp sle i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %231
  %243 = load i64, i64* %16, align 8
  %244 = load i64, i64* @ENOTBLK, align 8
  %245 = sub nsw i64 0, %244
  %246 = icmp eq i64 %243, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  store i32 1, i32* %18, align 4
  store i64 0, i64* %16, align 8
  br label %248

248:                                              ; preds = %247, %242
  br label %269

249:                                              ; preds = %231
  %250 = load i64, i64* %16, align 8
  %251 = load i64, i64* %13, align 8
  %252 = add nsw i64 %251, %250
  store i64 %252, i64* %13, align 8
  %253 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %254 = call i64 @iov_iter_rw(%struct.iov_iter* %253)
  %255 = load i64, i64* @READ, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %249
  %258 = load i64, i64* %13, align 8
  %259 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %260 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp sge i64 %258, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %269

264:                                              ; preds = %257, %249
  br label %265

265:                                              ; preds = %264
  %266 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %267 = call i64 @iov_iter_count(%struct.iov_iter* %266)
  store i64 %267, i64* %12, align 8
  %268 = icmp ugt i64 %267, 0
  br i1 %268, label %231, label %269

269:                                              ; preds = %265, %263, %248
  %270 = call i32 @blk_finish_plug(%struct.blk_plug* %19)
  %271 = load i64, i64* %16, align 8
  %272 = icmp slt i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %275 = load i64, i64* %16, align 8
  %276 = call i32 @iomap_dio_set_error(%struct.iomap_dio* %274, i64 %275)
  br label %277

277:                                              ; preds = %273, %269
  %278 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %279 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @IOMAP_DIO_WRITE_FUA, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %277
  %285 = load i32, i32* @IOMAP_DIO_NEED_SYNC, align 4
  %286 = xor i32 %285, -1
  %287 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %288 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, %286
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %284, %277
  %292 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %293 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %296 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @WRITE_ONCE(i32 %294, i32* %298)
  %300 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %301 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %304 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @WRITE_ONCE(i32 %302, i32* %306)
  %308 = load i32, i32* %18, align 4
  %309 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %310 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 4
  %311 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %312 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %311, i32 0, i32 4
  %313 = call i32 @atomic_dec_and_test(i32* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %362, label %315

315:                                              ; preds = %291
  %316 = load i32, i32* %18, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %315
  %319 = load i64, i64* @EIOCBQUEUED, align 8
  %320 = sub nsw i64 0, %319
  store i64 %320, i64* %5, align 8
  br label %369

321:                                              ; preds = %315
  br label %322

322:                                              ; preds = %358, %321
  %323 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %324 = call i32 @set_current_state(i32 %323)
  %325 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %326 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @READ_ONCE(i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %322
  br label %359

332:                                              ; preds = %322
  %333 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %334 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @IOCB_HIPRI, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %356

339:                                              ; preds = %332
  %340 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %341 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %356

345:                                              ; preds = %339
  %346 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %347 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %351 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 @blk_poll(i32* %349, i32* %353, i32 1)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %345, %339, %332
  %357 = call i32 (...) @io_schedule()
  br label %358

358:                                              ; preds = %356, %345
  br label %322

359:                                              ; preds = %331
  %360 = load i32, i32* @TASK_RUNNING, align 4
  %361 = call i32 @__set_current_state(i32 %360)
  br label %362

362:                                              ; preds = %359, %291
  %363 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %364 = call i64 @iomap_dio_complete(%struct.iomap_dio* %363)
  store i64 %364, i64* %5, align 8
  br label %369

365:                                              ; preds = %225, %186, %172, %104
  %366 = load %struct.iomap_dio*, %struct.iomap_dio** %20, align 8
  %367 = call i32 @kfree(%struct.iomap_dio* %366)
  %368 = load i64, i64* %16, align 8
  store i64 %368, i64* %5, align 8
  br label %369

369:                                              ; preds = %365, %362, %318, %56, %50
  %370 = load i64, i64* %5, align 8
  ret i64 %370
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_7__*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.iomap_dio* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i64 @filemap_range_has_page(%struct.address_space*, i64, i64) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

declare dso_local i64 @invalidate_inode_pages2_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @dio_warn_stale_pagecache(%struct.TYPE_7__*) #1

declare dso_local i64 @sb_init_dio_done_wq(%struct.TYPE_6__*) #1

declare dso_local i32 @inode_dio_begin(%struct.inode*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i64 @iomap_apply(%struct.inode*, i64, i64, i32, %struct.iomap_ops*, %struct.iomap_dio*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @iomap_dio_set_error(%struct.iomap_dio*, i64) #1

declare dso_local i32 @WRITE_ONCE(i32, i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @blk_poll(i32*, i32*, i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @iomap_dio_complete(%struct.iomap_dio*) #1

declare dso_local i32 @kfree(%struct.iomap_dio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
