; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_abort_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_abort_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jbd2_buffer_trigger_type = type { i32 }
%struct.buffer_head = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"ocfs2_abort_trigger called by JBD2.  bh = 0x%lx, bh->b_blocknr = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"JBD2 has aborted our journal, ocfs2 cannot continue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jbd2_buffer_trigger_type*, %struct.buffer_head*)* @ocfs2_abort_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_abort_trigger(%struct.jbd2_buffer_trigger_type* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.jbd2_buffer_trigger_type*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.jbd2_buffer_trigger_type* %0, %struct.jbd2_buffer_trigger_type** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %5 = load i32, i32* @ML_ERROR, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %7 = ptrtoint %struct.buffer_head* %6 to i64
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @mlog(i32 %5, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %10)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ocfs2_error(i32 %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
