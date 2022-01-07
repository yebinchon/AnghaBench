; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_receiver.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receiver_context = type { i32, i32*, i32, i32 }

@thread_mode = common dso_local global i32 0, align 4
@DATASIZE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SERVER: read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.receiver_context*)* @receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @receiver(%struct.receiver_context* %0) #0 {
  %2 = alloca %struct.receiver_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.receiver_context* %0, %struct.receiver_context** %2, align 8
  %8 = load i32, i32* @thread_mode, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.receiver_context*, %struct.receiver_context** %2, align 8
  %12 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @close(i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.receiver_context*, %struct.receiver_context** %2, align 8
  %19 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.receiver_context*, %struct.receiver_context** %2, align 8
  %22 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ready(i32 %20, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %64, %17
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.receiver_context*, %struct.receiver_context** %2, align 8
  %28 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %25
  %32 = load i32, i32* @DATASIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %4, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %61, %31
  %37 = load %struct.receiver_context*, %struct.receiver_context** %2, align 8
  %38 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %35, i64 %43
  %45 = load i32, i32* @DATASIZE, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @read(i32 %41, i8* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @err(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %36
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @DATASIZE, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %36

62:                                               ; preds = %54
  %63 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %63)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %3, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %25

67:                                               ; preds = %25
  ret i8* null
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ready(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
