; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_journal_get_log_tail.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_journal_get_log_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_get_log_tail(%struct.TYPE_5__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = call i32 @read_lock(i32* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  br label %68

29:                                               ; preds = %3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %7, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  br label %67

43:                                               ; preds = %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %7, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %6, align 8
  store i64 %55, i64* %56, align 8
  br label %66

57:                                               ; preds = %43
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %48
  br label %67

67:                                               ; preds = %66, %34
  br label %68

68:                                               ; preds = %67, %20
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @tid_gt(i32 %70, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i32 @read_unlock(i32* %79)
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tid_gt(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
