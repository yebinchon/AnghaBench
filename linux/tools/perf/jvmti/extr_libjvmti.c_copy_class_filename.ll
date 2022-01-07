; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_copy_class_filename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_copy_class_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64)* @copy_class_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_class_filename(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 76
  br i1 %15, label %16, label %83

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %37, i8* %41, align 1
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %22

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45, %16
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %50, 1
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = icmp slt i32 %57, %59
  br label %61

61:                                               ; preds = %56, %53, %47
  %62 = phi i1 [ false, %53 ], [ false, %47 ], [ %60, %56 ]
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %68, i8* %72, align 1
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %47

78:                                               ; preds = %61
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  br label %88

83:                                               ; preds = %4
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @strlcpy(i8* %84, i8* %85, i64 %86)
  br label %88

88:                                               ; preds = %83, %78
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
