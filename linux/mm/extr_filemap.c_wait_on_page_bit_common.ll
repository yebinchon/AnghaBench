; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_wait_on_page_bit_common.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_wait_on_page_bit_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.page = type { i32 }
%struct.wait_page_queue = type { i32, %struct.page*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@PG_locked = common dso_local global i32 0, align 4
@EXCLUSIVE = common dso_local global i32 0, align 4
@WQ_FLAG_EXCLUSIVE = common dso_local global i32 0, align 4
@wake_page_function = common dso_local global i32 0, align 4
@DROP = common dso_local global i32 0, align 4
@SHARED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.page*, i32, i32, i32)* @wait_on_page_bit_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_on_page_bit_common(%struct.TYPE_9__* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wait_page_queue, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %11, i32 0, i32 2
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PG_locked, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %5
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @PageUptodate(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i64 @PageWorkingset(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = call i32 @PageSwapBacked(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 (...) @delayacct_thrashing_start()
  store i32 1, i32* %15, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i32 @psi_memstall_enter(i64* %16)
  store i32 1, i32* %14, align 4
  br label %38

38:                                               ; preds = %36, %26, %22, %5
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = call i32 @init_wait(%struct.TYPE_10__* %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @EXCLUSIVE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @WQ_FLAG_EXCLUSIVE, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @wake_page_function, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %11, i32 0, i32 1
  store %struct.page* %54, %struct.page** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %11, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  br label %58

58:                                               ; preds = %133, %47
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_irq(i32* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = call i32 @list_empty(i32* %63)
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = call i32 @__add_wait_queue_entry_tail(%struct.TYPE_9__* %68, %struct.TYPE_10__* %69)
  %71 = load %struct.page*, %struct.page** %7, align 8
  %72 = call i32 @SetPageWaiters(%struct.page* %71)
  br label %73

73:                                               ; preds = %67, %58
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @set_current_state(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = getelementptr inbounds %struct.page, %struct.page* %80, i32 0, i32 0
  %82 = call i32 @test_bit(i32 %79, i32* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @DROP, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.page*, %struct.page** %7, align 8
  %88 = call i32 @put_page(%struct.page* %87)
  br label %89

89:                                               ; preds = %86, %73
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 (...) @io_schedule()
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @EXCLUSIVE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.page*, %struct.page** %7, align 8
  %102 = getelementptr inbounds %struct.page, %struct.page* %101, i32 0, i32 0
  %103 = call i32 @test_and_set_bit_lock(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  br label %134

106:                                              ; preds = %99
  br label %120

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @SHARED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.page*, %struct.page** %7, align 8
  %114 = getelementptr inbounds %struct.page, %struct.page* %113, i32 0, i32 0
  %115 = call i32 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %134

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119, %106
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @current, align 4
  %123 = call i64 @signal_pending_state(i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @EINTR, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %17, align 4
  br label %134

128:                                              ; preds = %120
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @DROP, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %134

133:                                              ; preds = %128
  br label %58

134:                                              ; preds = %132, %125, %117, %105
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %137 = call i32 @finish_wait(%struct.TYPE_9__* %135, %struct.TYPE_10__* %136)
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32 (...) @delayacct_thrashing_end()
  br label %145

145:                                              ; preds = %143, %140
  %146 = call i32 @psi_memstall_leave(i64* %16)
  br label %147

147:                                              ; preds = %145, %134
  %148 = load i32, i32* %17, align 4
  ret i32 %148
}

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @PageWorkingset(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @delayacct_thrashing_start(...) #1

declare dso_local i32 @psi_memstall_enter(i64*) #1

declare dso_local i32 @init_wait(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__add_wait_queue_entry_tail(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @SetPageWaiters(%struct.page*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i64 @signal_pending_state(i32, i32) #1

declare dso_local i32 @finish_wait(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @delayacct_thrashing_end(...) #1

declare dso_local i32 @psi_memstall_leave(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
