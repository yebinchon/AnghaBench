; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject_uevent.c_action_arg_word_end.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject_uevent.c_action_arg_word_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8)* @action_arg_word_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @action_arg_word_end(i8* %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ule i8* %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %17, %19
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @isalnum(i32 %27) #2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %39

31:                                               ; preds = %23
  br label %10

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* null, i8** %4, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %37, %36, %30
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
