; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_name.c_locase.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_name.c_locase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i8)* @locase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @locase(i8* %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %31

13:                                               ; preds = %9, %2
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp sge i32 %15, 65
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 %19, 90
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, 32
  br label %28

25:                                               ; preds = %17, %13
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %24, %21 ], [ %27, %25 ]
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  br label %42

31:                                               ; preds = %9
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8, i8* %5, align 1
  store i8 %35, i8* %3, align 1
  br label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %3, align 1
  br label %42

42:                                               ; preds = %36, %34, %28
  %43 = load i8, i8* %3, align 1
  ret i8 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
