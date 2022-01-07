; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_splice_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_splice_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, %struct.pipe_buffer*, i32 }
%struct.pipe_buffer = type { i64, i64, i32, i32, i32, i32 }
%struct.splice_pipe_desc = type { i32, i32 (%struct.splice_pipe_desc*, i32)*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @splice_to_pipe(%struct.pipe_inode_info* %0, %struct.splice_pipe_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.splice_pipe_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_buffer*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.splice_pipe_desc* %1, %struct.splice_pipe_desc** %5, align 8
  %11 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %12 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

17:                                               ; preds = %2
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %19 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @SIGPIPE, align 4
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @send_sig(i32 %27, i32 %28, i32 0)
  %30 = load i32, i32* @EPIPE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %133

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %125, %32
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %35 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %38 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %126

41:                                               ; preds = %33
  %42 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %43 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %46 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  %49 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %50 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %48, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %55 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %54, i32 0, i32 3
  %56 = load %struct.pipe_buffer*, %struct.pipe_buffer** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %56, i64 %58
  store %struct.pipe_buffer* %59, %struct.pipe_buffer** %10, align 8
  %60 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %61 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %68 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %70 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %78 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %80 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %88 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %90 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %98 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %100 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %103 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %105 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %107 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %113 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %7, align 4
  %119 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %120 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %121, -1
  store i32 %122, i32* %120, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %41
  br label %126

125:                                              ; preds = %41
  br label %33

126:                                              ; preds = %124, %33
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %26
  br label %134

134:                                              ; preds = %138, %133
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %140 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %139, i32 0, i32 1
  %141 = load i32 (%struct.splice_pipe_desc*, i32)*, i32 (%struct.splice_pipe_desc*, i32)** %140, align 8
  %142 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  %145 = call i32 %141(%struct.splice_pipe_desc* %142, i32 %143)
  br label %134

146:                                              ; preds = %134
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %16
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
