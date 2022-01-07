; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_decompose.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Decomposing nfdi\0A\00", align 1
@unicode_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Processed %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nfdi_decompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfdi_decompose() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [19 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @verbose, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %150, %13
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 1114112
  br i1 %16, label %17, label %153

17:                                               ; preds = %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %150

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %88, %26
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %29 = load i32, i32* %1, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %77, %27
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [19 x i32], [19 x i32]* %2, i64 0, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %49

69:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %77

70:                                               ; preds = %38
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [19 x i32], [19 x i32]* %2, i64 0, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %69
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %3, align 8
  br label %34

80:                                               ; preds = %34
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds [19 x i32], [19 x i32]* %2, i64 0, i64 %83
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %114

88:                                               ; preds = %80
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %90 = load i32, i32* %1, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @free(i32* %94)
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32* @malloc(i32 %99)
  store i32* %100, i32** %3, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds [19 x i32], [19 x i32]* %2, i64 0, i64 0
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i32* %101, i32* %102, i32 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %110 = load i32, i32* %1, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32* %108, i32** %113, align 8
  br label %27

114:                                              ; preds = %87
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %116 = load i32, i32* %1, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %141, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32* @malloc(i32 %126)
  store i32* %127, i32** %3, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = getelementptr inbounds [19 x i32], [19 x i32]* %2, i64 0, i64 0
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memcpy(i32* %128, i32* %129, i32 %133)
  %135 = load i32*, i32** %3, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %137 = load i32, i32* %1, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i32* %135, i32** %140, align 8
  br label %141

141:                                              ; preds = %122, %114
  %142 = load i32, i32* @verbose, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %1, align 4
  %146 = call i32 @print_utf32nfdi(i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %147, %25
  %151 = load i32, i32* %1, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %1, align 4
  br label %14

153:                                              ; preds = %14
  %154 = load i32, i32* @verbose, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %5, align 4
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %156, %153
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @print_utf32nfdi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
