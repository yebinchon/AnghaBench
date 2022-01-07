; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_util.c_name_to_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_util.c_name_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @name_to_int(%struct.qstr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qstr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qstr* %0, %struct.qstr** %3, align 8
  %8 = load %struct.qstr*, %struct.qstr** %3, align 8
  %9 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.qstr*, %struct.qstr** %3, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 48
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %48

22:                                               ; preds = %16, %1
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 48
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ugt i32 %29, 9
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %48

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp uge i32 %33, 429496728
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %48

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = mul i32 %37, 10
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %23, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %35, %31, %21
  store i32 -1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
