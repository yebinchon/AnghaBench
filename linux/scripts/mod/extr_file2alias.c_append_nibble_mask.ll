; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_append_nibble_mask.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_append_nibble_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32)* @append_nibble_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_nibble_mask(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %22 [
    i32 0, label %12
    i32 15, label %15
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %7, align 8
  store i8 63, i8* %13, align 1
  br label %48

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %7, align 8
  br label %48

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  store i8 91, i8* %23, align 1
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %42, %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %26, 16
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  store i8 93, i8* %46, align 1
  br label %48

48:                                               ; preds = %45, %15, %12
  %49 = load i8*, i8** %7, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = load i8**, i8*** %4, align 8
  store i8* %50, i8** %51, align 8
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
