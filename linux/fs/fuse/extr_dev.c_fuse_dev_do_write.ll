; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dev = type { %struct.fuse_pqueue, %struct.fuse_conn* }
%struct.fuse_pqueue = type { i32, i64, i32 }
%struct.fuse_conn = type { i32, i32 }
%struct.fuse_copy_state = type { i64, %struct.fuse_req* }
%struct.fuse_req = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.fuse_out_header }
%struct.fuse_out_header = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FUSE_INT_REQ_BIT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FR_SENT = common dso_local global i32 0, align 4
@FR_LOCKED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FR_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_dev*, %struct.fuse_copy_state*, i64)* @fuse_dev_do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dev_do_write(%struct.fuse_dev* %0, %struct.fuse_copy_state* %1, i64 %2) #0 {
  %4 = alloca %struct.fuse_dev*, align 8
  %5 = alloca %struct.fuse_copy_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca %struct.fuse_pqueue*, align 8
  %10 = alloca %struct.fuse_req*, align 8
  %11 = alloca %struct.fuse_out_header, align 8
  store %struct.fuse_dev* %0, %struct.fuse_dev** %4, align 8
  store %struct.fuse_copy_state* %1, %struct.fuse_copy_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.fuse_dev*, %struct.fuse_dev** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %12, i32 0, i32 1
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  store %struct.fuse_conn* %14, %struct.fuse_conn** %8, align 8
  %15 = load %struct.fuse_dev*, %struct.fuse_dev** %4, align 8
  %16 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %15, i32 0, i32 0
  store %struct.fuse_pqueue* %16, %struct.fuse_pqueue** %9, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %226

22:                                               ; preds = %3
  %23 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %24 = call i32 @fuse_copy_one(%struct.fuse_copy_state* %23, %struct.fuse_out_header* %11, i32 16)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %237

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  %31 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %237

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %42 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %44, 16
  %46 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %47 = call i32 @fuse_notify(%struct.fuse_conn* %41, i32 %43, i64 %45, %struct.fuse_copy_state* %46)
  store i32 %47, i32* %7, align 4
  br label %226

48:                                               ; preds = %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  %51 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, -1000
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %48
  br label %237

59:                                               ; preds = %54
  %60 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %61 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  store %struct.fuse_req* null, %struct.fuse_req** %10, align 8
  %63 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %64 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %69 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FUSE_INT_REQ_BIT, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call %struct.fuse_req* @request_find(%struct.fuse_pqueue* %68, i32 %73)
  store %struct.fuse_req* %74, %struct.fuse_req** %10, align 8
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %79 = icmp ne %struct.fuse_req* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %82 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  br label %237

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FUSE_INT_REQ_BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %127

90:                                               ; preds = %84
  %91 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %92 = call i32 @__fuse_get_request(%struct.fuse_req* %91)
  %93 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %94 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  store i32 0, i32* %7, align 4
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 16
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %123

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ENOSYS, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %109 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %122

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %118 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %117, i32 0, i32 1
  %119 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %120 = call i32 @queue_interrupt(i32* %118, %struct.fuse_req* %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %116, %110
  br label %122

122:                                              ; preds = %121, %107
  br label %123

123:                                              ; preds = %122, %98
  %124 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %125 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %126 = call i32 @fuse_put_request(%struct.fuse_conn* %124, %struct.fuse_req* %125)
  br label %237

127:                                              ; preds = %84
  %128 = load i32, i32* @FR_SENT, align 4
  %129 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %130 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %129, i32 0, i32 1
  %131 = call i32 @clear_bit(i32 %128, i32* %130)
  %132 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %133 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %132, i32 0, i32 0
  %134 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %135 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %134, i32 0, i32 2
  %136 = call i32 @list_move(i32* %133, i32* %135)
  %137 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %138 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = bitcast %struct.fuse_out_header* %139 to i8*
  %141 = bitcast %struct.fuse_out_header* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  %142 = load i32, i32* @FR_LOCKED, align 4
  %143 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %144 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %143, i32 0, i32 1
  %145 = call i32 @set_bit(i32 %142, i32* %144)
  %146 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %147 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %150 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %151 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %150, i32 0, i32 1
  store %struct.fuse_req* %149, %struct.fuse_req** %151, align 8
  %152 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %153 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %127
  %159 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %160 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %158, %127
  %162 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %11, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i64, i64* %6, align 8
  %167 = icmp ne i64 %166, 16
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  br label %172

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %168
  %173 = phi i32 [ %170, %168 ], [ 0, %171 ]
  store i32 %173, i32* %7, align 4
  br label %181

174:                                              ; preds = %161
  %175 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %176 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %177 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %176, i32 0, i32 3
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = call i32 @copy_out_args(%struct.fuse_copy_state* %175, %struct.TYPE_4__* %178, i64 %179)
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %174, %172
  %182 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %183 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %182)
  %184 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %185 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %184, i32 0, i32 0
  %186 = call i32 @spin_lock(i32* %185)
  %187 = load i32, i32* @FR_LOCKED, align 4
  %188 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %189 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %188, i32 0, i32 1
  %190 = call i32 @clear_bit(i32 %187, i32* %189)
  %191 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %192 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %181
  %196 = load i32, i32* @ENOENT, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %7, align 4
  br label %209

198:                                              ; preds = %181
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  %204 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %205 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.fuse_out_header, %struct.fuse_out_header* %206, i32 0, i32 2
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %201, %198
  br label %209

209:                                              ; preds = %208, %195
  %210 = load i32, i32* @FR_PRIVATE, align 4
  %211 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %212 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %211, i32 0, i32 1
  %213 = call i32 @test_bit(i32 %210, i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %209
  %216 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %217 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %216, i32 0, i32 0
  %218 = call i32 @list_del_init(i32* %217)
  br label %219

219:                                              ; preds = %215, %209
  %220 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %9, align 8
  %221 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %220, i32 0, i32 0
  %222 = call i32 @spin_unlock(i32* %221)
  %223 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %224 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %225 = call i32 @fuse_request_end(%struct.fuse_conn* %223, %struct.fuse_req* %224)
  br label %226

226:                                              ; preds = %237, %219, %40, %21
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  br label %234

232:                                              ; preds = %226
  %233 = load i64, i64* %6, align 8
  br label %234

234:                                              ; preds = %232, %229
  %235 = phi i64 [ %231, %229 ], [ %233, %232 ]
  %236 = trunc i64 %235 to i32
  ret i32 %236

237:                                              ; preds = %123, %80, %58, %35, %27
  %238 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %239 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %238)
  br label %226
}

declare dso_local i32 @fuse_copy_one(%struct.fuse_copy_state*, %struct.fuse_out_header*, i32) #1

declare dso_local i32 @fuse_notify(%struct.fuse_conn*, i32, i64, %struct.fuse_copy_state*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fuse_req* @request_find(%struct.fuse_pqueue*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__fuse_get_request(%struct.fuse_req*) #1

declare dso_local i32 @queue_interrupt(i32*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @copy_out_args(%struct.fuse_copy_state*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @fuse_copy_finish(%struct.fuse_copy_state*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @fuse_request_end(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
