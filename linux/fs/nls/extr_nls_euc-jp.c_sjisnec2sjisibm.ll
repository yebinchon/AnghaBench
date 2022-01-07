; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_euc-jp.c_sjisnec2sjisibm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_euc-jp.c_sjisnec2sjisibm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, i8)* @sjisnec2sjisibm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjisnec2sjisibm(i8* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %9 = load i8, i8* %6, align 1
  %10 = load i8, i8* %7, align 1
  %11 = call i32 @IS_SJIS_NECIBM(i8 zeroext %9, i8 zeroext %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

14:                                               ; preds = %3
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 238
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 249
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 -127, i8* %24, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 -54, i8* %26, align 1
  store i32 2, i32* %4, align 4
  br label %89

27:                                               ; preds = %18, %14
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 238
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %33, 239
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 249
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 61167, i32 61157
  %47 = sub nsw i32 %41, %46
  store i32 %47, i32* %8, align 4
  br label %65

48:                                               ; preds = %31, %27
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 %50, 237
  %52 = mul nsw i32 %51, 188
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %54, 64
  %56 = add nsw i32 %52, %55
  %57 = add nsw i32 %56, 28
  store i32 %57, i32* %8, align 4
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 127
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %48
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i32, i32* %8, align 4
  %67 = sdiv i32 %66, 188
  %68 = add nsw i32 250, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %8, align 4
  %73 = srem i32 %72, 188
  %74 = add nsw i32 64, %73
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8 %75, i8* %77, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sge i32 %81, 127
  br i1 %82, label %83, label %88

83:                                               ; preds = %65
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = add i8 %86, 1
  store i8 %87, i8* %85, align 1
  br label %88

88:                                               ; preds = %83, %65
  store i32 2, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %22, %13
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @IS_SJIS_NECIBM(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
