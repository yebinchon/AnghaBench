; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_ip__fprintf_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_ip__fprintf_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.symbol = type { i64, i64, i8* }
%struct.perf_event_attr = type { i32 }
%struct.addr_location = type { i64, i32, %struct.symbol*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@SRCLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.thread*, i32, i32, %struct.symbol**, %struct.perf_event_attr*, i32*)* @ip__fprintf_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip__fprintf_sym(i32 %0, %struct.thread* %1, i32 %2, i32 %3, %struct.symbol** %4, %struct.perf_event_attr* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.symbol**, align 8
  %14 = alloca %struct.perf_event_attr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.addr_location, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.thread* %1, %struct.thread** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.symbol** %4, %struct.symbol*** %13, align 8
  store %struct.perf_event_attr* %5, %struct.perf_event_attr** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = call i32 @memset(%struct.addr_location* %16, i32 0, i32 32)
  %20 = load %struct.thread*, %struct.thread** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @thread__find_map(%struct.thread* %20, i32 %21, i32 %22, %struct.addr_location* %16)
  %24 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %25 = load %struct.symbol*, %struct.symbol** %24, align 8
  %26 = icmp ne %struct.symbol* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %31 = load %struct.symbol*, %struct.symbol** %30, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %29, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %39 = load %struct.symbol*, %struct.symbol** %38, align 8
  %40 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %149

44:                                               ; preds = %35, %27, %7
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  store %struct.symbol* null, %struct.symbol** %47, align 8
  %48 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.symbol* @map__find_symbol(%struct.TYPE_3__* %53, i64 %55)
  %57 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  store %struct.symbol* %56, %struct.symbol** %57, align 8
  br label %58

58:                                               ; preds = %51, %44
  %59 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  %60 = load %struct.symbol*, %struct.symbol** %59, align 8
  %61 = icmp ne %struct.symbol* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %149

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  %67 = load %struct.symbol*, %struct.symbol** %66, align 8
  %68 = getelementptr inbounds %struct.symbol, %struct.symbol* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  %75 = load %struct.symbol*, %struct.symbol** %74, align 8
  %76 = getelementptr inbounds %struct.symbol, %struct.symbol* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %73, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %17, align 4
  br label %95

80:                                               ; preds = %63
  %81 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %82, %87
  %89 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  %90 = load %struct.symbol*, %struct.symbol** %89, align 8
  %91 = getelementptr inbounds %struct.symbol, %struct.symbol* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %88, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %80, %71
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  %98 = load %struct.symbol*, %struct.symbol** %97, align 8
  %99 = getelementptr inbounds %struct.symbol, %struct.symbol* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %95
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i64 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %108, %95
  %117 = load i32*, i32** %15, align 8
  %118 = call i64 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* @SRCLINE, align 4
  %124 = call i64 @PRINT_FIELD(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 3
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %15, align 8
  %133 = call i64 @map__fprintf_srcline(%struct.TYPE_3__* %128, i32 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %132)
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %126, %116
  %139 = load i32*, i32** %15, align 8
  %140 = call i64 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %18, align 4
  %145 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 2
  %146 = load %struct.symbol*, %struct.symbol** %145, align 8
  %147 = load %struct.symbol**, %struct.symbol*** %13, align 8
  store %struct.symbol* %146, %struct.symbol** %147, align 8
  %148 = load i32, i32* %18, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %138, %62, %43
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @memset(%struct.addr_location*, i32, i32) #1

declare dso_local i32 @thread__find_map(%struct.thread*, i32, i32, %struct.addr_location*) #1

declare dso_local %struct.symbol* @map__find_symbol(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i64 @map__fprintf_srcline(%struct.TYPE_3__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
