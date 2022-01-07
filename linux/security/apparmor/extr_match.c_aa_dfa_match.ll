; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_match.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i64* }

@YYTD_ID_EC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_dfa_match(%struct.aa_dfa* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_dfa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.aa_dfa* %0, %struct.aa_dfa** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.aa_dfa*, %struct.aa_dfa** %5, align 8
  %15 = call i32* @DEFAULT_TABLE(%struct.aa_dfa* %14)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.aa_dfa*, %struct.aa_dfa** %5, align 8
  %17 = call i32* @BASE_TABLE(%struct.aa_dfa* %16)
  store i32* %17, i32** %9, align 8
  %18 = load %struct.aa_dfa*, %struct.aa_dfa** %5, align 8
  %19 = call i32* @NEXT_TABLE(%struct.aa_dfa* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.aa_dfa*, %struct.aa_dfa** %5, align 8
  %21 = call i32* @CHECK_TABLE(%struct.aa_dfa* %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

26:                                               ; preds = %3
  %27 = load %struct.aa_dfa*, %struct.aa_dfa** %5, align 8
  %28 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @YYTD_ID_EC, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %26
  %35 = load %struct.aa_dfa*, %struct.aa_dfa** %5, align 8
  %36 = call i64* @EQUIV_TABLE(%struct.aa_dfa* %35)
  store i64* %36, i64** %13, align 8
  br label %37

37:                                               ; preds = %41, %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i64*, i64** %13, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i64
  %52 = getelementptr inbounds i64, i64* %47, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @match_char(i32 %42, i32* %43, i32* %44, i32* %45, i32* %46, i64 %53)
  br label %37

55:                                               ; preds = %37
  br label %73

56:                                               ; preds = %26
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i64
  %71 = call i32 @match_char(i32 %62, i32* %63, i32* %64, i32* %65, i32* %66, i64 %70)
  br label %57

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %25
  %76 = load i32, i32* %4, align 4
  ret i32 %76
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
