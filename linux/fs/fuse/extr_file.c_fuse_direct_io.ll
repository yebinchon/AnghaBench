; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_direct_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_direct_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.fuse_io_priv = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.file* }
%struct.file = type { %struct.fuse_file*, %struct.TYPE_7__* }
%struct.fuse_file = type { %struct.fuse_conn* }
%struct.fuse_conn = type { i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.fuse_io_args = type { i32, %struct.TYPE_9__, %struct.fuse_io_priv* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@FUSE_DIO_WRITE = common dso_local global i32 0, align 4
@FUSE_DIO_CUSE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@CAP_FSETID = common dso_local global i32 0, align 4
@FUSE_WRITE_KILL_PRIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fuse_direct_io(%struct.fuse_io_priv* %0, %struct.iov_iter* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.fuse_io_priv*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.fuse_file*, align 8
  %15 = alloca %struct.fuse_conn*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.fuse_io_args*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %6, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FUSE_DIO_WRITE, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FUSE_DIO_CUSE, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %6, align 8
  %35 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.file*, %struct.file** %37, align 8
  store %struct.file* %38, %struct.file** %12, align 8
  %39 = load %struct.file*, %struct.file** %12, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  store %struct.inode* %43, %struct.inode** %13, align 8
  %44 = load %struct.file*, %struct.file** %12, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load %struct.fuse_file*, %struct.fuse_file** %45, align 8
  store %struct.fuse_file* %46, %struct.fuse_file** %14, align 8
  %47 = load %struct.fuse_file*, %struct.fuse_file** %14, align 8
  %48 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %47, i32 0, i32 0
  %49 = load %struct.fuse_conn*, %struct.fuse_conn** %48, align 8
  store %struct.fuse_conn* %49, %struct.fuse_conn** %15, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %4
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %15, align 8
  %54 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  br label %60

56:                                               ; preds = %4
  %57 = load %struct.fuse_conn*, %struct.fuse_conn** %15, align 8
  %58 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i64 [ %55, %52 ], [ %59, %56 ]
  store i64 %61, i64* %16, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %17, align 8
  %64 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %65 = call i64 @iov_iter_count(%struct.iov_iter* %64)
  store i64 %65, i64* %18, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* @PAGE_SHIFT, align 8
  %68 = lshr i64 %66, %67
  store i64 %68, i64* %19, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = add i64 %69, %70
  %72 = sub i64 %71, 1
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = lshr i64 %72, %73
  store i64 %74, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %75 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %76 = load %struct.fuse_conn*, %struct.fuse_conn** %15, align 8
  %77 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @iov_iter_npages(%struct.iov_iter* %75, i32 %78)
  store i32 %79, i32* %24, align 4
  %80 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %6, align 8
  %81 = load i32, i32* %24, align 4
  %82 = call %struct.fuse_io_args* @fuse_io_alloc(%struct.fuse_io_priv* %80, i32 %81)
  store %struct.fuse_io_args* %82, %struct.fuse_io_args** %23, align 8
  %83 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %84 = icmp ne %struct.fuse_io_args* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %60
  %86 = load i64, i64* @ENOMEM, align 8
  %87 = sub i64 0, %86
  store i64 %87, i64* %5, align 8
  br label %257

88:                                               ; preds = %60
  %89 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %6, align 8
  %90 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %91 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %90, i32 0, i32 2
  store %struct.fuse_io_priv* %89, %struct.fuse_io_priv** %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %88
  %95 = load %struct.inode*, %struct.inode** %13, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %20, align 8
  %98 = call i64 @fuse_range_is_writeback(%struct.inode* %95, i64 %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.inode*, %struct.inode** %13, align 8
  %105 = call i32 @inode_lock(%struct.inode* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.inode*, %struct.inode** %13, align 8
  %108 = call i32 @fuse_sync_writes(%struct.inode* %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load %struct.inode*, %struct.inode** %13, align 8
  %113 = call i32 @inode_unlock(%struct.inode* %112)
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %94, %88
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %120 = call i64 @iter_is_iovec(%struct.iov_iter* %119)
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i1 [ false, %115 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %6, align 8
  %126 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %234, %122
  %128 = load i64, i64* %18, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %235

130:                                              ; preds = %127
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %26, align 4
  %134 = load i64, i64* %18, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i64 @min(i64 %134, i64 %135)
  store i64 %136, i64* %27, align 8
  %137 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %138 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %137, i32 0, i32 0
  %139 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %24, align 4
  %142 = call i32 @fuse_get_user_pages(i32* %138, %struct.iov_iter* %139, i64* %27, i32 %140, i32 %141)
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %22, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %130
  %146 = load i64, i64* %27, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %235

149:                                              ; preds = %145, %130
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i32, i32* @CAP_FSETID, align 4
  %154 = call i32 @capable(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* @FUSE_WRITE_KILL_PRIV, align 4
  %158 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %159 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %157
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %156, %152
  %165 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* %27, align 8
  %168 = load i32, i32* %26, align 4
  %169 = call i64 @fuse_send_write(%struct.fuse_io_args* %165, i64 %166, i64 %167, i32 %168)
  store i64 %169, i64* %25, align 8
  br label %176

170:                                              ; preds = %149
  %171 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i32, i32* %26, align 4
  %175 = call i64 @fuse_send_read(%struct.fuse_io_args* %171, i64 %172, i64 %173, i32 %174)
  store i64 %175, i64* %25, align 8
  br label %176

176:                                              ; preds = %170, %164
  %177 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %6, align 8
  %178 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i64, i64* %25, align 8
  %183 = icmp ult i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %181, %176
  %185 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %186 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %185, i32 0, i32 0
  %187 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %6, align 8
  %188 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @fuse_release_user_pages(i32* %186, i32 %189)
  %191 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %192 = call i32 @fuse_io_free(%struct.fuse_io_args* %191)
  br label %193

193:                                              ; preds = %184, %181
  store %struct.fuse_io_args* null, %struct.fuse_io_args** %23, align 8
  %194 = load i64, i64* %25, align 8
  %195 = icmp ult i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i64, i64* %25, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %22, align 4
  br label %235

199:                                              ; preds = %193
  %200 = load i64, i64* %25, align 8
  %201 = load i64, i64* %27, align 8
  %202 = icmp ugt i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @WARN_ON(i32 %203)
  %205 = load i64, i64* %25, align 8
  %206 = load i64, i64* %18, align 8
  %207 = sub i64 %206, %205
  store i64 %207, i64* %18, align 8
  %208 = load i64, i64* %25, align 8
  %209 = load i64, i64* %21, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %21, align 8
  %211 = load i64, i64* %25, align 8
  %212 = load i64, i64* %17, align 8
  %213 = add i64 %212, %211
  store i64 %213, i64* %17, align 8
  %214 = load i64, i64* %25, align 8
  %215 = load i64, i64* %27, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %199
  br label %235

218:                                              ; preds = %199
  %219 = load i64, i64* %18, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %218
  %222 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %223 = load %struct.fuse_conn*, %struct.fuse_conn** %15, align 8
  %224 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @iov_iter_npages(%struct.iov_iter* %222, i32 %225)
  store i32 %226, i32* %24, align 4
  %227 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %6, align 8
  %228 = load i32, i32* %24, align 4
  %229 = call %struct.fuse_io_args* @fuse_io_alloc(%struct.fuse_io_priv* %227, i32 %228)
  store %struct.fuse_io_args* %229, %struct.fuse_io_args** %23, align 8
  %230 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %231 = icmp ne %struct.fuse_io_args* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %221
  br label %235

233:                                              ; preds = %221
  br label %234

234:                                              ; preds = %233, %218
  br label %127

235:                                              ; preds = %232, %217, %196, %148, %127
  %236 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %237 = icmp ne %struct.fuse_io_args* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load %struct.fuse_io_args*, %struct.fuse_io_args** %23, align 8
  %240 = call i32 @fuse_io_free(%struct.fuse_io_args* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i64, i64* %21, align 8
  %243 = icmp ugt i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i64, i64* %17, align 8
  %246 = load i64*, i64** %8, align 8
  store i64 %245, i64* %246, align 8
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i64, i64* %21, align 8
  %249 = icmp ugt i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load i64, i64* %21, align 8
  br label %255

252:                                              ; preds = %247
  %253 = load i32, i32* %22, align 4
  %254 = sext i32 %253 to i64
  br label %255

255:                                              ; preds = %252, %250
  %256 = phi i64 [ %251, %250 ], [ %254, %252 ]
  store i64 %256, i64* %5, align 8
  br label %257

257:                                              ; preds = %255, %85
  %258 = load i64, i64* %5, align 8
  ret i64 %258
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_npages(%struct.iov_iter*, i32) #1

declare dso_local %struct.fuse_io_args* @fuse_io_alloc(%struct.fuse_io_priv*, i32) #1

declare dso_local i64 @fuse_range_is_writeback(%struct.inode*, i64, i64) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fuse_sync_writes(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i64 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @fuse_get_user_pages(i32*, %struct.iov_iter*, i64*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @fuse_send_write(%struct.fuse_io_args*, i64, i64, i32) #1

declare dso_local i64 @fuse_send_read(%struct.fuse_io_args*, i64, i64, i32) #1

declare dso_local i32 @fuse_release_user_pages(i32*, i32) #1

declare dso_local i32 @fuse_io_free(%struct.fuse_io_args*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
