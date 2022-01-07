; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c___jbd2_journal_insert_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c___jbd2_journal_insert_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.journal_head*, %struct.journal_head*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.journal_head* }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__jbd2_journal_insert_checkpoint(%struct.journal_head* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.journal_head*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %6 = call i32 @JBUFFER_TRACE(%struct.journal_head* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %8 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %9 = call i32 @jh2bh(%struct.journal_head* %8)
  %10 = call i64 @buffer_dirty(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %14 = call i32 @jh2bh(%struct.journal_head* %13)
  %15 = call i64 @buffer_jbddirty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @J_ASSERT_JH(%struct.journal_head* %7, i32 %19)
  %21 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %22 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %23 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @J_ASSERT_JH(%struct.journal_head* %21, i32 %26)
  %28 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %29 = call i32 @jh2bh(%struct.journal_head* %28)
  %30 = call i32 @jbd2_journal_grab_journal_head(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %33 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %32, i32 0, i32 2
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.journal_head*, %struct.journal_head** %35, align 8
  %37 = icmp ne %struct.journal_head* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %17
  %39 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %40 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %41 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %40, i32 0, i32 0
  store %struct.journal_head* %39, %struct.journal_head** %41, align 8
  %42 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %43 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %42, i32 0, i32 1
  store %struct.journal_head* %39, %struct.journal_head** %43, align 8
  br label %67

44:                                               ; preds = %17
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.journal_head*, %struct.journal_head** %46, align 8
  %48 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %49 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %48, i32 0, i32 1
  store %struct.journal_head* %47, %struct.journal_head** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.journal_head*, %struct.journal_head** %51, align 8
  %53 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %52, i32 0, i32 0
  %54 = load %struct.journal_head*, %struct.journal_head** %53, align 8
  %55 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %56 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %55, i32 0, i32 0
  store %struct.journal_head* %54, %struct.journal_head** %56, align 8
  %57 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %58 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %59 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %58, i32 0, i32 0
  %60 = load %struct.journal_head*, %struct.journal_head** %59, align 8
  %61 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %60, i32 0, i32 1
  store %struct.journal_head* %57, %struct.journal_head** %61, align 8
  %62 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %63 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %64 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %63, i32 0, i32 1
  %65 = load %struct.journal_head*, %struct.journal_head** %64, align 8
  %66 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %65, i32 0, i32 0
  store %struct.journal_head* %62, %struct.journal_head** %66, align 8
  br label %67

67:                                               ; preds = %44, %38
  %68 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store %struct.journal_head* %68, %struct.journal_head** %70, align 8
  ret void
}

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i64 @buffer_dirty(i32) #1

declare dso_local i32 @jh2bh(%struct.journal_head*) #1

declare dso_local i64 @buffer_jbddirty(i32) #1

declare dso_local i32 @jbd2_journal_grab_journal_head(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
