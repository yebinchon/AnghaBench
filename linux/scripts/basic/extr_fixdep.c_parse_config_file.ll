; ModuleID = '/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_parse_config_file.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_parse_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_MODULE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_config_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %84, %27, %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %86

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @isalnum(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 95
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %15
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  store i8* %29, i8** %2, align 8
  br label %7

30:                                               ; preds = %21, %11
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 7
  store i8* %32, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %53, %30
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isalnum(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 95
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ true, %39 ], [ %48, %44 ]
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i1 [ false, %34 ], [ %50, %49 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  br label %34

56:                                               ; preds = %51
  %57 = load i8*, i8** %2, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i64 @str_ends_with(i8* %57, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -7
  store i8* %68, i8** %4, align 8
  br label %71

69:                                               ; preds = %56
  %70 = load i8*, i8** %3, align 8
  store i8* %70, i8** %4, align 8
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = icmp ugt i8* %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i8*, i8** %2, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @use_config(i8* %76, i32 %82)
  br label %84

84:                                               ; preds = %75, %71
  %85 = load i8*, i8** %3, align 8
  store i8* %85, i8** %2, align 8
  br label %7

86:                                               ; preds = %7
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @str_ends_with(i8*, i32, i8*) #1

declare dso_local i32 @use_config(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
