; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_match_until.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_match_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i64* }

@YYTD_ID_EC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_dfa_match_until(%struct.aa_dfa* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_dfa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  store %struct.aa_dfa* %0, %struct.aa_dfa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %19 = call i32* @DEFAULT_TABLE(%struct.aa_dfa* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %21 = call i64* @BASE_TABLE(%struct.aa_dfa* %20)
  store i64* %21, i64** %11, align 8
  %22 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %23 = call i32* @NEXT_TABLE(%struct.aa_dfa* %22)
  store i32* %23, i32** %12, align 8
  %24 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %25 = call i32* @CHECK_TABLE(%struct.aa_dfa* %24)
  store i32* %25, i32** %13, align 8
  %26 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %27 = call i64* @ACCEPT_TABLE(%struct.aa_dfa* %26)
  store i64* %27, i64** %14, align 8
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %143

32:                                               ; preds = %4
  %33 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %34 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @YYTD_ID_EC, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %32
  %41 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %42 = call i64* @EQUIV_TABLE(%struct.aa_dfa* %41)
  store i64* %42, i64** %17, align 8
  br label %43

43:                                               ; preds = %90, %40
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load i64*, i64** %11, align 8
  %49 = load i32, i32* %15, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @base_idx(i64 %52)
  %54 = load i64*, i64** %17, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %53, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %16, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %47
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %16, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  br label %82

76:                                               ; preds = %47
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %15, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load i64*, i64** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %82
  br label %43

91:                                               ; preds = %89, %43
  br label %139

92:                                               ; preds = %32
  br label %93

93:                                               ; preds = %137, %92
  %94 = load i8*, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  %98 = load i64*, i64** %11, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @base_idx(i64 %102)
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  %106 = load i8, i8* %104, align 1
  %107 = sext i8 %106 to i64
  %108 = add i64 %103, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %16, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %97
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %16, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %15, align 4
  br label %129

123:                                              ; preds = %97
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %15, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %123, %117
  %130 = load i64*, i64** %14, align 8
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %138

137:                                              ; preds = %129
  br label %93

138:                                              ; preds = %136, %93
  br label %139

139:                                              ; preds = %138, %91
  %140 = load i8*, i8** %8, align 8
  %141 = load i8**, i8*** %9, align 8
  store i8* %140, i8** %141, align 8
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %139, %31
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32* @DEFAULT_TABLE(%struct.aa_dfa*) #1

declare dso_local i64* @BASE_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @NEXT_TABLE(%struct.aa_dfa*) #1

declare dso_local i32* @CHECK_TABLE(%struct.aa_dfa*) #1

declare dso_local i64* @ACCEPT_TABLE(%struct.aa_dfa*) #1

declare dso_local i64* @EQUIV_TABLE(%struct.aa_dfa*) #1

declare dso_local i64 @base_idx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
