; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_next.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i64* }

@YYTD_ID_EC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_dfa_next(%struct.aa_dfa* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.aa_dfa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  store %struct.aa_dfa* %0, %struct.aa_dfa** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %12 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %13 = call i32* @DEFAULT_TABLE(%struct.aa_dfa* %12)
  store i32* %13, i32** %7, align 8
  %14 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %15 = call i32* @BASE_TABLE(%struct.aa_dfa* %14)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %17 = call i32* @NEXT_TABLE(%struct.aa_dfa* %16)
  store i32* %17, i32** %9, align 8
  %18 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %19 = call i32* @CHECK_TABLE(%struct.aa_dfa* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %21 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @YYTD_ID_EC, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %29 = call i64* @EQUIV_TABLE(%struct.aa_dfa* %28)
  store i64* %29, i64** %11, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @match_char(i32 %30, i32* %31, i32* %32, i32* %33, i32* %34, i64 %39)
  br label %50

41:                                               ; preds = %3
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i8, i8* %6, align 1
  %48 = sext i8 %47 to i64
  %49 = call i32 @match_char(i32 %42, i32* %43, i32* %44, i32* %45, i32* %46, i64 %48)
  br label %50

50:                                               ; preds = %41, %27
  %51 = load i32, i32* %5, align 4
  ret i32 %51
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
