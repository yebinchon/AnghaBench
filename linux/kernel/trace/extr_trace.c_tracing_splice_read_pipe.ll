; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_splice_read_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_splice_read_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.trace_iterator*, %struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* }
%struct.pipe_inode_info = type { i32 }
%struct.splice_pipe_desc = type { i32, i32, %struct.partial_page*, %struct.page**, i32, i32* }
%struct.partial_page = type { i32, i64 }
%struct.page = type { i32 }

@PIPE_DEF_BUFFERS = common dso_local global i32 0, align 4
@tracing_spd_release_pipe = common dso_local global i32 0, align 4
@tracing_pipe_buf_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @tracing_splice_read_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_splice_read_pipe(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.trace_iterator*, align 8
  %16 = alloca %struct.splice_pipe_desc, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @PIPE_DEF_BUFFERS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.page*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @PIPE_DEF_BUFFERS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.partial_page, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %29, align 8
  store %struct.trace_iterator* %30, %struct.trace_iterator** %15, align 8
  %31 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  %33 = load i32, i32* @PIPE_DEF_BUFFERS, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  store %struct.partial_page* %27, %struct.partial_page** %34, align 8
  %35 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  store %struct.page** %24, %struct.page*** %35, align 8
  %36 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 4
  %37 = load i32, i32* @tracing_spd_release_pipe, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 5
  store i32* @tracing_pipe_buf_ops, i32** %38, align 8
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %40 = call i64 @splice_grow_spd(%struct.pipe_inode_info* %39, %struct.splice_pipe_desc* %16)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %197

45:                                               ; preds = %5
  %46 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %47 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %50 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.trace_iterator*, %struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.trace_iterator*, %struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.trace_iterator*, %struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %45
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %57 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.trace_iterator*, %struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.trace_iterator*, %struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)** %59, align 8
  %61 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %62 = load %struct.file*, %struct.file** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 %60(%struct.trace_iterator* %61, %struct.file* %62, i32* %63, %struct.pipe_inode_info* %64, i64 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %193

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %45
  %73 = load %struct.file*, %struct.file** %7, align 8
  %74 = call i32 @tracing_wait_pipe(%struct.file* %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %193

78:                                               ; preds = %72
  %79 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %80 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %85 = call i32 @trace_find_next_entry_inc(%struct.trace_iterator* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %17, align 4
  br label %193

90:                                               ; preds = %83, %78
  %91 = call i32 (...) @trace_event_read_lock()
  %92 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %93 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @trace_access_lock(i32 %94)
  store i32 0, i32* %19, align 4
  %96 = load i64, i64* %10, align 8
  store i64 %96, i64* %18, align 8
  br label %97

97:                                               ; preds = %169, %90
  %98 = load i32, i32* %19, align 4
  %99 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i64, i64* %18, align 8
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi i1 [ false, %97 ], [ %104, %102 ]
  br i1 %106, label %107, label %172

107:                                              ; preds = %105
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call %struct.page* @alloc_page(i32 %108)
  %110 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  %111 = load %struct.page**, %struct.page*** %110, align 8
  %112 = load i32, i32* %19, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.page*, %struct.page** %111, i64 %113
  store %struct.page* %109, %struct.page** %114, align 8
  %115 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  %116 = load %struct.page**, %struct.page*** %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.page*, %struct.page** %116, i64 %118
  %120 = load %struct.page*, %struct.page** %119, align 8
  %121 = icmp ne %struct.page* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %107
  br label %172

123:                                              ; preds = %107
  %124 = load i64, i64* %18, align 8
  %125 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %126 = call i64 @tracing_fill_pipe_page(i64 %124, %struct.trace_iterator* %125)
  store i64 %126, i64* %18, align 8
  %127 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %128 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  %130 = load %struct.page**, %struct.page*** %129, align 8
  %131 = load i32, i32* %19, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.page*, %struct.page** %130, i64 %132
  %134 = load %struct.page*, %struct.page** %133, align 8
  %135 = call i32 @page_address(%struct.page* %134)
  %136 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %137 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %136, i32 0, i32 2
  %138 = call i32 @trace_seq_used(i32* %137)
  %139 = call i32 @trace_seq_to_buffer(i32* %128, i32 %135, i32 %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %123
  %143 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  %144 = load %struct.page**, %struct.page*** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.page*, %struct.page** %144, i64 %146
  %148 = load %struct.page*, %struct.page** %147, align 8
  %149 = call i32 @__free_page(%struct.page* %148)
  br label %172

150:                                              ; preds = %123
  %151 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  %152 = load %struct.partial_page*, %struct.partial_page** %151, align 8
  %153 = load i32, i32* %19, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %152, i64 %154
  %156 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %158 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %157, i32 0, i32 2
  %159 = call i32 @trace_seq_used(i32* %158)
  %160 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  %161 = load %struct.partial_page*, %struct.partial_page** %160, align 8
  %162 = load i32, i32* %19, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %161, i64 %163
  %165 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %164, i32 0, i32 0
  store i32 %159, i32* %165, align 8
  %166 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %167 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %166, i32 0, i32 2
  %168 = call i32 @trace_seq_init(i32* %167)
  br label %169

169:                                              ; preds = %150
  %170 = load i32, i32* %19, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %19, align 4
  br label %97

172:                                              ; preds = %142, %122, %105
  %173 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %174 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @trace_access_unlock(i32 %175)
  %177 = call i32 (...) @trace_event_read_unlock()
  %178 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %179 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %178, i32 0, i32 0
  %180 = call i32 @mutex_unlock(i32* %179)
  %181 = load i32, i32* %19, align 4
  %182 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  store i32 %181, i32* %182, align 8
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %172
  %186 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %187 = call i32 @splice_to_pipe(%struct.pipe_inode_info* %186, %struct.splice_pipe_desc* %16)
  store i32 %187, i32* %17, align 4
  br label %189

188:                                              ; preds = %172
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %188, %185
  br label %190

190:                                              ; preds = %193, %189
  %191 = call i32 @splice_shrink_spd(%struct.splice_pipe_desc* %16)
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %197

193:                                              ; preds = %87, %77, %70
  %194 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %195 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  br label %190

197:                                              ; preds = %190, %42
  %198 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @splice_grow_spd(%struct.pipe_inode_info*, %struct.splice_pipe_desc*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @tracing_wait_pipe(%struct.file*) #2

declare dso_local i32 @trace_find_next_entry_inc(%struct.trace_iterator*) #2

declare dso_local i32 @trace_event_read_lock(...) #2

declare dso_local i32 @trace_access_lock(i32) #2

declare dso_local %struct.page* @alloc_page(i32) #2

declare dso_local i64 @tracing_fill_pipe_page(i64, %struct.trace_iterator*) #2

declare dso_local i32 @trace_seq_to_buffer(i32*, i32, i32) #2

declare dso_local i32 @page_address(%struct.page*) #2

declare dso_local i32 @trace_seq_used(i32*) #2

declare dso_local i32 @__free_page(%struct.page*) #2

declare dso_local i32 @trace_seq_init(i32*) #2

declare dso_local i32 @trace_access_unlock(i32) #2

declare dso_local i32 @trace_event_read_unlock(...) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @splice_to_pipe(%struct.pipe_inode_info*, %struct.splice_pipe_desc*) #2

declare dso_local i32 @splice_shrink_spd(%struct.splice_pipe_desc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
