; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_joliet.c_uni16_to_x8.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_joliet.c_uni16_to_x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i32, i8*, i32)* }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, %struct.nls_table*)* @uni16_to_x8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni16_to_x8(i8* %0, i32* %1, i32 %2, %struct.nls_table* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nls_table* %3, %struct.nls_table** %8, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %11, align 8
  br label %15

15:                                               ; preds = %43, %4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @get_unaligned(i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  %25 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %26 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %25, i32 0, i32 0
  %27 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @be16_to_cpu(i32 %28)
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %32 = call i32 %27(i32 %29, i8* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %11, align 8
  br label %43

40:                                               ; preds = %24
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %11, align 8
  store i8 63, i8* %41, align 1
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %22
  %49 = load i8*, i8** %11, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
