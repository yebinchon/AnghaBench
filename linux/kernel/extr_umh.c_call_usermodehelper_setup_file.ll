; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c_call_usermodehelper_setup_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c_call_usermodehelper_setup_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_info = type { i8*, i32 (%struct.subprocess_info*, %struct.cred*)*, void (%struct.subprocess_info*)*, i8*, %struct.file*, i32, i32 }
%struct.cred = type opaque
%struct.file = type { i32 }
%struct.cred.0 = type opaque
%struct.umh_info = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"usermodehelper\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@call_usermodehelper_exec_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.subprocess_info* @call_usermodehelper_setup_file(%struct.file* %0, i32 (%struct.subprocess_info*, %struct.cred.0*)* %1, void (%struct.subprocess_info*)* %2, i8* %3) #0 {
  %5 = alloca %struct.subprocess_info*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32 (%struct.subprocess_info*, %struct.cred.0*)*, align 8
  %8 = alloca void (%struct.subprocess_info*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.subprocess_info*, align 8
  %11 = alloca %struct.umh_info*, align 8
  %12 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 (%struct.subprocess_info*, %struct.cred.0*)* %1, i32 (%struct.subprocess_info*, %struct.cred.0*)** %7, align 8
  store void (%struct.subprocess_info*)* %2, void (%struct.subprocess_info*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.umh_info*
  store %struct.umh_info* %14, %struct.umh_info** %11, align 8
  %15 = load %struct.umh_info*, %struct.umh_info** %11, align 8
  %16 = getelementptr inbounds %struct.umh_info, %struct.umh_info* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.umh_info*, %struct.umh_info** %11, align 8
  %21 = getelementptr inbounds %struct.umh_info, %struct.umh_info* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %23 ]
  store i8* %25, i8** %12, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.subprocess_info* @kzalloc(i32 48, i32 %26)
  store %struct.subprocess_info* %27, %struct.subprocess_info** %10, align 8
  %28 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %29 = icmp ne %struct.subprocess_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store %struct.subprocess_info* null, %struct.subprocess_info** %5, align 8
  br label %65

31:                                               ; preds = %24
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @argv_split(i32 %32, i8* %33, i32* null)
  %35 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %36 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %38 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %43 = call i32 @kfree(%struct.subprocess_info* %42)
  store %struct.subprocess_info* null, %struct.subprocess_info** %5, align 8
  br label %65

44:                                               ; preds = %31
  %45 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %46 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %45, i32 0, i32 5
  %47 = load i32, i32* @call_usermodehelper_exec_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %50 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.file*, %struct.file** %6, align 8
  %52 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %53 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %52, i32 0, i32 4
  store %struct.file* %51, %struct.file** %53, align 8
  %54 = load i32 (%struct.subprocess_info*, %struct.cred.0*)*, i32 (%struct.subprocess_info*, %struct.cred.0*)** %7, align 8
  %55 = bitcast i32 (%struct.subprocess_info*, %struct.cred.0*)* %54 to i32 (%struct.subprocess_info*, %struct.cred*)*
  %56 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %57 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %56, i32 0, i32 1
  store i32 (%struct.subprocess_info*, %struct.cred*)* %55, i32 (%struct.subprocess_info*, %struct.cred*)** %57, align 8
  %58 = load void (%struct.subprocess_info*)*, void (%struct.subprocess_info*)** %8, align 8
  %59 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %60 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %59, i32 0, i32 2
  store void (%struct.subprocess_info*)* %58, void (%struct.subprocess_info*)** %60, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %63 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  store %struct.subprocess_info* %64, %struct.subprocess_info** %5, align 8
  br label %65

65:                                               ; preds = %44, %41, %30
  %66 = load %struct.subprocess_info*, %struct.subprocess_info** %5, align 8
  ret %struct.subprocess_info* %66
}

declare dso_local %struct.subprocess_info* @kzalloc(i32, i32) #1

declare dso_local i32 @argv_split(i32, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.subprocess_info*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
