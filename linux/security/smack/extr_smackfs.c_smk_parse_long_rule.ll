; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_parse_long_rule.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_parse_long_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_parsed_rule = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.smack_parsed_rule*, i32, i32)* @smk_parse_long_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smk_parse_long_rule(i8* %0, %struct.smack_parsed_rule* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smack_parsed_rule*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.smack_parsed_rule* %1, %struct.smack_parsed_rule** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %69, %4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %26, %18
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 0, i8* %30, align 1
  br label %19

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %115

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %46
  store i8* %44, i8** %47, align 8
  br label %48

48:                                               ; preds = %65, %41
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %55, %48
  %64 = phi i1 [ false, %48 ], [ %62, %55 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %48

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %14

72:                                               ; preds = %14
  br label %73

73:                                               ; preds = %80, %72
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isspace(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  %84 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 0, i8* %84, align 1
  br label %73

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %89, %85
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %92
  store i8* null, i8** %93, align 8
  br label %86

94:                                               ; preds = %86
  %95 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %96 = load i8*, i8** %95, align 16
  %97 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  %100 = load i8*, i8** %99, align 16
  %101 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 3
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.smack_parsed_rule*, %struct.smack_parsed_rule** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @smk_fill_rule(i8* %96, i8* %98, i8* %100, i8* %102, %struct.smack_parsed_rule* %103, i32 %104, i32 0)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = load i64, i64* %10, align 8
  br label %113

110:                                              ; preds = %94
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  br label %113

113:                                              ; preds = %110, %108
  %114 = phi i64 [ %109, %108 ], [ %112, %110 ]
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %113, %38
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @smk_fill_rule(i8*, i8*, i8*, i8*, %struct.smack_parsed_rule*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
