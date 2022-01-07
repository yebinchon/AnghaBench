; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ipc/extr_msgque.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgque_data = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Please run the test as root - Exiting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't make key: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't create queue: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to fill queue: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to dump queue: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to check and destroy queue: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to restore queue: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to test queue: %d\0A\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to destroy queue: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msgque_data, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i64 (...) @getuid()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %96

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @ftok(i8* %17, i32 822155650)
  %19 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i32, i32* @errno, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @ksft_exit_fail()
  store i32 %27, i32* %3, align 4
  br label %96

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IPC_CREAT, align 4
  %32 = load i32, i32* @IPC_EXCL, align 4
  %33 = or i32 %31, %32
  %34 = or i32 %33, 438
  %35 = call i32 @msgget(i32 %30, i32 %34)
  %36 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i32, i32* @errno, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %94

45:                                               ; preds = %28
  %46 = call i32 @fill_msgque(%struct.msgque_data* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %82

52:                                               ; preds = %45
  %53 = call i32 @dump_queue(%struct.msgque_data* %9)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %82

59:                                               ; preds = %52
  %60 = call i32 @check_and_destroy_queue(%struct.msgque_data* %9)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %94

66:                                               ; preds = %59
  %67 = call i32 @restore_queue(%struct.msgque_data* %9)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  br label %82

73:                                               ; preds = %66
  %74 = call i32 @check_and_destroy_queue(%struct.msgque_data* %9)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  br label %94

80:                                               ; preds = %73
  %81 = call i32 (...) @ksft_exit_pass()
  store i32 %81, i32* %3, align 4
  br label %96

82:                                               ; preds = %70, %56, %49
  %83 = getelementptr inbounds %struct.msgque_data, %struct.msgque_data* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IPC_RMID, align 4
  %86 = call i64 @msgctl(i32 %84, i32 %85, i32* null)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @errno, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = call i32 (...) @ksft_exit_fail()
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %77, %63, %40
  %95 = call i32 (...) @ksft_exit_fail()
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %88, %80, %23, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

declare dso_local i32 @ftok(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @msgget(i32, i32) #1

declare dso_local i32 @fill_msgque(%struct.msgque_data*) #1

declare dso_local i32 @dump_queue(%struct.msgque_data*) #1

declare dso_local i32 @check_and_destroy_queue(%struct.msgque_data*) #1

declare dso_local i32 @restore_queue(%struct.msgque_data*) #1

declare dso_local i32 @ksft_exit_pass(...) #1

declare dso_local i64 @msgctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
