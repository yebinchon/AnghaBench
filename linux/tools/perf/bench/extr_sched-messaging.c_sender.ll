; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_sender.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sender_context = type { i32, i32*, i32, i32 }

@DATASIZE = common dso_local global i32 0, align 4
@nr_loops = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SENDER: write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sender_context*)* @sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sender(%struct.sender_context* %0) #0 {
  %2 = alloca %struct.sender_context*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sender_context* %0, %struct.sender_context** %2, align 8
  %9 = load i32, i32* @DATASIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.sender_context*, %struct.sender_context** %2, align 8
  %14 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sender_context*, %struct.sender_context** %2, align 8
  %17 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ready(i32 %15, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %66, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @nr_loops, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.sender_context*, %struct.sender_context** %2, align 8
  %28 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %60, %31
  %33 = load %struct.sender_context*, %struct.sender_context** %2, align 8
  %34 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %12, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %10, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @write(i32 %39, i8* %42, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 @err(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %32
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @DATASIZE, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %32

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %25

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %20

69:                                               ; preds = %20
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ready(i32, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
