; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c_umh_pipe_setup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c_umh_pipe_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_info = type { %struct.umh_info* }
%struct.umh_info = type { %struct.file*, %struct.file* }
%struct.file = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subprocess_info*, %struct.cred*)* @umh_pipe_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umh_pipe_setup(%struct.subprocess_info* %0, %struct.cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subprocess_info*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.umh_info*, align 8
  %7 = alloca [2 x %struct.file*], align 16
  %8 = alloca [2 x %struct.file*], align 16
  %9 = alloca i32, align 4
  store %struct.subprocess_info* %0, %struct.subprocess_info** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %10 = load %struct.subprocess_info*, %struct.subprocess_info** %4, align 8
  %11 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %10, i32 0, i32 0
  %12 = load %struct.umh_info*, %struct.umh_info** %11, align 8
  store %struct.umh_info* %12, %struct.umh_info** %6, align 8
  %13 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %8, i64 0, i64 0
  %14 = call i32 @create_pipe_files(%struct.file** %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %8, i64 0, i64 0
  %21 = load %struct.file*, %struct.file** %20, align 16
  %22 = call i32 @replace_fd(i32 0, %struct.file* %21, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %8, i64 0, i64 0
  %24 = load %struct.file*, %struct.file** %23, align 16
  %25 = call i32 @fput(%struct.file* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %8, i64 0, i64 1
  %30 = load %struct.file*, %struct.file** %29, align 8
  %31 = call i32 @fput(%struct.file* %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %71

33:                                               ; preds = %19
  %34 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %7, i64 0, i64 0
  %35 = call i32 @create_pipe_files(%struct.file** %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %8, i64 0, i64 1
  %40 = load %struct.file*, %struct.file** %39, align 8
  %41 = call i32 @fput(%struct.file* %40)
  %42 = call i32 @replace_fd(i32 0, %struct.file* null, i32 0)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %33
  %45 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %7, i64 0, i64 1
  %46 = load %struct.file*, %struct.file** %45, align 8
  %47 = call i32 @replace_fd(i32 1, %struct.file* %46, i32 0)
  store i32 %47, i32* %9, align 4
  %48 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %7, i64 0, i64 1
  %49 = load %struct.file*, %struct.file** %48, align 8
  %50 = call i32 @fput(%struct.file* %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %8, i64 0, i64 1
  %55 = load %struct.file*, %struct.file** %54, align 8
  %56 = call i32 @fput(%struct.file* %55)
  %57 = call i32 @replace_fd(i32 0, %struct.file* null, i32 0)
  %58 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %7, i64 0, i64 0
  %59 = load %struct.file*, %struct.file** %58, align 16
  %60 = call i32 @fput(%struct.file* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %71

62:                                               ; preds = %44
  %63 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %8, i64 0, i64 1
  %64 = load %struct.file*, %struct.file** %63, align 8
  %65 = load %struct.umh_info*, %struct.umh_info** %6, align 8
  %66 = getelementptr inbounds %struct.umh_info, %struct.umh_info* %65, i32 0, i32 1
  store %struct.file* %64, %struct.file** %66, align 8
  %67 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %7, i64 0, i64 0
  %68 = load %struct.file*, %struct.file** %67, align 16
  %69 = load %struct.umh_info*, %struct.umh_info** %6, align 8
  %70 = getelementptr inbounds %struct.umh_info, %struct.umh_info* %69, i32 0, i32 0
  store %struct.file* %68, %struct.file** %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %53, %38, %28, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @create_pipe_files(%struct.file**, i32) #1

declare dso_local i32 @replace_fd(i32, %struct.file*, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
