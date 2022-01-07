; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.c___ext4_journal_start_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.c___ext4_journal_start_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.super_block* }
%struct.super_block = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @__ext4_journal_start_reserved(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = call i32 @ext4_handle_valid(%struct.TYPE_11__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call %struct.TYPE_11__* (...) @ext4_get_nojournal()
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @_RET_IP_, align 4
  %26 = call i32 @trace_ext4_journal_start_reserved(%struct.super_block* %21, i32 %24, i32 %25)
  %27 = load %struct.super_block*, %struct.super_block** %8, align 8
  %28 = call i32 @ext4_journal_check_start(%struct.super_block* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = call i32 @jbd2_journal_free_reserved(%struct.TYPE_11__* %32)
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.TYPE_11__* @ERR_PTR(i32 %34)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %4, align 8
  br label %48

36:                                               ; preds = %15
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @jbd2_journal_start_reserved(%struct.TYPE_11__* %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.TYPE_11__* @ERR_PTR(i32 %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %4, align 8
  br label %48

46:                                               ; preds = %36
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %4, align 8
  br label %48

48:                                               ; preds = %46, %43, %31, %13
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %49
}

declare dso_local i32 @ext4_handle_valid(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @ext4_get_nojournal(...) #1

declare dso_local i32 @trace_ext4_journal_start_reserved(%struct.super_block*, i32, i32) #1

declare dso_local i32 @ext4_journal_check_start(%struct.super_block*) #1

declare dso_local i32 @jbd2_journal_free_reserved(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @ERR_PTR(i32) #1

declare dso_local i32 @jbd2_journal_start_reserved(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
