; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_data = type { i64*, i32*, i32*, i8* }

@HANGUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unicode_data*)* @utf8_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @utf8_create(%struct.unicode_data* %0) #0 {
  %2 = alloca %struct.unicode_data*, align 8
  %3 = alloca [73 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.unicode_data* %0, %struct.unicode_data** %2, align 8
  %7 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %8 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %13 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HANGUL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %105

21:                                               ; preds = %1
  %22 = getelementptr inbounds [73 x i8], [73 x i8]* %3, i64 0, i64 0
  store i8* %22, i8** %4, align 8
  %23 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %24 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @utf8encode(i8* %37, i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load i8*, i8** %4, align 8
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [73 x i8], [73 x i8]* %3, i64 0, i64 0
  %53 = call i8* @strdup(i8* %52)
  %54 = bitcast i8* %53 to i64*
  %55 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %56 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %55, i32 0, i32 0
  store i64* %54, i64** %56, align 8
  br label %57

57:                                               ; preds = %50, %21
  %58 = getelementptr inbounds [73 x i8], [73 x i8]* %3, i64 0, i64 0
  store i8* %58, i8** %4, align 8
  %59 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %60 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %105

64:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load i8*, i8** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @utf8encode(i8* %73, i32 %78)
  %80 = load i8*, i8** %4, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load i8*, i8** %4, align 8
  store i8 0, i8* %87, align 1
  %88 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %89 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %94 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds [73 x i8], [73 x i8]* %3, i64 0, i64 0
  %97 = call i64 @strcmp(i64* %95, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92, %86
  %100 = getelementptr inbounds [73 x i8], [73 x i8]* %3, i64 0, i64 0
  %101 = call i8* @strdup(i8* %100)
  %102 = load %struct.unicode_data*, %struct.unicode_data** %2, align 8
  %103 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %11, %104, %57
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @utf8encode(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
