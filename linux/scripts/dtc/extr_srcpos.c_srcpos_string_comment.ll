; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcpos_string_comment.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcpos_string_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { i8*, i8*, %struct.srcpos*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"<no-file>:<no-line>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<no-file>\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"<no-filename>\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s:%d:%d-%d:%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.srcpos*, i32, i32)* @srcpos_string_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @srcpos_string_comment(%struct.srcpos* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.srcpos*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.srcpos* %0, %struct.srcpos** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %14 = icmp ne %struct.srcpos* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 (i8**, i8*, ...) @xasprintf(i8** %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %4, align 8
  br label %126

21:                                               ; preds = %15
  store i8* null, i8** %4, align 8
  br label %126

22:                                               ; preds = %3
  %23 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %24 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %64

28:                                               ; preds = %22
  %29 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %30 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %63

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %41 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  br label %62

45:                                               ; preds = %36
  %46 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %47 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @shorten_to_initial_path(i8* %50)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  br label %61

55:                                               ; preds = %45
  %56 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %57 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %70 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %73 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %76 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %79 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8**, i8*, ...) @xasprintf(i8** %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %71, i32 %74, i8* %77, i32 %80)
  br label %97

82:                                               ; preds = %64
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %88 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  br label %94

90:                                               ; preds = %82
  %91 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %92 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i8* [ %89, %86 ], [ %93, %90 ]
  %96 = call i32 (i8**, i8*, ...) @xasprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %83, i8* %95)
  br label %97

97:                                               ; preds = %94, %67
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %105 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %104, i32 0, i32 2
  %106 = load %struct.srcpos*, %struct.srcpos** %105, align 8
  %107 = icmp ne %struct.srcpos* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %110 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %109, i32 0, i32 2
  %111 = load %struct.srcpos*, %struct.srcpos** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i8* @srcpos_string_comment(%struct.srcpos* %111, i32 %112, i32 %113)
  store i8* %114, i8** %11, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 (i8**, i8*, ...) @xasprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %115, i8* %116)
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @free(i8* %120)
  br label %124

122:                                              ; preds = %103
  %123 = load i8*, i8** %10, align 8
  store i8* %123, i8** %8, align 8
  br label %124

124:                                              ; preds = %122, %108
  %125 = load i8*, i8** %8, align 8
  store i8* %125, i8** %4, align 8
  br label %126

126:                                              ; preds = %124, %21, %18
  %127 = load i8*, i8** %4, align 8
  ret i8* %127
}

declare dso_local i32 @xasprintf(i8**, i8*, ...) #1

declare dso_local i8* @shorten_to_initial_path(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
