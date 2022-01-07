; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64 }

@UTF8HANGULLEAF = common dso_local global i32 0, align 4
@ages = common dso_local global i64* null, align 8
@DECOMPOSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8len(%struct.tree* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* @UTF8HANGULLEAF, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.tree*, %struct.tree** %4, align 8
  %16 = icmp ne %struct.tree* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %70

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %62, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %19
  %24 = load %struct.tree*, %struct.tree** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @utf8lookup(%struct.tree* %24, i8* %14, i8* %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %70

30:                                               ; preds = %23
  %31 = load i64*, i64** @ages, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @LEAF_GEN(i32* %32)
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tree*, %struct.tree** %4, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @utf8clen(i8* %41)
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %62

45:                                               ; preds = %30
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @LEAF_CCC(i32* %46)
  %48 = load i64, i64* @DECOMPOSE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @LEAF_STR(i32* %51)
  %53 = call i64 @strlen(i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %7, align 8
  br label %61

56:                                               ; preds = %45
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @utf8clen(i8* %57)
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @utf8clen(i8* %63)
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %5, align 8
  br label %19

67:                                               ; preds = %19
  %68 = load i64, i64* %7, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %67, %29, %17
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @utf8lookup(%struct.tree*, i8*, i8*) #2

declare dso_local i64 @LEAF_GEN(i32*) #2

declare dso_local i64 @utf8clen(i8*) #2

declare dso_local i64 @LEAF_CCC(i32*) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @LEAF_STR(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
