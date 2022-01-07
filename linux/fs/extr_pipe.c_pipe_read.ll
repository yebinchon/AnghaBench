; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.pipe_buffer* }
%struct.pipe_buffer = type { i64, i64, i32, i32 }
%struct.iov_iter = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@PIPE_BUF_FLAG_PACKET = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @pipe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pipe_read(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pipe_buffer*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %17 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %18 = call i64 @iov_iter_count(%struct.iov_iter* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 0
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %7, align 8
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %23, align 8
  store %struct.pipe_inode_info* %24, %struct.pipe_inode_info** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %233

31:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %32 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %33 = call i32 @__pipe_lock(%struct.pipe_inode_info* %32)
  br label %34

34:                                               ; preds = %205, %152, %31
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %36 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %149

40:                                               ; preds = %34
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %42 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %45 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %44, i32 0, i32 7
  %46 = load %struct.pipe_buffer*, %struct.pipe_buffer** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %46, i64 %48
  store %struct.pipe_buffer* %49, %struct.pipe_buffer** %13, align 8
  %50 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %51 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %14, align 8
  br label %58

58:                                               ; preds = %56, %40
  %59 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %60 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %61 = call i32 @pipe_buf_confirm(%struct.pipe_inode_info* %59, %struct.pipe_buffer* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %67, %64
  br label %208

71:                                               ; preds = %58
  %72 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %73 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %76 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %80 = call i64 @copy_page_to_iter(i32 %74, i64 %77, i64 %78, %struct.iov_iter* %79)
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp ult i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %71
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* @EFAULT, align 8
  %92 = sub i64 0, %91
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %90, %87
  br label %208

94:                                               ; preds = %71
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %100 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %105 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %109 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PIPE_BUF_FLAG_PACKET, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %94
  %115 = load i64, i64* %14, align 8
  store i64 %115, i64* %6, align 8
  %116 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %117 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %94
  %119 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %120 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %118
  %124 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %125 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  %126 = call i32 @pipe_buf_release(%struct.pipe_inode_info* %124, %struct.pipe_buffer* %125)
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %130 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = and i32 %128, %132
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %136 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %11, align 4
  %139 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %140 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  store i32 1, i32* %9, align 4
  br label %141

141:                                              ; preds = %123, %118
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %6, align 8
  %144 = sub i64 %143, %142
  store i64 %144, i64* %6, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  br label %208

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148, %34
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %34

153:                                              ; preds = %149
  %154 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %155 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %208

159:                                              ; preds = %153
  %160 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %161 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %159
  %165 = load i64, i64* %10, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %208

168:                                              ; preds = %164
  %169 = load %struct.file*, %struct.file** %7, align 8
  %170 = getelementptr inbounds %struct.file, %struct.file* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @O_NONBLOCK, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i64, i64* @EAGAIN, align 8
  %177 = sub i64 0, %176
  store i64 %177, i64* %10, align 8
  br label %208

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178, %159
  %180 = load i32, i32* @current, align 4
  %181 = call i64 @signal_pending(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load i64, i64* %10, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i64, i64* @ERESTARTSYS, align 8
  %188 = sub i64 0, %187
  store i64 %188, i64* %10, align 8
  br label %189

189:                                              ; preds = %186, %183
  br label %208

190:                                              ; preds = %179
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %195 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %194, i32 0, i32 4
  %196 = load i32, i32* @EPOLLOUT, align 4
  %197 = load i32, i32* @EPOLLWRNORM, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @wake_up_interruptible_sync_poll(i32* %195, i32 %198)
  %200 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %201 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %200, i32 0, i32 3
  %202 = load i32, i32* @SIGIO, align 4
  %203 = load i32, i32* @POLL_OUT, align 4
  %204 = call i32 @kill_fasync(i32* %201, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %193, %190
  %206 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %207 = call i32 @pipe_wait(%struct.pipe_inode_info* %206)
  br label %34

208:                                              ; preds = %189, %175, %167, %158, %147, %93, %70
  %209 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %210 = call i32 @__pipe_unlock(%struct.pipe_inode_info* %209)
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %208
  %214 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %215 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %214, i32 0, i32 4
  %216 = load i32, i32* @EPOLLOUT, align 4
  %217 = load i32, i32* @EPOLLWRNORM, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @wake_up_interruptible_sync_poll(i32* %215, i32 %218)
  %220 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %221 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %220, i32 0, i32 3
  %222 = load i32, i32* @SIGIO, align 4
  %223 = load i32, i32* @POLL_OUT, align 4
  %224 = call i32 @kill_fasync(i32* %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %213, %208
  %226 = load i64, i64* %10, align 8
  %227 = icmp ugt i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load %struct.file*, %struct.file** %7, align 8
  %230 = call i32 @file_accessed(%struct.file* %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i64, i64* %10, align 8
  store i64 %232, i64* %3, align 8
  br label %233

233:                                              ; preds = %231, %30
  %234 = load i64, i64* %3, align 8
  ret i64 %234
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_buf_confirm(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i64 @copy_page_to_iter(i32, i64, i64, %struct.iov_iter*) #1

declare dso_local i32 @pipe_buf_release(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @wake_up_interruptible_sync_poll(i32*, i32) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i32 @__pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
