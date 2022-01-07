; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_match_len.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_match_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i64* }

@YYTD_ID_EC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_dfa_match_len(%struct.aa_dfa* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_dfa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.aa_dfa* %0, %struct.aa_dfa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %17 = call i32* @DEFAULT_TABLE(%struct.aa_dfa* %16)
  store i32* %17, i32** %10, align 8
  %18 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %19 = call i32* @BASE_TABLE(%struct.aa_dfa* %18)
  store i32* %19, i32** %11, align 8
  %20 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %21 = call i32* @NEXT_TABLE(%struct.aa_dfa* %20)
  store i32* %21, i32** %12, align 8
  %22 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %23 = call i32* @CHECK_TABLE(%struct.aa_dfa* %22)
  store i32* %23, i32** %13, align 8
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %81

28:                                               ; preds = %4
  %29 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %30 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @YYTD_ID_EC, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %28
  %37 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %38 = call i64* @EQUIV_TABLE(%struct.aa_dfa* %37)
  store i64* %38, i64** %15, align 8
  br label %39

39:                                               ; preds = %56, %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i64*, i64** %15, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @match_char(i32 %43, i32* %44, i32* %45, i32* %46, i32* %47, i64 %54)
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  br label %39

59:                                               ; preds = %39
  br label %79

60:                                               ; preds = %28
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i64
  %74 = call i32 @match_char(i32 %65, i32* %66, i32* %67, i32* %68, i32* %69, i64 %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %9, align 4
  br label %61

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %27
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32* @DEFAULT_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @BASE_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @NEXT_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @CHECK_TABLE(%struct.aa_dfa*) #1

declare dso_local i64* @EQUIV_TABLE(%struct.aa_dfa*) #1

declare dso_local i32 @match_char(i32, i32*, i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
