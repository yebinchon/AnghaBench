; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_restore_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_restore_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgque_data = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"/proc/sys/kernel/msg_next_id\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to open /proc/sys/kernel/msg_next_id\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to write to /proc/sys/kernel/msg_next_id\0A\00", align 1
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to create queue\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Restored queue has wrong id (%d instead of %d)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IPC_NOWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"msgsnd failed (%m)\0A\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to destroy queue: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restore_queue(%struct.msgque_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msgque_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store %struct.msgque_data* %0, %struct.msgque_data** %3, align 8
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = call i32 @open(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @errno, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %117

17:                                               ; preds = %1
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %19 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %20 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = call i32 @write(i32 %23, i8* %24, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @errno, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %117

36:                                               ; preds = %17
  %37 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %38 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %41 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IPC_CREAT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IPC_EXCL, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @msgget(i32 %39, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @errno, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %117

54:                                               ; preds = %36
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %57 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %63 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %106

68:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %102, %68
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %72 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %69
  %76 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %77 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %80 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %87 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IPC_NOWAIT, align 4
  %95 = call i64 @msgsnd(i32 %78, i32* %85, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %75
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i32, i32* @errno, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %106

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %69

105:                                              ; preds = %69
  store i32 0, i32* %2, align 4
  br label %117

106:                                              ; preds = %97, %60
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @IPC_RMID, align 4
  %109 = call i64 @msgctl(i32 %107, i32 %108, i32* null)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @errno, align 4
  %113 = sub nsw i32 0, %112
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %105, %50, %32, %13
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msgget(i32, i32) #1

declare dso_local i64 @msgsnd(i32, i32*, i32, i32) #1

declare dso_local i64 @msgctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
