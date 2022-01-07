; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_euc-jp.c_euc2sjisibm_g3upper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_euc-jp.c_euc2sjisibm_g3upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@euc2sjisibm_g3upper_map = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, i8)* @euc2sjisibm_g3upper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc2sjisibm_g3upper(i8* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 243
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 8
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = sub nsw i32 %18, 62451
  store i32 %19, i32* %8, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 8
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = sub nsw i32 %26, 62625
  %28 = add nsw i32 %27, 12
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %20, %12
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i8**, i8*** @euc2sjisibm_g3upper_map, align 8
  %35 = call i32 @ARRAY_SIZE(i8** %34)
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %29
  store i32 0, i32* %4, align 4
  br label %57

38:                                               ; preds = %32
  %39 = load i8**, i8*** @euc2sjisibm_g3upper_map, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %45, i8* %47, align 1
  %48 = load i8**, i8*** @euc2sjisibm_g3upper_map, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  store i32 3, i32* %4, align 4
  br label %57

57:                                               ; preds = %38, %37
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
