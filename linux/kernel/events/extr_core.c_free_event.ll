; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_free_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_free_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"unexpected event refcount: %ld; ptr=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @free_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %3 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %3, i32 0, i32 0
  %5 = call i32 @atomic_long_cmpxchg(i32* %4, i32 1, i32 0)
  %6 = icmp ne i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = call i32 @atomic_long_read(i32* %9)
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = call i64 @WARN(i32 %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.perf_event* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = call i32 @_free_event(%struct.perf_event* %16)
  br label %18

18:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @WARN(i32, i8*, i32, %struct.perf_event*) #1

declare dso_local i32 @atomic_long_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @_free_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
