; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_umh.c_call_usermodehelper_setup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_umh.c_call_usermodehelper_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_info = type { i8*, i8**, i8**, void (%struct.subprocess_info*)*, i32 (%struct.subprocess_info*, %struct.cred*)*, i8*, i32 }
%struct.cred = type opaque
%struct.cred.0 = type opaque

@call_usermodehelper_exec_work = common dso_local global i32 0, align 4
@CONFIG_STATIC_USERMODEHELPER_PATH = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.subprocess_info* @call_usermodehelper_setup(i8* %0, i8** %1, i8** %2, i32 %3, i32 (%struct.subprocess_info*, %struct.cred.0*)* %4, void (%struct.subprocess_info*)* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.subprocess_info*, %struct.cred.0*)*, align 8
  %13 = alloca void (%struct.subprocess_info*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.subprocess_info*, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 (%struct.subprocess_info*, %struct.cred.0*)* %4, i32 (%struct.subprocess_info*, %struct.cred.0*)** %12, align 8
  store void (%struct.subprocess_info*)* %5, void (%struct.subprocess_info*)** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.subprocess_info* @kzalloc(i32 56, i32 %16)
  store %struct.subprocess_info* %17, %struct.subprocess_info** %15, align 8
  %18 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %19 = icmp ne %struct.subprocess_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  br label %45

21:                                               ; preds = %7
  %22 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %23 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %22, i32 0, i32 6
  %24 = load i32, i32* @call_usermodehelper_exec_work, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %28 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %31 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %30, i32 0, i32 1
  store i8** %29, i8*** %31, align 8
  %32 = load i8**, i8*** %10, align 8
  %33 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %34 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %33, i32 0, i32 2
  store i8** %32, i8*** %34, align 8
  %35 = load void (%struct.subprocess_info*)*, void (%struct.subprocess_info*)** %13, align 8
  %36 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %37 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %36, i32 0, i32 3
  store void (%struct.subprocess_info*)* %35, void (%struct.subprocess_info*)** %37, align 8
  %38 = load i32 (%struct.subprocess_info*, %struct.cred.0*)*, i32 (%struct.subprocess_info*, %struct.cred.0*)** %12, align 8
  %39 = bitcast i32 (%struct.subprocess_info*, %struct.cred.0*)* %38 to i32 (%struct.subprocess_info*, %struct.cred*)*
  %40 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %41 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %40, i32 0, i32 4
  store i32 (%struct.subprocess_info*, %struct.cred*)* %39, i32 (%struct.subprocess_info*, %struct.cred*)** %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  %44 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %21, %20
  %46 = load %struct.subprocess_info*, %struct.subprocess_info** %15, align 8
  ret %struct.subprocess_info* %46
}

declare dso_local %struct.subprocess_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
