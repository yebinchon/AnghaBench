; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_short2lower_uni.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_short2lower_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i32*)*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nls_table*, i8*, i32, i32*)* @fat_short2lower_uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_short2lower_uni(%struct.nls_table* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.nls_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.nls_table* %0, %struct.nls_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %13 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %12, i32 0, i32 0
  %14 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 %14(i8* %15, i32 %16, i32* %10)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  store i32 63, i32* %21, align 4
  store i32 1, i32* %9, align 4
  br label %54

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %27 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %11, align 1
  %34 = load i8, i8* %11, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %11, align 1
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %41 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %40, i32 0, i32 0
  %42 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %41, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 %42(i8* %11, i32 1, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32*, i32** %8, align 8
  store i32 63, i32* %48, align 4
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %39
  br label %53

50:                                               ; preds = %22
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %49
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
