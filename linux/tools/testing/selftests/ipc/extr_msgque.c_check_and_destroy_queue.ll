; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_check_and_destroy_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_check_and_destroy_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgque_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.msg1 = type { i64, i32 }

@MAX_MSG_SIZE = common dso_local global i32 0, align 4
@IPC_NOWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read IPC message: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Wrong message size: %d (expected %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Wrong message type\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Wrong message content\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Wrong message number\0A\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to destroy queue: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_and_destroy_queue(%struct.msgque_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msgque_data*, align 8
  %4 = alloca %struct.msg1, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msgque_data* %0, %struct.msgque_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %1, %84
  %8 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %9 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.msg1, %struct.msg1* %4, i32 0, i32 0
  %12 = load i32, i32* @MAX_MSG_SIZE, align 4
  %13 = load i32, i32* @IPC_NOWAIT, align 4
  %14 = call i32 @msgrcv(i32 %10, i64* %11, i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = load i32, i32* @errno, align 4
  %19 = load i32, i32* @ENOMSG, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %87

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @errno, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %98

26:                                               ; preds = %7
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %29 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %27, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %40 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %98

50:                                               ; preds = %26
  %51 = getelementptr inbounds %struct.msg1, %struct.msg1* %4, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %54 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %52, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %98

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.msg1, %struct.msg1* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %70 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @memcmp(i32 %68, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %98

84:                                               ; preds = %66
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %7

87:                                               ; preds = %21
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %90 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %98

97:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %93, %80, %62, %37, %22
  %99 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %100 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IPC_RMID, align 4
  %103 = call i64 @msgctl(i32 %101, i32 %102, i32* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @errno, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @errno, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %113

111:                                              ; preds = %98
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %105
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @msgrcv(i32, i64*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @msgctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
