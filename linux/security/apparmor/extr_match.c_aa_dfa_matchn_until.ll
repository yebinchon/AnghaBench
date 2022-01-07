; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_matchn_until.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_aa_dfa_matchn_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i64* }

@YYTD_ID_EC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_dfa_matchn_until(%struct.aa_dfa* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_dfa*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store %struct.aa_dfa* %0, %struct.aa_dfa** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %20 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %21 = call i32* @DEFAULT_TABLE(%struct.aa_dfa* %20)
  store i32* %21, i32** %12, align 8
  %22 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %23 = call i64* @BASE_TABLE(%struct.aa_dfa* %22)
  store i64* %23, i64** %13, align 8
  %24 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %25 = call i32* @NEXT_TABLE(%struct.aa_dfa* %24)
  store i32* %25, i32** %14, align 8
  %26 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %27 = call i32* @CHECK_TABLE(%struct.aa_dfa* %26)
  store i32* %27, i32** %15, align 8
  %28 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %29 = call i64* @ACCEPT_TABLE(%struct.aa_dfa* %28)
  store i64* %29, i64** %16, align 8
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %17, align 4
  %31 = load i8**, i8*** %11, align 8
  store i8* null, i8** %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %150

35:                                               ; preds = %5
  %36 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %37 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @YYTD_ID_EC, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %97

43:                                               ; preds = %35
  %44 = load %struct.aa_dfa*, %struct.aa_dfa** %7, align 8
  %45 = call i64* @EQUIV_TABLE(%struct.aa_dfa* %44)
  store i64* %45, i64** %19, align 8
  br label %46

46:                                               ; preds = %93, %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %46
  %50 = load i64*, i64** %13, align 8
  %51 = load i32, i32* %17, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @base_idx(i64 %54)
  %56 = load i64*, i64** %19, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %55, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %18, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %18, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %49
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %18, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %17, align 4
  br label %84

78:                                               ; preds = %49
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %17, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i64*, i64** %16, align 8
  %86 = load i32, i32* %17, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %96

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %10, align 4
  br label %46

96:                                               ; preds = %91, %46
  br label %146

97:                                               ; preds = %35
  br label %98

98:                                               ; preds = %142, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %145

101:                                              ; preds = %98
  %102 = load i64*, i64** %13, align 8
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @base_idx(i64 %106)
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i64
  %112 = add i64 %107, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %18, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %101
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %18, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %17, align 4
  br label %133

127:                                              ; preds = %101
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %127, %121
  %134 = load i64*, i64** %16, align 8
  %135 = load i32, i32* %17, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %145

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %10, align 4
  br label %98

145:                                              ; preds = %140, %98
  br label %146

146:                                              ; preds = %145, %96
  %147 = load i8*, i8** %9, align 8
  %148 = load i8**, i8*** %11, align 8
  store i8* %147, i8** %148, align 8
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %146, %34
  %151 = load i32, i32* %6, align 4
  ret i32 %151
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
