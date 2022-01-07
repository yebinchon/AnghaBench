; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_get_source_filename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_get_source_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__**, i32, i32*)*, {}*, i64 (%struct.TYPE_9__**, i32, i8**, i32*)*, i32 (%struct.TYPE_9__**, i8*)* }

@PATH_MAX = common dso_local global i32 0, align 4
@JVMTI_ERROR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GetMethodDeclaringClass\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GetSourceFileName\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"GetClassSignature\00", align 1
@JVMTI_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__**, i32, i8**)* @get_source_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_source_filename(%struct.TYPE_9__** %0, i32 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_9__**, i32, i32*)*, i64 (%struct.TYPE_9__**, i32, i32*)** %22, align 8
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 %23(%struct.TYPE_9__** %24, i32 %25, i32* %9)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @JVMTI_ERROR_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @print_error(%struct.TYPE_9__** %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %108

35:                                               ; preds = %3
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to i64 (%struct.TYPE_9__**, i32, i8**)**
  %40 = load i64 (%struct.TYPE_9__**, i32, i8**)*, i64 (%struct.TYPE_9__**, i32, i8**)** %39, align 8
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 %40(%struct.TYPE_9__** %41, i32 %42, i8** %10)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @JVMTI_ERROR_NONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @print_error(%struct.TYPE_9__** %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %108

52:                                               ; preds = %35
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i64 (%struct.TYPE_9__**, i32, i8**, i32*)*, i64 (%struct.TYPE_9__**, i32, i8**, i32*)** %55, align 8
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 %56(%struct.TYPE_9__** %57, i32 %58, i8** %11, i32* null)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @JVMTI_ERROR_NONE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @print_error(%struct.TYPE_9__** %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  br label %99

67:                                               ; preds = %52
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* @PATH_MAX, align 4
  %71 = call i32 @copy_class_filename(i8* %68, i8* %69, i8* %19, i32 %70)
  %72 = call i64 @strlen(i8* %19)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  %75 = mul i64 %74, 1
  %76 = call i8* @malloc(i64 %75)
  %77 = load i8**, i8*** %7, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %7, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %67
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @print_error(%struct.TYPE_9__** %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i64, i64* @JVMTI_ERROR_OUT_OF_MEMORY, align 8
  store i64 %85, i64* %8, align 8
  br label %91

86:                                               ; preds = %67
  %87 = load i8**, i8*** %7, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcpy(i8* %88, i8* %19)
  %90 = load i64, i64* @JVMTI_ERROR_NONE, align 8
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32 (%struct.TYPE_9__**, i8*)*, i32 (%struct.TYPE_9__**, i8*)** %94, align 8
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 %95(%struct.TYPE_9__** %96, i8* %97)
  br label %99

99:                                               ; preds = %91, %63
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i32 (%struct.TYPE_9__**, i8*)*, i32 (%struct.TYPE_9__**, i8*)** %102, align 8
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 %103(%struct.TYPE_9__** %104, i8* %105)
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %108

108:                                              ; preds = %99, %47, %30
  %109 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i64, i64* %4, align 8
  ret i64 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @print_error(%struct.TYPE_9__**, i8*, i64) #2

declare dso_local i32 @copy_class_filename(i8*, i8*, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
