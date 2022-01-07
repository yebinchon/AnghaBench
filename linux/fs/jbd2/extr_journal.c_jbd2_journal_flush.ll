; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_journal_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_journal_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_flush(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  %9 = call i32 @write_lock(i32* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__jbd2_log_start_commit(%struct.TYPE_11__* %18, i32 %21)
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %5, align 8
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %14
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = call i32 @write_unlock(i32* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @jbd2_log_wait_commit(%struct.TYPE_11__* %43, i32 %44)
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = call i32 @write_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 9
  %53 = call i32 @spin_lock(i32* %52)
  br label %54

54:                                               ; preds = %64, %50
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %64, label %79

64:                                               ; preds = %62
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 9
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 8
  %70 = call i32 @mutex_lock_io(i32* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = call i32 @jbd2_log_do_checkpoint(%struct.TYPE_11__* %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 8
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 9
  %78 = call i32 @spin_lock(i32* %77)
  br label %54

79:                                               ; preds = %62
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 9
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = call i64 @is_journal_aborted(%struct.TYPE_11__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %161

89:                                               ; preds = %79
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 8
  %92 = call i32 @mutex_lock_io(i32* %91)
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = call i32 @jbd2_cleanup_journal_tail(%struct.TYPE_11__* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 8
  %103 = call i32 @mutex_unlock(i32* %102)
  br label %159

104:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %89
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = load i32, i32* @REQ_SYNC, align 4
  %108 = load i32, i32* @REQ_FUA, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @jbd2_mark_journal_empty(%struct.TYPE_11__* %106, i32 %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 8
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = call i32 @write_lock(i32* %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = icmp ne %struct.TYPE_10__* %119, null
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @J_ASSERT(i32 %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 6
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = icmp ne %struct.TYPE_10__* %126, null
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @J_ASSERT(i32 %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @J_ASSERT(i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %140, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @J_ASSERT(i32 %145)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %149, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @J_ASSERT(i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 4
  %158 = call i32 @write_unlock(i32* %157)
  br label %159

159:                                              ; preds = %105, %100
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %86
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @__jbd2_log_start_commit(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @jbd2_log_wait_commit(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock_io(i32*) #1

declare dso_local i32 @jbd2_log_do_checkpoint(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_journal_aborted(%struct.TYPE_11__*) #1

declare dso_local i32 @jbd2_cleanup_journal_tail(%struct.TYPE_11__*) #1

declare dso_local i32 @jbd2_mark_journal_empty(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @J_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
