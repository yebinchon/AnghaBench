; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.c___ext4_journal_stop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.c___ext4_journal_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.super_block* }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ext4_journal_stop(i8* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = call i32 @ext4_handle_valid(%struct.TYPE_10__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = call i32 @ext4_put_nojournal(%struct.TYPE_10__* %15)
  store i32 0, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = call i32 @jbd2_journal_stop(%struct.TYPE_10__* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %17
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.super_block*, %struct.super_block** %42, align 8
  store %struct.super_block* %43, %struct.super_block** %8, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = call i32 @jbd2_journal_stop(%struct.TYPE_10__* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %36
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.super_block*, %struct.super_block** %8, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @__ext4_std_error(%struct.super_block* %54, i8* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %34, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ext4_handle_valid(%struct.TYPE_10__*) #1

declare dso_local i32 @ext4_put_nojournal(%struct.TYPE_10__*) #1

declare dso_local i32 @jbd2_journal_stop(%struct.TYPE_10__*) #1

declare dso_local i32 @__ext4_std_error(%struct.super_block*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
