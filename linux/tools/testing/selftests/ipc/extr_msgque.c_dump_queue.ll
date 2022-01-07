; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_dump_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_dump_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgque_data = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.msqid_ds = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MSG_STAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to get stats for IPC queue with id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get stats for IPC queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_MSG_SIZE = common dso_local global i32 0, align 4
@IPC_NOWAIT = common dso_local global i32 0, align 4
@MSG_COPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to copy IPC message: %m (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_queue(%struct.msgque_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msgque_data*, align 8
  %4 = alloca %struct.msqid_ds, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msgque_data* %0, %struct.msgque_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MSG_STAT, align 4
  %14 = call i32 @msgctl(i32 %12, i32 %13, %struct.msqid_ds* %4)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load i32, i32* @errno, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @errno, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %11
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %31 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %8

39:                                               ; preds = %34, %8
  %40 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call %struct.TYPE_4__* @malloc(i32 %44)
  %46 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %47 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %46, i32 0, i32 2
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %49 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp eq %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %113

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %60 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %4, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %65 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %4, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %69 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %109, %56
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %73 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %70
  %77 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %78 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %81 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* @MAX_MSG_SIZE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @IPC_NOWAIT, align 4
  %90 = load i32, i32* @MSG_COPY, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @msgrcv(i32 %79, i32* %86, i32 %87, i32 %88, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %76
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @errno, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %113

100:                                              ; preds = %76
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.msgque_data*, %struct.msgque_data** %3, align 8
  %103 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %101, i32* %108, align 4
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %70

112:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %95, %52, %23
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @msgctl(i32, i32, %struct.msqid_ds*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @msgrcv(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
