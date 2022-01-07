; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__set_comm_from_proc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__set_comm_from_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%d/task/%d/comm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread__set_comm_from_proc(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  store i8* null, i8** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snprintf(i8* %7, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = icmp sge i32 %14, 64
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %18 = call i64 @procfs__read_str(i8* %17, i8** %4, i64* %5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load %struct.thread*, %struct.thread** %2, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @thread__set_comm(%struct.thread* %25, i8* %26, i32 0)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %16, %1
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @procfs__read_str(i8*, i8**, i64*) #1

declare dso_local i32 @thread__set_comm(%struct.thread*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
