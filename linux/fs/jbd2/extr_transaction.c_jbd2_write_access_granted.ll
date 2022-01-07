; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_write_access_granted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_write_access_granted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i64, i64, %struct.buffer_head*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.buffer_head*, i32)* @jbd2_write_access_granted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_write_access_granted(%struct.TYPE_3__* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.journal_head*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = call i64 @buffer_dirty(%struct.buffer_head* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

14:                                               ; preds = %3
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = call i32 @buffer_jbd(%struct.buffer_head* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %66

20:                                               ; preds = %14
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.journal_head* @READ_ONCE(i32 %23)
  store %struct.journal_head* %24, %struct.journal_head** %8, align 8
  %25 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %26 = icmp ne %struct.journal_head* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %66

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %33 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %66

37:                                               ; preds = %31, %28
  %38 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %39 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %47 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %66

54:                                               ; preds = %45, %37
  %55 = call i32 (...) @smp_mb()
  %56 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %57 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %56, i32 0, i32 2
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %60 = icmp ne %struct.buffer_head* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %66

65:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %64, %53, %36, %27, %19
  %67 = call i32 (...) @rcu_read_unlock()
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @READ_ONCE(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
