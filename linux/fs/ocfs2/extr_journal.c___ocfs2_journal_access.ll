; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c___ocfs2_journal_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c___ocfs2_journal_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32, i64, i32 }
%struct.ocfs2_triggers = type { i32 }
%struct.ocfs2_super = type { i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"giving me a buffer that's not uptodate!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"b_blocknr=%llu, b_state=0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"A previous attempt to write this buffer head failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown access type!\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Error %d getting %d access to buffer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_triggers*, i32)* @__ocfs2_journal_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_journal_access(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.ocfs2_triggers* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_triggers*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_super*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_triggers* %3, %struct.ocfs2_triggers** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %15 = call i32 @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %14)
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %13, align 8
  %17 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %18 = icmp ne %struct.ocfs2_caching_info* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %5
  %26 = phi i1 [ true, %5 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %35 = icmp ne %struct.buffer_head* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %40 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @trace_ocfs2_journal_access(i64 %40, i64 %43, i32 %44, i32 %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = call i32 @buffer_uptodate(%struct.buffer_head* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %25
  %53 = load i32, i32* @ML_ERROR, align 4
  %54 = call i32 (i32, i8*, ...) @mlog(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ML_ERROR, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @mlog(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %58, i32 %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %64 = call i32 @lock_buffer(%struct.buffer_head* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %66 = call i64 @buffer_write_io_error(%struct.buffer_head* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %52
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = call i32 @buffer_uptodate(%struct.buffer_head* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = call i32 @unlock_buffer(%struct.buffer_head* %73)
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %76 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ocfs2_error(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  store i32 %78, i32* %6, align 4
  br label %131

79:                                               ; preds = %68, %52
  %80 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %81 = call i32 @unlock_buffer(%struct.buffer_head* %80)
  br label %82

82:                                               ; preds = %79, %25
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %84 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %87 = call i32 @ocfs2_set_ci_lock_trans(i32 %85, %struct.ocfs2_caching_info* %86)
  %88 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %89 = call i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info* %88)
  %90 = load i32, i32* %11, align 4
  switch i32 %90, label %99 [
    i32 130, label %91
    i32 128, label %91
    i32 129, label %95
  ]

91:                                               ; preds = %82, %82
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %94 = call i32 @jbd2_journal_get_write_access(i32* %92, %struct.buffer_head* %93)
  store i32 %94, i32* %12, align 4
  br label %104

95:                                               ; preds = %82
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %98 = call i32 @jbd2_journal_get_undo_access(i32* %96, %struct.buffer_head* %97)
  store i32 %98, i32* %12, align 4
  br label %104

99:                                               ; preds = %82
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @ML_ERROR, align 4
  %103 = call i32 (i32, i8*, ...) @mlog(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %95, %91
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %109 = call i64 @ocfs2_meta_ecc(%struct.ocfs2_super* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load %struct.ocfs2_triggers*, %struct.ocfs2_triggers** %10, align 8
  %113 = icmp ne %struct.ocfs2_triggers* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %116 = load %struct.ocfs2_triggers*, %struct.ocfs2_triggers** %10, align 8
  %117 = getelementptr inbounds %struct.ocfs2_triggers, %struct.ocfs2_triggers* %116, i32 0, i32 0
  %118 = call i32 @jbd2_journal_set_triggers(%struct.buffer_head* %115, i32* %117)
  br label %119

119:                                              ; preds = %114, %111, %107, %104
  %120 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %121 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %120)
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @ML_ERROR, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 (i32, i8*, ...) @mlog(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %72
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ocfs2_journal_access(i64, i64, i32, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_error(i32, i8*) #1

declare dso_local i32 @ocfs2_set_ci_lock_trans(i32, %struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @jbd2_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @jbd2_journal_get_undo_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_meta_ecc(%struct.ocfs2_super*) #1

declare dso_local i32 @jbd2_journal_set_triggers(%struct.buffer_head*, i32*) #1

declare dso_local i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
