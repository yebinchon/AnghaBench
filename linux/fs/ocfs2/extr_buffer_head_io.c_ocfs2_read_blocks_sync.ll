; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"trying to sync read a dirty buffer! (blocknr = %llu), skipping\0A\00", align 1
@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %0, i64 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @trace_ocfs2_read_blocks_sync(i64 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %173

19:                                               ; preds = %4
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %21 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %20, i64 0
  %22 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %23 = icmp eq %struct.buffer_head* %22, null
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %102, %19
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %105

29:                                               ; preds = %25
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %30, i64 %32
  %34 = load %struct.buffer_head*, %struct.buffer_head** %33, align 8
  %35 = icmp eq %struct.buffer_head* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  %42 = trunc i64 %40 to i32
  %43 = call %struct.buffer_head* @sb_getblk(i32 %39, i32 %42)
  %44 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %44, i64 %46
  store %struct.buffer_head* %43, %struct.buffer_head** %47, align 8
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %48, i64 %50
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  %53 = icmp eq %struct.buffer_head* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %36
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %105

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %61, i64 %63
  %65 = load %struct.buffer_head*, %struct.buffer_head** %64, align 8
  store %struct.buffer_head* %65, %struct.buffer_head** %11, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %67 = call i64 @buffer_jbd(%struct.buffer_head* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @trace_ocfs2_read_blocks_sync_jbd(i64 %72)
  br label %102

74:                                               ; preds = %60
  %75 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %76 = call i64 @buffer_dirty(%struct.buffer_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @ML_ERROR, align 4
  %80 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @mlog(i32 %79, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %82)
  br label %102

84:                                               ; preds = %74
  %85 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %86 = call i32 @lock_buffer(%struct.buffer_head* %85)
  %87 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %88 = call i64 @buffer_jbd(%struct.buffer_head* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %92 = call i32 @unlock_buffer(%struct.buffer_head* %91)
  br label %102

93:                                               ; preds = %84
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %95 = call i32 @get_bh(%struct.buffer_head* %94)
  %96 = load i32, i32* @end_buffer_read_sync, align 4
  %97 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @REQ_OP_READ, align 4
  %100 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %101 = call i32 @submit_bh(i32 %99, i32 0, %struct.buffer_head* %100)
  br label %102

102:                                              ; preds = %93, %90, %78, %69
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %25

105:                                              ; preds = %54, %25
  br label %106

106:                                              ; preds = %165, %105
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %169, %106
  %109 = load i32, i32* %10, align 4
  %110 = icmp ugt i32 %109, 0
  br i1 %110, label %111, label %172

111:                                              ; preds = %108
  %112 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sub i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %112, i64 %115
  %117 = load %struct.buffer_head*, %struct.buffer_head** %116, align 8
  store %struct.buffer_head* %117, %struct.buffer_head** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %111
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %126 = icmp ne %struct.buffer_head* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %129 = call i64 @buffer_jbd(%struct.buffer_head* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %133 = call i32 @wait_on_buffer(%struct.buffer_head* %132)
  br label %134

134:                                              ; preds = %131, %127
  %135 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %136 = call i32 @put_bh(%struct.buffer_head* %135)
  %137 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sub i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %137, i64 %140
  store %struct.buffer_head* null, %struct.buffer_head** %141, align 8
  br label %153

142:                                              ; preds = %124, %121
  %143 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %144 = icmp ne %struct.buffer_head* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %147 = call i64 @buffer_uptodate(%struct.buffer_head* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %151 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %150)
  br label %152

152:                                              ; preds = %149, %145, %142
  br label %153

153:                                              ; preds = %152, %134
  br label %169

154:                                              ; preds = %111
  %155 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %156 = call i64 @buffer_jbd(%struct.buffer_head* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %160 = call i32 @wait_on_buffer(%struct.buffer_head* %159)
  br label %161

161:                                              ; preds = %158, %154
  %162 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %163 = call i64 @buffer_uptodate(%struct.buffer_head* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @EIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %9, align 4
  br label %106

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %153
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, -1
  store i32 %171, i32* %10, align 4
  br label %108

172:                                              ; preds = %108
  br label %173

173:                                              ; preds = %172, %18
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local i32 @trace_ocfs2_read_blocks_sync(i64, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_read_blocks_sync_jbd(i64) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
