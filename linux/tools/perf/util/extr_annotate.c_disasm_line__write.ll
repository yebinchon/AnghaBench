; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.annotation = type { %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@DARROW_CHAR = common dso_local global i32 0, align 4
@UARROW_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@RARROW_CHAR = common dso_local global i32 0, align 4
@LARROW_CHAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disasm_line*, %struct.annotation*, i8*, i8*, i64, void (i8*, i8*, ...)*, void (i8*, i32)*)* @disasm_line__write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disasm_line__write(%struct.disasm_line* %0, %struct.annotation* %1, i8* %2, i8* %3, i64 %4, void (i8*, i8*, ...)* %5, void (i8*, i32)* %6) #0 {
  %8 = alloca %struct.disasm_line*, align 8
  %9 = alloca %struct.annotation*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca void (i8*, i8*, ...)*, align 8
  %14 = alloca void (i8*, i32)*, align 8
  %15 = alloca i32, align 4
  store %struct.disasm_line* %0, %struct.disasm_line** %8, align 8
  store %struct.annotation* %1, %struct.annotation** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store void (i8*, i8*, ...)* %5, void (i8*, i8*, ...)** %13, align 8
  store void (i8*, i32)* %6, void (i8*, i32)** %14, align 8
  %16 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %17 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %95

21:                                               ; preds = %7
  %22 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %23 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %95

29:                                               ; preds = %21
  %30 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %31 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %30, i32 0, i32 0
  %32 = call i64 @ins__is_jump(%struct.TYPE_16__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %29
  %35 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %36 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %72

42:                                               ; preds = %34
  %43 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %44 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %49 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %47, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load void (i8*, i32)*, void (i8*, i32)** %14, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* @DARROW_CHAR, align 4
  br label %62

60:                                               ; preds = %42
  %61 = load i32, i32* @UARROW_CHAR, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  call void %54(i8* %55, i32 %63)
  %64 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %13, align 8
  %65 = load i8*, i8** %10, align 8
  call void (i8*, i8*, ...) %64(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %94

66:                                               ; preds = %29
  %67 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %68 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %67, i32 0, i32 0
  %69 = call i64 @ins__is_call(%struct.TYPE_16__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %41
  %73 = load void (i8*, i32)*, void (i8*, i32)** %14, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @RARROW_CHAR, align 4
  call void %73(i8* %74, i32 %75)
  %76 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %13, align 8
  %77 = load i8*, i8** %10, align 8
  call void (i8*, i8*, ...) %76(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %93

78:                                               ; preds = %66
  %79 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %80 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %79, i32 0, i32 0
  %81 = call i64 @ins__is_ret(%struct.TYPE_16__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load void (i8*, i32)*, void (i8*, i32)** %14, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* @LARROW_CHAR, align 4
  call void %84(i8* %85, i32 %86)
  %87 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %13, align 8
  %88 = load i8*, i8** %10, align 8
  call void (i8*, i8*, ...) %87(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %92

89:                                               ; preds = %78
  %90 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %13, align 8
  %91 = load i8*, i8** %10, align 8
  call void (i8*, i8*, ...) %90(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %83
  br label %93

93:                                               ; preds = %92, %72
  br label %94

94:                                               ; preds = %93, %62
  br label %98

95:                                               ; preds = %21, %7
  %96 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %13, align 8
  %97 = load i8*, i8** %10, align 8
  call void (i8*, i8*, ...) %96(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %94
  %99 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.annotation*, %struct.annotation** %9, align 8
  %103 = getelementptr inbounds %struct.annotation, %struct.annotation* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load %struct.annotation*, %struct.annotation** %9, align 8
  %111 = getelementptr inbounds %struct.annotation, %struct.annotation* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @disasm_line__scnprintf(%struct.disasm_line* %99, i8* %100, i64 %101, i32 %109, i32 %113)
  ret void
}

declare dso_local i64 @ins__is_jump(%struct.TYPE_16__*) #1

declare dso_local i64 @ins__is_call(%struct.TYPE_16__*) #1

declare dso_local i64 @ins__is_ret(%struct.TYPE_16__*) #1

declare dso_local i32 @disasm_line__scnprintf(%struct.disasm_line*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
