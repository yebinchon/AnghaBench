; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_qword_addhex.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_qword_addhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qword_addhex(i8** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %65

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %9, align 8
  store i8 92, i8* %22, align 1
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  store i8 120, i8* %24, align 1
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %36, %21
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %32, 2
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %47

36:                                               ; preds = %34
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = call i8* @hex_byte_pack(i8* %37, i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  br label %28

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  store i32 -1, i32* %10, align 4
  br label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 32, i8* %56, align 1
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i8*, i8** %9, align 8
  %62 = load i8**, i8*** %5, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %17
  ret void
}

declare dso_local i8* @hex_byte_pack(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
