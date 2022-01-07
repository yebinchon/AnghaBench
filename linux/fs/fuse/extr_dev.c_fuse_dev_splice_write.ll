; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_splice_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_splice_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, %struct.pipe_buffer* }
%struct.pipe_buffer = type { i64, i64, i32, i32* }
%struct.file = type { i32 }
%struct.fuse_copy_state = type { i32, i32, %struct.pipe_inode_info*, %struct.pipe_buffer* }
%struct.fuse_dev = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@SPLICE_F_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.file*, i32*, i64, i32)* @fuse_dev_splice_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dev_splice_write(%struct.pipe_inode_info* %0, %struct.file* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pipe_buffer*, align 8
  %15 = alloca %struct.fuse_copy_state, align 8
  %16 = alloca %struct.fuse_dev*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.pipe_buffer*, align 8
  %20 = alloca %struct.pipe_buffer*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = call %struct.fuse_dev* @fuse_get_dev(%struct.file* %21)
  store %struct.fuse_dev* %22, %struct.fuse_dev** %16, align 8
  %23 = load %struct.fuse_dev*, %struct.fuse_dev** %16, align 8
  %24 = icmp ne %struct.fuse_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %230

28:                                               ; preds = %5
  %29 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %30 = call i32 @pipe_lock(%struct.pipe_inode_info* %29)
  %31 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %32 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.pipe_buffer* @kvmalloc_array(i32 %33, i32 32, i32 %34)
  store %struct.pipe_buffer* %35, %struct.pipe_buffer** %14, align 8
  %36 = load %struct.pipe_buffer*, %struct.pipe_buffer** %14, align 8
  %37 = icmp ne %struct.pipe_buffer* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %40 = call i32 @pipe_unlock(%struct.pipe_inode_info* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %230

43:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %76, %43
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %47 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %51, %52
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i1 [ false, %44 ], [ %53, %50 ]
  br i1 %55, label %56, label %79

56:                                               ; preds = %54
  %57 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %58 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %57, i32 0, i32 3
  %59 = load %struct.pipe_buffer*, %struct.pipe_buffer** %58, align 8
  %60 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %61 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %62, %63
  %65 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %66 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %64, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %59, i64 %70
  %72 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %56
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %44

79:                                               ; preds = %54
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %18, align 4
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %209

86:                                               ; preds = %79
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %17, align 8
  br label %88

88:                                               ; preds = %179, %86
  %89 = load i64, i64* %17, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %187

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %94 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp uge i32 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %100 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUG_ON(i32 %104)
  %106 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %107 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %106, i32 0, i32 3
  %108 = load %struct.pipe_buffer*, %struct.pipe_buffer** %107, align 8
  %109 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %110 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %108, i64 %112
  store %struct.pipe_buffer* %113, %struct.pipe_buffer** %19, align 8
  %114 = load %struct.pipe_buffer*, %struct.pipe_buffer** %14, align 8
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %114, i64 %116
  store %struct.pipe_buffer* %117, %struct.pipe_buffer** %20, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %120 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp uge i64 %118, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %91
  %124 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %125 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %126 = bitcast %struct.pipe_buffer* %124 to i8*
  %127 = bitcast %struct.pipe_buffer* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 32, i1 false)
  %128 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %129 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %128, i32 0, i32 3
  store i32* null, i32** %129, align 8
  %130 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %131 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add i32 %132, 1
  %134 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %135 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = and i32 %133, %137
  %139 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %140 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %142 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add i32 %143, -1
  store i32 %144, i32* %142, align 8
  br label %179

145:                                              ; preds = %91
  %146 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %147 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %148 = call i32 @pipe_buf_get(%struct.pipe_inode_info* %146, %struct.pipe_buffer* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  br label %209

151:                                              ; preds = %145
  %152 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %153 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %154 = bitcast %struct.pipe_buffer* %152 to i8*
  %155 = bitcast %struct.pipe_buffer* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 32, i1 false)
  %156 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %159 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i64, i64* %17, align 8
  %163 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %164 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %166 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %169 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %173 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %176 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = sub i64 %177, %174
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %151, %123
  %180 = load i32, i32* %12, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %12, align 4
  %182 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %183 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %17, align 8
  %186 = sub i64 %185, %184
  store i64 %186, i64* %17, align 8
  br label %88

187:                                              ; preds = %88
  %188 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %189 = call i32 @pipe_unlock(%struct.pipe_inode_info* %188)
  %190 = call i32 @fuse_copy_init(%struct.fuse_copy_state* %15, i32 0, i32* null)
  %191 = load %struct.pipe_buffer*, %struct.pipe_buffer** %14, align 8
  %192 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %15, i32 0, i32 3
  store %struct.pipe_buffer* %191, %struct.pipe_buffer** %192, align 8
  %193 = load i32, i32* %12, align 4
  %194 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %15, i32 0, i32 0
  store i32 %193, i32* %194, align 8
  %195 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %196 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %15, i32 0, i32 2
  store %struct.pipe_inode_info* %195, %struct.pipe_inode_info** %196, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @SPLICE_F_MOVE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %187
  %202 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %15, i32 0, i32 1
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %201, %187
  %204 = load %struct.fuse_dev*, %struct.fuse_dev** %16, align 8
  %205 = load i64, i64* %10, align 8
  %206 = call i32 @fuse_dev_do_write(%struct.fuse_dev* %204, %struct.fuse_copy_state* %15, i64 %205)
  store i32 %206, i32* %18, align 4
  %207 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %208 = call i32 @pipe_lock(%struct.pipe_inode_info* %207)
  br label %209

209:                                              ; preds = %203, %150, %85
  store i32 0, i32* %13, align 4
  br label %210

210:                                              ; preds = %221, %209
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %216 = load %struct.pipe_buffer*, %struct.pipe_buffer** %14, align 8
  %217 = load i32, i32* %13, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %216, i64 %218
  %220 = call i32 @pipe_buf_release(%struct.pipe_inode_info* %215, %struct.pipe_buffer* %219)
  br label %221

221:                                              ; preds = %214
  %222 = load i32, i32* %13, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %210

224:                                              ; preds = %210
  %225 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %226 = call i32 @pipe_unlock(%struct.pipe_inode_info* %225)
  %227 = load %struct.pipe_buffer*, %struct.pipe_buffer** %14, align 8
  %228 = call i32 @kvfree(%struct.pipe_buffer* %227)
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %224, %38, %25
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local %struct.fuse_dev* @fuse_get_dev(%struct.file*) #1

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local %struct.pipe_buffer* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pipe_buf_get(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i32 @fuse_copy_init(%struct.fuse_copy_state*, i32, i32*) #1

declare dso_local i32 @fuse_dev_do_write(%struct.fuse_dev*, %struct.fuse_copy_state*, i64) #1

declare dso_local i32 @pipe_buf_release(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

declare dso_local i32 @kvfree(%struct.pipe_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
