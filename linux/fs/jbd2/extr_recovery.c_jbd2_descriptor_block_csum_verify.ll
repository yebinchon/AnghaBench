; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_recovery.c_jbd2_descriptor_block_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_recovery.c_jbd2_descriptor_block_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.jbd2_journal_block_tail = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @jbd2_descriptor_block_csum_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_descriptor_block_csum_verify(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jbd2_journal_block_tail*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @jbd2_journal_has_csum_v2or3(%struct.TYPE_5__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %14, i64 %18
  %20 = getelementptr i8, i8* %19, i64 -8
  %21 = bitcast i8* %20 to %struct.jbd2_journal_block_tail*
  store %struct.jbd2_journal_block_tail* %21, %struct.jbd2_journal_block_tail** %6, align 8
  %22 = load %struct.jbd2_journal_block_tail*, %struct.jbd2_journal_block_tail** %6, align 8
  %23 = getelementptr inbounds %struct.jbd2_journal_block_tail, %struct.jbd2_journal_block_tail* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.jbd2_journal_block_tail*, %struct.jbd2_journal_block_tail** %6, align 8
  %26 = getelementptr inbounds %struct.jbd2_journal_block_tail, %struct.jbd2_journal_block_tail* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @jbd2_chksum(%struct.TYPE_5__* %27, i32 %30, i8* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.jbd2_journal_block_tail*, %struct.jbd2_journal_block_tail** %6, align 8
  %38 = getelementptr inbounds %struct.jbd2_journal_block_tail, %struct.jbd2_journal_block_tail* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @cpu_to_be32(i32 %40)
  %42 = icmp eq i64 %39, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %13, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @jbd2_journal_has_csum_v2or3(%struct.TYPE_5__*) #1

declare dso_local i32 @jbd2_chksum(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
