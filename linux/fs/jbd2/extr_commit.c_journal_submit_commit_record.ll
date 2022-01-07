; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_commit.c_journal_submit_commit_record.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_commit.c_journal_submit_commit_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.commit_header = type { i8**, i32, i32, i8*, i32 }
%struct.timespec64 = type { i32, i32 }

@JBD2_COMMIT_BLOCK = common dso_local global i32 0, align 4
@JBD2_CRC32_CHKSUM = common dso_local global i32 0, align 4
@JBD2_CRC32_CHKSUM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"submit commit block\00", align 1
@journal_end_buffer_io_sync = common dso_local global i32 0, align 4
@JBD2_BARRIER = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.buffer_head**, i32)* @journal_submit_commit_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_submit_commit_record(%struct.TYPE_7__* %0, i32* %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit_header*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timespec64, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = call i64 @is_journal_aborted(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @JBD2_COMMIT_BLOCK, align 4
  %22 = call %struct.buffer_head* @jbd2_journal_get_descriptor_buffer(i32* %20, i32 %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %11, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %101

26:                                               ; preds = %19
  %27 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.commit_header*
  store %struct.commit_header* %30, %struct.commit_header** %10, align 8
  %31 = call i32 @ktime_get_coarse_real_ts64(%struct.timespec64* %13)
  %32 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_be64(i32 %33)
  %35 = load %struct.commit_header*, %struct.commit_header** %10, align 8
  %36 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.commit_header*, %struct.commit_header** %10, align 8
  %41 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = call i64 @jbd2_has_feature_checksum(%struct.TYPE_7__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %26
  %46 = load i32, i32* @JBD2_CRC32_CHKSUM, align 4
  %47 = load %struct.commit_header*, %struct.commit_header** %10, align 8
  %48 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @JBD2_CRC32_CHKSUM_SIZE, align 4
  %50 = load %struct.commit_header*, %struct.commit_header** %10, align 8
  %51 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.commit_header*, %struct.commit_header** %10, align 8
  %55 = getelementptr inbounds %struct.commit_header, %struct.commit_header* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  br label %58

58:                                               ; preds = %45, %26
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %61 = call i32 @jbd2_commit_block_csum_set(%struct.TYPE_7__* %59, %struct.buffer_head* %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %63 = call i32 @BUFFER_TRACE(%struct.buffer_head* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %65 = call i32 @lock_buffer(%struct.buffer_head* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %67 = call i32 @clear_buffer_dirty(%struct.buffer_head* %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = call i32 @set_buffer_uptodate(%struct.buffer_head* %68)
  %70 = load i32, i32* @journal_end_buffer_io_sync, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @JBD2_BARRIER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %58
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = call i32 @jbd2_has_feature_async_commit(%struct.TYPE_7__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @REQ_OP_WRITE, align 4
  %85 = load i32, i32* @REQ_SYNC, align 4
  %86 = load i32, i32* @REQ_PREFLUSH, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @REQ_FUA, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %91 = call i32 @submit_bh(i32 %84, i32 %89, %struct.buffer_head* %90)
  store i32 %91, i32* %12, align 4
  br label %97

92:                                               ; preds = %79, %58
  %93 = load i32, i32* @REQ_OP_WRITE, align 4
  %94 = load i32, i32* @REQ_SYNC, align 4
  %95 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %96 = call i32 @submit_bh(i32 %93, i32 %94, %struct.buffer_head* %95)
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %92, %83
  %98 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %99 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %98, %struct.buffer_head** %99, align 8
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %25, %18
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @is_journal_aborted(%struct.TYPE_7__*) #1

declare dso_local %struct.buffer_head* @jbd2_journal_get_descriptor_buffer(i32*, i32) #1

declare dso_local i32 @ktime_get_coarse_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @jbd2_has_feature_checksum(%struct.TYPE_7__*) #1

declare dso_local i32 @jbd2_commit_block_csum_set(%struct.TYPE_7__*, %struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @jbd2_has_feature_async_commit(%struct.TYPE_7__*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
