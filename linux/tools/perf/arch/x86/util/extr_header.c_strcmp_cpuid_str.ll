; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_header.c_strcmp_cpuid_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_header.c_strcmp_cpuid_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [72 x i8] c"Invalid CPUID %s. Full CPUID is required, vendor-family-model-stepping\0A\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid regular expression %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strcmp_cpuid_str(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.TYPE_3__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @is_full_cpuid(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @is_full_cpuid(i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 1, i32* %3, align 4
  br label %73

25:                                               ; preds = %19, %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @REG_EXTENDED, align 4
  %28 = call i64 @regcomp(i32* %6, i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 1, i32* %3, align 4
  br label %73

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %36 = call i32 @regexec(i32* %6, i8* %34, i32 1, %struct.TYPE_3__* %35, i32 0)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = call i32 @regfree(i32* %6)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %33
  %44 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 16
  %47 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @strrchr(i8* %57, i8 signext 45)
  %59 = load i8*, i8** %5, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  store i64 %62, i64* %12, align 8
  br label %66

63:                                               ; preds = %53, %43
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strlen(i8* %64)
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %73

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %33
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %30, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @is_full_cpuid(i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
