; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c___sprint_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c___sprint_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"+%#lx/%#lx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32)* @__sprint_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sprint_symbol(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @kallsyms_lookup(i64 %19, i64* %13, i64* %12, i8** %10, i8* %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %29)
  store i32 %30, i32* %5, align 4
  br label %72

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %12, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %48, %39
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %24
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i8* @kallsyms_lookup(i64, i64*, i64*, i8**, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
