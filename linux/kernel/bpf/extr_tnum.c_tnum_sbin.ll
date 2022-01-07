; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_sbin.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_sbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnum = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tnum_sbin(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tnum, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.tnum* %4 to i64*
  store i64 %2, i64* %8, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 64, i64* %7, align 8
  br label %9

9:                                                ; preds = %50, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 120, i8* %25, align 1
  br label %42

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 49, i8* %35, align 1
  br label %41

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 48, i8* %40, align 1
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42, %12
  %44 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %7, align 8
  br label %9

53:                                               ; preds = %9
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %55, 1
  %57 = call i64 @min(i64 %56, i64 64)
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  ret i32 64
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
