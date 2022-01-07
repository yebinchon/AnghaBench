; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_script_browse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_script_browse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }

@SCRIPT_FULLPATH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s%s %s %s%s 2>&1 | less\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"perf script -s \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@input_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"-i \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @script_browse(i8* %0, %struct.evsel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  %11 = load i32, i32* @SCRIPT_FULLPATH_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @SCRIPT_FULLPATH_LEN, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.evsel*, %struct.evsel** %5, align 8
  %18 = call i64 @list_scripts(i8* %14, i32* %9, %struct.evsel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %30 ]
  %33 = load i8*, i8** @input_name, align 8
  %34 = icmp ne i8* %33, null
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i8*, i8** @input_name, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i8*, i8** @input_name, align 8
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %41 ]
  %44 = call i64 @asprintf(i8** %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %14, i8* %32, i8* %36, i8* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @run_script(i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @free(i8* %50)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %47, %46, %20
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @list_scripts(i8*, i32*, %struct.evsel*) #2

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @run_script(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
