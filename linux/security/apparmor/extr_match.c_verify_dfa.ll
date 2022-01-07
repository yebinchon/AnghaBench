; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_verify_dfa.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_verify_dfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@EPROTO = common dso_local global i32 0, align 4
@YYTD_ID_BASE = common dso_local global i64 0, align 8
@YYTD_ID_NXT = common dso_local global i64 0, align 8
@MATCH_FLAG_DIFF_ENCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AppArmor DFA next/check upper bounds error\0A\00", align 1
@MARK_DIFF_ENCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_dfa*)* @verify_dfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_dfa(%struct.aa_dfa* %0) #0 {
  %2 = alloca %struct.aa_dfa*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.aa_dfa* %0, %struct.aa_dfa** %2, align 8
  %9 = load i32, i32* @EPROTO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %12 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i64, i64* @YYTD_ID_BASE, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %20 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i64, i64* @YYTD_ID_NXT, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %63, %1
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %33 = call i32* @BASE_TABLE(%struct.aa_dfa* %32)
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MATCH_FLAG_DIFF_ENCODE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %42 = call i64* @DEFAULT_TABLE(%struct.aa_dfa* %41)
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %151

49:                                               ; preds = %40, %31
  %50 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %51 = call i32* @BASE_TABLE(%struct.aa_dfa* %50)
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @base_idx(i32 %54)
  %56 = add nsw i32 %55, 255
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %5, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %151

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %3, align 8
  br label %27

66:                                               ; preds = %27
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %67
  %72 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %73 = call i64* @NEXT_TABLE(%struct.aa_dfa* %72)
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %151

80:                                               ; preds = %71
  %81 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %82 = call i64* @CHECK_TABLE(%struct.aa_dfa* %81)
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = icmp uge i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %151

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %3, align 8
  br label %67

93:                                               ; preds = %67
  store i64 0, i64* %3, align 8
  br label %94

94:                                               ; preds = %147, %93
  %95 = load i64, i64* %3, align 8
  %96 = load i64, i64* %4, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %150

98:                                               ; preds = %94
  %99 = load i64, i64* %3, align 8
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %144, %98
  %101 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %102 = call i32* @BASE_TABLE(%struct.aa_dfa* %101)
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MATCH_FLAG_DIFF_ENCODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %100
  %110 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %111 = call i32* @BASE_TABLE(%struct.aa_dfa* %110)
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MARK_DIFF_ENCODE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %109, %100
  %120 = phi i1 [ false, %100 ], [ %118, %109 ]
  br i1 %120, label %121, label %146

121:                                              ; preds = %119
  %122 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %123 = call i64* @DEFAULT_TABLE(%struct.aa_dfa* %122)
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %151

131:                                              ; preds = %121
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %7, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %146

136:                                              ; preds = %131
  %137 = load i32, i32* @MARK_DIFF_ENCODE, align 4
  %138 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %139 = call i32* @BASE_TABLE(%struct.aa_dfa* %138)
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %136
  %145 = load i64, i64* %8, align 8
  store i64 %145, i64* %7, align 8
  br label %100

146:                                              ; preds = %135, %119
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %3, align 8
  br label %94

150:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %130, %88, %79, %60, %48
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32* @BASE_TABLE(%struct.aa_dfa*) #1

declare dso_local i64* @DEFAULT_TABLE(%struct.aa_dfa*) #1

declare dso_local i32 @base_idx(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64* @NEXT_TABLE(%struct.aa_dfa*) #1

declare dso_local i64* @CHECK_TABLE(%struct.aa_dfa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
