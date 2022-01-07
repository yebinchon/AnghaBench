; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_link_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_link_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, i64, %struct.pipe_buffer*, i32 }
%struct.pipe_buffer = type { i64, i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_inode_info*, i64, i32)* @link_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_pipe(%struct.pipe_inode_info* %0, %struct.pipe_inode_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_buffer*, align 8
  %10 = alloca %struct.pipe_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_inode_info* %1, %struct.pipe_inode_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %15 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %16 = call i32 @pipe_double_lock(%struct.pipe_inode_info* %14, %struct.pipe_inode_info* %15)
  br label %17

17:                                               ; preds = %133, %4
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %19 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @SIGPIPE, align 4
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @send_sig(i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EPIPE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %22
  br label %136

32:                                               ; preds = %17
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %35 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %43 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %32
  br label %136

47:                                               ; preds = %38
  %48 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %49 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %48, i32 0, i32 4
  %50 = load %struct.pipe_buffer*, %struct.pipe_buffer** %49, align 8
  %51 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %52 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %57 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %50, i64 %61
  store %struct.pipe_buffer* %62, %struct.pipe_buffer** %9, align 8
  %63 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %64 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %67 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  %70 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %71 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %69, %73
  store i32 %74, i32* %13, align 4
  %75 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %76 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %77 = call i32 @pipe_buf_get(%struct.pipe_inode_info* %75, %struct.pipe_buffer* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %47
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %136

86:                                               ; preds = %47
  %87 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %88 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %87, i32 0, i32 4
  %89 = load %struct.pipe_buffer*, %struct.pipe_buffer** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %89, i64 %91
  store %struct.pipe_buffer* %92, %struct.pipe_buffer** %10, align 8
  %93 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %94 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %95 = bitcast %struct.pipe_buffer* %93 to i8*
  %96 = bitcast %struct.pipe_buffer* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 16, i1 false)
  %97 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %100 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %104 = call i32 @pipe_buf_mark_unmergeable(%struct.pipe_buffer* %103)
  %105 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %106 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %86
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %113 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %86
  %115 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %116 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %120 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %127 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %114
  %134 = load i64, i64* %7, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %17, label %136

136:                                              ; preds = %133, %85, %46, %31
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %136
  %140 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %141 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %149, %144, %139, %136
  %153 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %154 = call i32 @pipe_unlock(%struct.pipe_inode_info* %153)
  %155 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %156 = call i32 @pipe_unlock(%struct.pipe_inode_info* %155)
  %157 = load i32, i32* %11, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %161 = call i32 @wakeup_pipe_readers(%struct.pipe_inode_info* %160)
  br label %162

162:                                              ; preds = %159, %152
  %163 = load i32, i32* %11, align 4
  ret i32 %163
}

declare dso_local i32 @pipe_double_lock(%struct.pipe_inode_info*, %struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @pipe_buf_get(%struct.pipe_inode_info*, %struct.pipe_buffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pipe_buf_mark_unmergeable(%struct.pipe_buffer*) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wakeup_pipe_readers(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
