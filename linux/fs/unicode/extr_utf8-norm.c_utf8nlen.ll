; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8nlen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8nlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8data = type { i64 }

@UTF8HANGULLEAF = common dso_local global i32 0, align 4
@utf8agetab = common dso_local global i64* null, align 8
@DECOMPOSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8nlen(%struct.utf8data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.utf8data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.utf8data* %0, %struct.utf8data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* @UTF8HANGULLEAF, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.utf8data*, %struct.utf8data** %5, align 8
  %18 = icmp ne %struct.utf8data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %83

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %71, %20
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %80

31:                                               ; preds = %29
  %32 = load %struct.utf8data*, %struct.utf8data** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32* @utf8nlookup(%struct.utf8data* %32, i8* %16, i8* %33, i64 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %83

39:                                               ; preds = %31
  %40 = load i64*, i64** @utf8agetab, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @LEAF_GEN(i32* %41)
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.utf8data*, %struct.utf8data** %5, align 8
  %46 = getelementptr inbounds %struct.utf8data, %struct.utf8data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @utf8clen(i8* %50)
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %71

54:                                               ; preds = %39
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @LEAF_CCC(i32* %55)
  %57 = load i64, i64* @DECOMPOSE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @LEAF_STR(i32* %60)
  %62 = call i64 @strlen(i32 %61)
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %9, align 8
  br label %70

65:                                               ; preds = %54
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @utf8clen(i8* %66)
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @utf8clen(i8* %72)
  %74 = load i64, i64* %7, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @utf8clen(i8* %76)
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %6, align 8
  br label %21

80:                                               ; preds = %29
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %38, %19
  %84 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @utf8nlookup(%struct.utf8data*, i8*, i8*, i64) #2

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
