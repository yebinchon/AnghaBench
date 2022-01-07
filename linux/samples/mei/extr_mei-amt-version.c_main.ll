; ModuleID = '/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amt_code_versions = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.amt_host_if = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Intel AMT: DISABLED\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Intel AMT: ENABLED\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s:\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"An error has occurred\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.amt_code_versions, align 8
  %7 = alloca %struct.amt_host_if, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @amt_host_if_init(%struct.amt_host_if* %7, i32 5000, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  br label %65

27:                                               ; preds = %20
  %28 = call i32 @amt_get_code_versions(%struct.amt_host_if* %7, %struct.amt_code_versions* %6)
  store i32 %28, i32* %9, align 4
  %29 = call i32 @amt_host_if_deinit(%struct.amt_host_if* %7)
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %62 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %64

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %58, %33
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.amt_code_versions, %struct.amt_code_versions* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.amt_code_versions, %struct.amt_code_versions* %6, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.amt_code_versions, %struct.amt_code_versions* %6, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %56)
  br label %58

58:                                               ; preds = %40
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %35

61:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %64

62:                                               ; preds = %27
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %61, %31
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @amt_host_if_init(%struct.amt_host_if*, i32, i32) #1

declare dso_local i32 @amt_get_code_versions(%struct.amt_host_if*, %struct.amt_code_versions*) #1

declare dso_local i32 @amt_host_if_deinit(%struct.amt_host_if*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
