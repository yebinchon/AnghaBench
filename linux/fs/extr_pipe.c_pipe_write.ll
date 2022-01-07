; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32, i32, i32, i32, %struct.page*, %struct.pipe_buffer*, i32 }
%struct.page = type { i32 }
%struct.pipe_buffer = type { i32, i32, i64, i32*, %struct.page* }
%struct.iov_iter = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@anon_pipe_buf_ops = common dso_local global i32 0, align 4
@packet_pipe_buf_ops = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_PACKET = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @pipe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_write(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pipe_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pipe_buffer*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load %struct.file*, %struct.file** %22, align 8
  store %struct.file* %23, %struct.file** %6, align 8
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %25, align 8
  store %struct.pipe_inode_info* %26, %struct.pipe_inode_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %28 = call i64 @iov_iter_count(%struct.iov_iter* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %367

35:                                               ; preds = %2
  %36 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %37 = call i32 @__pipe_lock(%struct.pipe_inode_info* %36)
  %38 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %39 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @SIGPIPE, align 4
  %44 = load i32, i32* @current, align 4
  %45 = call i32 @send_sig(i32 %43, i32 %44, i32 0)
  %46 = load i32, i32* @EPIPE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %325

48:                                               ; preds = %35
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = and i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %56 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %134

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %134

62:                                               ; preds = %59
  %63 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %64 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %67 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %72 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %70, %74
  store i32 %75, i32* %12, align 4
  %76 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %77 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %76, i32 0, i32 7
  %78 = load %struct.pipe_buffer*, %struct.pipe_buffer** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %78, i64 %80
  store %struct.pipe_buffer* %81, %struct.pipe_buffer** %13, align 8
  %82 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %83 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %86 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %14, align 4
  %89 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %90 = call i64 @pipe_buf_can_merge(%struct.pipe_buffer* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %133

92:                                               ; preds = %62
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %133

98:                                               ; preds = %92
  %99 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %100 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %101 = call i32 @pipe_buf_confirm(%struct.pipe_inode_info* %99, %struct.pipe_buffer* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %325

105:                                              ; preds = %98
  %106 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %107 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %106, i32 0, i32 4
  %108 = load %struct.page*, %struct.page** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %112 = call i32 @copy_page_from_iter(%struct.page* %108, i32 %109, i32 %110, %struct.iov_iter* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %105
  %120 = load i32, i32* @EFAULT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %325

122:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %125 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %129 = call i64 @iov_iter_count(%struct.iov_iter* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %122
  br label %325

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %92, %62
  br label %134

134:                                              ; preds = %133, %59, %48
  br label %135

135:                                              ; preds = %313, %272, %134
  %136 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %137 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @SIGPIPE, align 4
  %142 = load i32, i32* @current, align 4
  %143 = call i32 @send_sig(i32 %141, i32 %142, i32 0)
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* @EPIPE, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %140
  br label %324

150:                                              ; preds = %135
  %151 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %152 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %156 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %266

159:                                              ; preds = %150
  %160 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %161 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %162, %163
  %165 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %166 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, 1
  %169 = and i32 %164, %168
  store i32 %169, i32* %16, align 4
  %170 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %171 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %170, i32 0, i32 7
  %172 = load %struct.pipe_buffer*, %struct.pipe_buffer** %171, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %172, i64 %174
  store %struct.pipe_buffer* %175, %struct.pipe_buffer** %17, align 8
  %176 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %177 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %176, i32 0, i32 6
  %178 = load %struct.page*, %struct.page** %177, align 8
  store %struct.page* %178, %struct.page** %18, align 8
  %179 = load %struct.page*, %struct.page** %18, align 8
  %180 = icmp ne %struct.page* %179, null
  br i1 %180, label %205, label %181

181:                                              ; preds = %159
  %182 = load i32, i32* @GFP_HIGHUSER, align 4
  %183 = load i32, i32* @__GFP_ACCOUNT, align 4
  %184 = or i32 %182, %183
  %185 = call %struct.page* @alloc_page(i32 %184)
  store %struct.page* %185, %struct.page** %18, align 8
  %186 = load %struct.page*, %struct.page** %18, align 8
  %187 = icmp ne %struct.page* %186, null
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %181
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %199

196:                                              ; preds = %192
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  br label %199

199:                                              ; preds = %196, %195
  %200 = phi i32 [ %193, %195 ], [ %198, %196 ]
  store i32 %200, i32* %8, align 4
  br label %324

201:                                              ; preds = %181
  %202 = load %struct.page*, %struct.page** %18, align 8
  %203 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %204 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %203, i32 0, i32 6
  store %struct.page* %202, %struct.page** %204, align 8
  br label %205

205:                                              ; preds = %201, %159
  store i32 1, i32* %9, align 4
  %206 = load %struct.page*, %struct.page** %18, align 8
  %207 = load i32, i32* @PAGE_SIZE, align 4
  %208 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %209 = call i32 @copy_page_from_iter(%struct.page* %206, i32 0, i32 %207, %struct.iov_iter* %208)
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @PAGE_SIZE, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %205
  %214 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %215 = call i64 @iov_iter_count(%struct.iov_iter* %214)
  %216 = icmp ne i64 %215, 0
  br label %217

217:                                              ; preds = %213, %205
  %218 = phi i1 [ false, %205 ], [ %216, %213 ]
  %219 = zext i1 %218 to i32
  %220 = call i64 @unlikely(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* @EFAULT, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %225, %222
  br label %324

229:                                              ; preds = %217
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %8, align 4
  %233 = load %struct.page*, %struct.page** %18, align 8
  %234 = load %struct.pipe_buffer*, %struct.pipe_buffer** %17, align 8
  %235 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %234, i32 0, i32 4
  store %struct.page* %233, %struct.page** %235, align 8
  %236 = load %struct.pipe_buffer*, %struct.pipe_buffer** %17, align 8
  %237 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %236, i32 0, i32 3
  store i32* @anon_pipe_buf_ops, i32** %237, align 8
  %238 = load %struct.pipe_buffer*, %struct.pipe_buffer** %17, align 8
  %239 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load i32, i32* %19, align 4
  %241 = load %struct.pipe_buffer*, %struct.pipe_buffer** %17, align 8
  %242 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load %struct.pipe_buffer*, %struct.pipe_buffer** %17, align 8
  %244 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %243, i32 0, i32 2
  store i64 0, i64* %244, align 8
  %245 = load %struct.file*, %struct.file** %6, align 8
  %246 = call i64 @is_packetized(%struct.file* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %229
  %249 = load %struct.pipe_buffer*, %struct.pipe_buffer** %17, align 8
  %250 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %249, i32 0, i32 3
  store i32* @packet_pipe_buf_ops, i32** %250, align 8
  %251 = load i64, i64* @PIPE_BUF_FLAG_PACKET, align 8
  %252 = load %struct.pipe_buffer*, %struct.pipe_buffer** %17, align 8
  %253 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %252, i32 0, i32 2
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %248, %229
  %255 = load i32, i32* %15, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %15, align 4
  %257 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %258 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %260 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %259, i32 0, i32 6
  store %struct.page* null, %struct.page** %260, align 8
  %261 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %262 = call i64 @iov_iter_count(%struct.iov_iter* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %254
  br label %324

265:                                              ; preds = %254
  br label %266

266:                                              ; preds = %265, %150
  %267 = load i32, i32* %15, align 4
  %268 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %269 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  br label %135

273:                                              ; preds = %266
  %274 = load %struct.file*, %struct.file** %6, align 8
  %275 = getelementptr inbounds %struct.file, %struct.file* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @O_NONBLOCK, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %273
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* @EAGAIN, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %283, %280
  br label %324

287:                                              ; preds = %273
  %288 = load i32, i32* @current, align 4
  %289 = call i64 @signal_pending(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %287
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* @ERESTARTSYS, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %8, align 4
  br label %297

297:                                              ; preds = %294, %291
  br label %324

298:                                              ; preds = %287
  %299 = load i32, i32* %9, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %298
  %302 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %303 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %302, i32 0, i32 4
  %304 = load i32, i32* @EPOLLIN, align 4
  %305 = load i32, i32* @EPOLLRDNORM, align 4
  %306 = or i32 %304, %305
  %307 = call i32 @wake_up_interruptible_sync_poll(i32* %303, i32 %306)
  %308 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %309 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %308, i32 0, i32 3
  %310 = load i32, i32* @SIGIO, align 4
  %311 = load i32, i32* @POLL_IN, align 4
  %312 = call i32 @kill_fasync(i32* %309, i32 %310, i32 %311)
  store i32 0, i32* %9, align 4
  br label %313

313:                                              ; preds = %301, %298
  %314 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %315 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 4
  %318 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %319 = call i32 @pipe_wait(%struct.pipe_inode_info* %318)
  %320 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %321 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %321, align 4
  br label %135

324:                                              ; preds = %297, %286, %264, %228, %199, %149
  br label %325

325:                                              ; preds = %324, %131, %119, %104, %42
  %326 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %327 = call i32 @__pipe_unlock(%struct.pipe_inode_info* %326)
  %328 = load i32, i32* %9, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %342

330:                                              ; preds = %325
  %331 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %332 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %331, i32 0, i32 4
  %333 = load i32, i32* @EPOLLIN, align 4
  %334 = load i32, i32* @EPOLLRDNORM, align 4
  %335 = or i32 %333, %334
  %336 = call i32 @wake_up_interruptible_sync_poll(i32* %332, i32 %335)
  %337 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %338 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %337, i32 0, i32 3
  %339 = load i32, i32* @SIGIO, align 4
  %340 = load i32, i32* @POLL_IN, align 4
  %341 = call i32 @kill_fasync(i32* %338, i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %330, %325
  %343 = load i32, i32* %8, align 4
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %365

345:                                              ; preds = %342
  %346 = load %struct.file*, %struct.file** %6, align 8
  %347 = call %struct.TYPE_2__* @file_inode(%struct.file* %346)
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @sb_start_write_trylock(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %365

352:                                              ; preds = %345
  %353 = load %struct.file*, %struct.file** %6, align 8
  %354 = call i32 @file_update_time(%struct.file* %353)
  store i32 %354, i32* %20, align 4
  %355 = load i32, i32* %20, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %352
  %358 = load i32, i32* %20, align 4
  store i32 %358, i32* %8, align 4
  br label %359

359:                                              ; preds = %357, %352
  %360 = load %struct.file*, %struct.file** %6, align 8
  %361 = call %struct.TYPE_2__* @file_inode(%struct.file* %360)
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @sb_end_write(i32 %363)
  br label %365

365:                                              ; preds = %359, %345, %342
  %366 = load i32, i32* %8, align 4
  store i32 %366, i32* %3, align 4
  br label %367

367:                                              ; preds = %365, %34
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @pipe_buf_can_merge(%struct.pipe_buffer*) #1

declare dso_local i32 @pipe_buf_confirm(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i32 @copy_page_from_iter(%struct.page*, i32, i32, %struct.iov_iter*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @is_packetized(%struct.file*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @wake_up_interruptible_sync_poll(i32*, i32) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i32 @__pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i64 @sb_start_write_trylock(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @sb_end_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
