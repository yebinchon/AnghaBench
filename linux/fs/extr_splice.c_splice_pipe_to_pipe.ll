; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_splice_pipe_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_splice_pipe_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, %struct.pipe_buffer*, i32, i32 }
%struct.pipe_buffer = type { i64, i64, i32, i32* }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_inode_info*, i64, i32)* @splice_pipe_to_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splice_pipe_to_pipe(%struct.pipe_inode_info* %0, %struct.pipe_inode_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_buffer*, align 8
  %11 = alloca %struct.pipe_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %6, align 8
  store %struct.pipe_inode_info* %1, %struct.pipe_inode_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %86, %4
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ipipe_prep(%struct.pipe_inode_info* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %229

23:                                               ; preds = %15
  %24 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @opipe_prep(%struct.pipe_inode_info* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %229

31:                                               ; preds = %23
  %32 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %33 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %34 = call i32 @pipe_double_lock(%struct.pipe_inode_info* %32, %struct.pipe_inode_info* %33)
  br label %35

35:                                               ; preds = %208, %31
  %36 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %37 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @SIGPIPE, align 4
  %42 = load i32, i32* @current, align 4
  %43 = call i32 @send_sig(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EPIPE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %40
  br label %211

50:                                               ; preds = %35
  %51 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %52 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %57 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %211

61:                                               ; preds = %55, %50
  %62 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %63 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %68 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %71 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %66, %61
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %211

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %211

86:                                               ; preds = %78
  %87 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %88 = call i32 @pipe_unlock(%struct.pipe_inode_info* %87)
  %89 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %90 = call i32 @pipe_unlock(%struct.pipe_inode_info* %89)
  br label %15

91:                                               ; preds = %66
  %92 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %93 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %92, i32 0, i32 3
  %94 = load %struct.pipe_buffer*, %struct.pipe_buffer** %93, align 8
  %95 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %96 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %94, i64 %98
  store %struct.pipe_buffer* %99, %struct.pipe_buffer** %10, align 8
  %100 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %101 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %104 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %102, %105
  %107 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %108 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  %111 = and i32 %106, %110
  store i32 %111, i32* %13, align 4
  %112 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %113 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %112, i32 0, i32 3
  %114 = load %struct.pipe_buffer*, %struct.pipe_buffer** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %114, i64 %116
  store %struct.pipe_buffer* %117, %struct.pipe_buffer** %11, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %120 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp uge i64 %118, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %91
  %124 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %125 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %126 = bitcast %struct.pipe_buffer* %124 to i8*
  %127 = bitcast %struct.pipe_buffer* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 32, i1 false)
  %128 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %129 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %128, i32 0, i32 3
  store i32* null, i32** %129, align 8
  %130 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %131 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %135 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  %138 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %139 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = and i32 %137, %141
  %143 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %144 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %146 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 8
  store i32 1, i32* %14, align 4
  br label %195

149:                                              ; preds = %91
  %150 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %151 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %152 = call i32 @pipe_buf_get(%struct.pipe_inode_info* %150, %struct.pipe_buffer* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* @EFAULT, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %157, %154
  br label %211

161:                                              ; preds = %149
  %162 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %163 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %164 = bitcast %struct.pipe_buffer* %162 to i8*
  %165 = bitcast %struct.pipe_buffer* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 %165, i64 32, i1 false)
  %166 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %169 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %173 = call i32 @pipe_buf_mark_unmergeable(%struct.pipe_buffer* %172)
  %174 = load i64, i64* %8, align 8
  %175 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %176 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %178 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %182 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %185 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %189 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %192 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = sub i64 %193, %190
  store i64 %194, i64* %192, align 8
  br label %195

195:                                              ; preds = %161, %123
  %196 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %197 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %12, align 4
  %203 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %204 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %8, align 8
  %207 = sub i64 %206, %205
  store i64 %207, i64* %8, align 8
  br label %208

208:                                              ; preds = %195
  %209 = load i64, i64* %8, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %35, label %211

211:                                              ; preds = %208, %160, %83, %77, %60, %49
  %212 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %213 = call i32 @pipe_unlock(%struct.pipe_inode_info* %212)
  %214 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %215 = call i32 @pipe_unlock(%struct.pipe_inode_info* %214)
  %216 = load i32, i32* %12, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %220 = call i32 @wakeup_pipe_readers(%struct.pipe_inode_info* %219)
  br label %221

221:                                              ; preds = %218, %211
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %226 = call i32 @wakeup_pipe_writers(%struct.pipe_inode_info* %225)
  br label %227

227:                                              ; preds = %224, %221
  %228 = load i32, i32* %12, align 4
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %227, %29, %21
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @ipipe_prep(%struct.pipe_inode_info*, i32) #1

declare dso_local i32 @opipe_prep(%struct.pipe_inode_info*, i32) #1

declare dso_local i32 @pipe_double_lock(%struct.pipe_inode_info*, %struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pipe_buf_get(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i32 @pipe_buf_mark_unmergeable(%struct.pipe_buffer*) #1

declare dso_local i32 @wakeup_pipe_readers(%struct.pipe_inode_info*) #1

declare dso_local i32 @wakeup_pipe_writers(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
