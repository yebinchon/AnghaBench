; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_comm_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_comm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_comm_event = type { i8*, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@perf_event_comm_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_comm_event*)* @perf_event_comm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_comm_event(%struct.perf_comm_event* %0) #0 {
  %2 = alloca %struct.perf_comm_event*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.perf_comm_event* %0, %struct.perf_comm_event** %2, align 8
  %6 = load i32, i32* @TASK_COMM_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = trunc i64 %7 to i32
  %11 = call i32 @memset(i8* %9, i32 0, i32 %10)
  %12 = load %struct.perf_comm_event*, %struct.perf_comm_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = trunc i64 %7 to i32
  %18 = call i32 @strlcpy(i8* %9, i32 %16, i32 %17)
  %19 = call i64 @strlen(i8* %9)
  %20 = add nsw i64 %19, 1
  %21 = call i32 @ALIGN(i64 %20, i32 4)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.perf_comm_event*, %struct.perf_comm_event** %2, align 8
  %23 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %22, i32 0, i32 0
  store i8* %9, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.perf_comm_event*, %struct.perf_comm_event** %2, align 8
  %26 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.perf_comm_event*, %struct.perf_comm_event** %2, align 8
  %32 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @perf_event_comm_output, align 4
  %36 = load %struct.perf_comm_event*, %struct.perf_comm_event** %2, align 8
  %37 = call i32 @perf_iterate_sb(i32 %35, %struct.perf_comm_event* %36, i32* null)
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @ALIGN(i64, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @perf_iterate_sb(i32, %struct.perf_comm_event*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
