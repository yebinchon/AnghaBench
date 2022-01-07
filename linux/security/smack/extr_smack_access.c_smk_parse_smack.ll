; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_parse_smack.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_parse_smack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@SMK_LONGLABEL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @smk_parse_smack(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i8* @ERR_PTR(i32 %22)
  store i8* %23, i8** %3, align 8
  br label %110

24:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %79, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sgt i32 %35, 126
  br i1 %36, label %77, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 32
  br i1 %44, label %77, label %45

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %77, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 34
  br i1 %60, label %77, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %78

77:                                               ; preds = %69, %61, %53, %45, %37, %29
  br label %82

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %25

82:                                               ; preds = %77, %25
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SMK_LONGLABEL, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %82
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i8* @ERR_PTR(i32 %91)
  store i8* %92, i8** %3, align 8
  br label %110

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* @GFP_NOFS, align 4
  %97 = call i8* @kzalloc(i32 %95, i32 %96)
  store i8* %97, i8** %6, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  %103 = call i8* @ERR_PTR(i32 %102)
  store i8* %103, i8** %3, align 8
  br label %110

104:                                              ; preds = %93
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @strncpy(i8* %105, i8* %106, i32 %107)
  %109 = load i8*, i8** %6, align 8
  store i8* %109, i8** %3, align 8
  br label %110

110:                                              ; preds = %104, %100, %89, %20
  %111 = load i8*, i8** %3, align 8
  ret i8* %111
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
