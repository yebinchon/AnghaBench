; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_descriptor_block_csum_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_descriptor_block_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.jbd2_journal_block_tail = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jbd2_descriptor_block_csum_set(%struct.TYPE_5__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.jbd2_journal_block_tail*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = call i32 @jbd2_journal_has_csum_v2or3(%struct.TYPE_5__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 8
  %21 = inttoptr i64 %20 to %struct.jbd2_journal_block_tail*
  store %struct.jbd2_journal_block_tail* %21, %struct.jbd2_journal_block_tail** %5, align 8
  %22 = load %struct.jbd2_journal_block_tail*, %struct.jbd2_journal_block_tail** %5, align 8
  %23 = getelementptr inbounds %struct.jbd2_journal_block_tail, %struct.jbd2_journal_block_tail* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jbd2_chksum(%struct.TYPE_5__* %24, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @cpu_to_be32(i32 %35)
  %37 = load %struct.jbd2_journal_block_tail*, %struct.jbd2_journal_block_tail** %5, align 8
  %38 = getelementptr inbounds %struct.jbd2_journal_block_tail, %struct.jbd2_journal_block_tail* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @jbd2_journal_has_csum_v2or3(%struct.TYPE_5__*) #1

declare dso_local i32 @jbd2_chksum(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
