; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_proc_task_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_proc_task_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.task_struct = type { i32 }

@PF_WQ_WORKER = common dso_local global i32 0, align 4
@ESCAPE_SPACE = common dso_local global i32 0, align 4
@ESCAPE_SPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_task_name(%struct.seq_file* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PF_WQ_WORKER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = call i32 @wq_worker_comm(i8* %18, i32 64, %struct.task_struct* %19)
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = call i32 @__get_task_comm(i8* %22, i32 64, %struct.task_struct* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = call i64 @seq_get_buf(%struct.seq_file* %26, i8** %7)
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @ESCAPE_SPACE, align 4
  %35 = load i32, i32* @ESCAPE_SPECIAL, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @string_escape_str(i8* %31, i8* %32, i64 %33, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %8, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 -1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %30
  br label %49

44:                                               ; preds = %25
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @strscpy(i8* %45, i8* %46, i64 %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %43
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @seq_commit(%struct.seq_file* %50, i32 %51)
  ret void
}

declare dso_local i32 @wq_worker_comm(i8*, i32, %struct.task_struct*) #1

declare dso_local i32 @__get_task_comm(i8*, i32, %struct.task_struct*) #1

declare dso_local i64 @seq_get_buf(%struct.seq_file*, i8**) #1

declare dso_local i32 @string_escape_str(i8*, i8*, i64, i32, i8*) #1

declare dso_local i32 @strscpy(i8*, i8*, i64) #1

declare dso_local i32 @seq_commit(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
