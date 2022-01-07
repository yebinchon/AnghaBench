; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_____thread__set_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_____thread__set_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32 }
%struct.comm = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32, i32)* @____thread__set_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @____thread__set_comm(%struct.thread* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comm*, align 8
  %11 = alloca %struct.comm*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = call %struct.comm* @thread__comm(%struct.thread* %13)
  store %struct.comm* %14, %struct.comm** %11, align 8
  %15 = load %struct.thread*, %struct.thread** %6, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = load %struct.comm*, %struct.comm** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @comm__override(%struct.comm* %20, i8* %21, i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %57

29:                                               ; preds = %19
  br label %54

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.comm* @comm__new(i8* %31, i32 %32, i32 %33)
  store %struct.comm* %34, %struct.comm** %10, align 8
  %35 = load %struct.comm*, %struct.comm** %10, align 8
  %36 = icmp ne %struct.comm* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %57

40:                                               ; preds = %30
  %41 = load %struct.comm*, %struct.comm** %10, align 8
  %42 = getelementptr inbounds %struct.comm, %struct.comm* %41, i32 0, i32 0
  %43 = load %struct.thread*, %struct.thread** %6, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 2
  %45 = call i32 @list_add(i32* %42, i32* %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.thread*, %struct.thread** %6, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @unwind__flush_access(i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.thread*, %struct.thread** %6, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %37, %27
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.comm* @thread__comm(%struct.thread*) #1

declare dso_local i32 @comm__override(%struct.comm*, i8*, i32, i32) #1

declare dso_local %struct.comm* @comm__new(i8*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @unwind__flush_access(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
