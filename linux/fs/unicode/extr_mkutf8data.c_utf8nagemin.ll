; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8nagemin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8nagemin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }

@UTF8HANGULLEAF = common dso_local global i32 0, align 4
@ages = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8nagemin(%struct.tree* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @UTF8HANGULLEAF, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.tree*, %struct.tree** %5, align 8
  %19 = icmp ne %struct.tree* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.tree*, %struct.tree** %5, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %60, %21
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %69

35:                                               ; preds = %33
  %36 = load %struct.tree*, %struct.tree** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32* @utf8nlookup(%struct.tree* %36, i8* %17, i8* %37, i64 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %71

43:                                               ; preds = %35
  %44 = load i32*, i32** @ages, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @LEAF_GEN(i32* %45)
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.tree*, %struct.tree** %5, align 8
  %51 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %54, %43
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @utf8clen(i8* %61)
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @utf8clen(i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %6, align 8
  br label %25

69:                                               ; preds = %33
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %69, %42, %20
  %72 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @utf8nlookup(%struct.tree*, i8*, i8*, i64) #2

declare dso_local i64 @LEAF_GEN(i32*) #2

declare dso_local i64 @utf8clen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
