; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___dispose_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___dispose_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i64 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"on running+cp transaction\00", align 1
@BJ_Forget = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"on running transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.journal_head*, i32*)* @__dispose_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dispose_buffer(%struct.journal_head* %0, i32* %1) #0 {
  %3 = alloca %struct.journal_head*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %8 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %7)
  store %struct.buffer_head* %8, %struct.buffer_head** %6, align 8
  %9 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %10 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %15 = call i32 @JBUFFER_TRACE(%struct.journal_head* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %17 = call i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head* %16)
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = call i32 @clear_buffer_dirty(%struct.buffer_head* %18)
  %20 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @BJ_Forget, align 4
  %23 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %20, i32* %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %26 = call i32 @JBUFFER_TRACE(%struct.journal_head* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %28 = call i32 @__jbd2_journal_unfile_buffer(%struct.journal_head* %27)
  br label %29

29:                                               ; preds = %24, %13
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, i32*, i32) #1

declare dso_local i32 @__jbd2_journal_unfile_buffer(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
