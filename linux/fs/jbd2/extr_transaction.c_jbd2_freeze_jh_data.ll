; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_freeze_jh_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_freeze_jh_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, i32, %struct.page* }

@.str = private unnamed_addr constant [22 x i8] c"Possible IO failure.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.journal_head*)* @jbd2_freeze_jh_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jbd2_freeze_jh_data(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  %7 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %8 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %7)
  store %struct.buffer_head* %8, %struct.buffer_head** %6, align 8
  %9 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = call i32 @buffer_uptodate(%struct.buffer_head* %10)
  %12 = call i32 @J_EXPECT_JH(%struct.journal_head* %9, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 2
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %3, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @offset_in_page(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i8* @kmap_atomic(%struct.page* %20)
  store i8* %21, i8** %5, align 8
  %22 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %28 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @jbd2_buffer_frozen_trigger(%struct.journal_head* %22, i8* %26, i32 %29)
  %31 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i32 %33, i8* %37, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @kunmap_atomic(i8* %42)
  %44 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %45 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %48 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_EXPECT_JH(%struct.journal_head*, i32, i8*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @jbd2_buffer_frozen_trigger(%struct.journal_head*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
