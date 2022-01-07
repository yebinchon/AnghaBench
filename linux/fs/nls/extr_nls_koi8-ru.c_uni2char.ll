; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_koi8-ru.c_uni2char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_koi8-ru.c_uni2char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@p_nls = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @uni2char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni2char(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @ENAMETOOLONG, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %58

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 65455
  %16 = icmp eq i32 %15, 1038
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65486
  %20 = icmp eq i32 %19, 9548
  br i1 %20, label %21, label %50

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1038
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 -66, i8* %26, align 1
  br label %49

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 1118
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 -82, i8* %32, align 1
  br label %48

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 9565
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 9580
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store i32 0, i32* %4, align 4
  br label %58

40:                                               ; preds = %36
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 %43(i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %24
  store i32 1, i32* %4, align 4
  br label %58

50:                                               ; preds = %17
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 %53(i32 %54, i8* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %49, %40, %39, %10
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
