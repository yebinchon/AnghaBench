; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_util.c_set_theme.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_util.c_set_theme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"classic\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bluetitle\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"blackbg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @set_theme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_theme(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @set_bluetitle_theme()
  br label %35

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @set_classic_theme()
  br label %34

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @set_bluetitle_theme()
  br label %33

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @set_blackbg_theme()
  br label %32

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26
  br label %32

32:                                               ; preds = %31, %24
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %12
  br label %35

35:                                               ; preds = %34, %6
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @set_bluetitle_theme(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_classic_theme(...) #1

declare dso_local i32 @set_blackbg_theme(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
