; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_start_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_start_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_11__* null, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_start_reserved(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %8, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = call i32 @jbd2_journal_stop(%struct.TYPE_15__* %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %76

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = call i32 @jbd2_journal_free_reserved(%struct.TYPE_15__* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %27
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = load i32, i32* @GFP_NOFS, align 4
  %43 = call i32 @start_this_handle(%struct.TYPE_14__* %40, %struct.TYPE_15__* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 4
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = call i32 @jbd2_journal_free_reserved(%struct.TYPE_15__* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %76

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @trace_jbd2_handle_start(i32 %64, i32 %69, i32 %70, i32 %71, i32 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %53, %46, %33, %23
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @jbd2_journal_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @jbd2_journal_free_reserved(%struct.TYPE_15__*) #1

declare dso_local i32 @start_this_handle(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @trace_jbd2_handle_start(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
