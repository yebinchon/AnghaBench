; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_make_parent_dir.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_make_parent_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @make_parent_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_parent_dir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = trunc i64 %10 to i32
  %15 = call i32 @strncpy(i8* %12, i8* %13, i32 %14)
  %16 = sub i64 %10, 1
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8 0, i8* %17, align 1
  %18 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %24, align 1
  store i8* %12, i8** %6, align 8
  br label %25

25:                                               ; preds = %30, %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  br label %25

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  store i8 0, i8* %39, align 1
  %40 = call i32 @is_dir(i8* %12)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = call i64 @mkdir(i8* %12, i32 493)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %58

46:                                               ; preds = %42, %38
  %47 = load i8*, i8** %6, align 8
  store i8 47, i8* %47, align 1
  br label %48

48:                                               ; preds = %53, %46
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %48

56:                                               ; preds = %48
  br label %34

57:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %45, %21
  %59 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @is_dir(i8*) #2

declare dso_local i64 @mkdir(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
