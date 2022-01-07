; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_pkey_alloc.c_strarray__scnprintf_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_pkey_alloc.c_strarray__scnprintf_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strarray = type { i8**, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0x%#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strarray__scnprintf_flags(%struct.strarray* %0, i8* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.strarray*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.strarray* %0, %struct.strarray** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %11, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %5
  %19 = load %struct.strarray*, %struct.strarray** %7, align 8
  %20 = getelementptr inbounds %struct.strarray, %struct.strarray* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.strarray*, %struct.strarray** %7, align 8
  %33 = getelementptr inbounds %struct.strarray, %struct.strarray* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = load i8*, i8** %14, align 8
  %39 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  store i64 %39, i64* %6, align 8
  br label %139

40:                                               ; preds = %18
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i64 %43, i64* %6, align 8
  br label %139

44:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %45

45:                                               ; preds = %133, %44
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.strarray*, %struct.strarray** %7, align 8
  %48 = getelementptr inbounds %struct.strarray, %struct.strarray* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %136

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = shl i64 1, %54
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %15, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %133

61:                                               ; preds = %51
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %69, %71
  %73 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %68, i64 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %64, %61
  %79 = load %struct.strarray*, %struct.strarray** %7, align 8
  %80 = getelementptr inbounds %struct.strarray, %struct.strarray* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %117

87:                                               ; preds = %78
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %92, %94
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load %struct.strarray*, %struct.strarray** %7, align 8
  %100 = getelementptr inbounds %struct.strarray, %struct.strarray* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  br label %103

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i8* [ %101, %98 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %102 ]
  %105 = load %struct.strarray*, %struct.strarray** %7, align 8
  %106 = getelementptr inbounds %struct.strarray, %struct.strarray* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %91, i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %104, i8* %111)
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %132

117:                                              ; preds = %78
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i64, i64* %9, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 %122, %124
  %126 = load i64, i64* %15, align 8
  %127 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %121, i64 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %126)
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %117, %103
  br label %133

133:                                              ; preds = %132, %60
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %45

136:                                              ; preds = %45
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %6, align 8
  br label %139

139:                                              ; preds = %136, %40, %36
  %140 = load i64, i64* %6, align 8
  ret i64 %140
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
