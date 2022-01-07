; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_d_path.c_prepend_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_d_path.c_prepend_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.qstr*)* @prepend_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepend_name(i8** %0, i32* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %12 = load %struct.qstr*, %struct.qstr** %7, align 8
  %13 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %14 = call i8* @smp_load_acquire(i32* %13)
  store i8* %14, i8** %8, align 8
  %15 = load %struct.qstr*, %struct.qstr** %7, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @READ_ONCE(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add nsw i64 %19, 1
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %20
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = sub i64 0, %34
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %35, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  store i8 47, i8* %39, align 1
  br label %41

41:                                               ; preds = %52, %32
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %9, align 8
  %44 = icmp ne i64 %42, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  %48 = load i8, i8* %46, align 1
  store i8 %48, i8* %11, align 1
  %49 = load i8, i8* %11, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %56

52:                                               ; preds = %45
  %53 = load i8, i8* %11, align 1
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  store i8 %53, i8* %54, align 1
  br label %41

56:                                               ; preds = %51, %41
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @smp_load_acquire(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
