; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_valid_master_desc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_valid_master_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_TRUSTED_PREFIX = common dso_local global i8* null, align 8
@KEY_TRUSTED_PREFIX_LEN = common dso_local global i32 0, align 4
@KEY_USER_PREFIX = common dso_local global i8* null, align 8
@KEY_USER_PREFIX_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @valid_master_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_master_desc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** @KEY_TRUSTED_PREFIX, align 8
  %9 = load i32, i32* @KEY_TRUSTED_PREFIX_LEN, align 4
  %10 = call i64 @strncmp(i8* %7, i8* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @KEY_TRUSTED_PREFIX_LEN, align 4
  store i32 %13, i32* %6, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** @KEY_USER_PREFIX, align 8
  %17 = load i32, i32* @KEY_USER_PREFIX_LEN, align 4
  %18 = call i64 @strncmp(i8* %15, i8* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @KEY_USER_PREFIX_LEN, align 4
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @strncmp(i8* %40, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %39, %36
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %33, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
