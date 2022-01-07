; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_splitn_fqname.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_splitn_fqname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @aa_splitn_fqname(i8* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i8* @skipn_spaces(i8* %16, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8**, i8*** %8, align 8
  store i8* null, i8** %20, align 8
  %21 = load i64*, i64** %9, align 8
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %118

25:                                               ; preds = %4
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %107

31:                                               ; preds = %25
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @strnchr(i8* %33, i32 %40, i8 signext 58)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = ptrtoint i8* %44 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i8* @skipn_spaces(i8* %43, i32 %50)
  %52 = load i8**, i8*** %8, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %8, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %31
  store i8* null, i8** %5, align 8
  br label %118

57:                                               ; preds = %31
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %98

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  %62 = load i8**, i8*** %8, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %61 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i8**, i8*** %8, align 8
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %71, %60
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = icmp sgt i64 %80, 1
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %88, i8** %12, align 8
  br label %89

89:                                               ; preds = %86, %82, %73
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i8* @skipn_spaces(i8* %90, i32 %96)
  store i8* %97, i8** %11, align 8
  br label %106

98:                                               ; preds = %57
  store i8* null, i8** %11, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8**, i8*** %8, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %99 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %98, %89
  br label %107

107:                                              ; preds = %106, %25
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i8*, i8** %11, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i8* null, i8** %11, align 8
  br label %116

116:                                              ; preds = %115, %110, %107
  %117 = load i8*, i8** %11, align 8
  store i8* %117, i8** %5, align 8
  br label %118

118:                                              ; preds = %116, %56, %24
  %119 = load i8*, i8** %5, align 8
  ret i8* %119
}

declare dso_local i8* @skipn_spaces(i8*, i32) #1

declare dso_local i8* @strnchr(i8*, i32, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
