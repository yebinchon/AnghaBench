; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_check_symbol_range.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_check_symbol_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_range = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.addr_range*, i32)* @check_symbol_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_symbol_range(i8* %0, i64 %1, %struct.addr_range* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.addr_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.addr_range*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.addr_range* %2, %struct.addr_range** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %44, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load %struct.addr_range*, %struct.addr_range** %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %18, i64 %19
  store %struct.addr_range* %20, %struct.addr_range** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.addr_range*, %struct.addr_range** %11, align 8
  %23 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i8* %21, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.addr_range*, %struct.addr_range** %11, align 8
  %30 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i32 0, i32* %5, align 4
  br label %48

31:                                               ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.addr_range*, %struct.addr_range** %11, align 8
  %34 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @strcmp(i8* %32, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.addr_range*, %struct.addr_range** %11, align 8
  %41 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %5, align 4
  br label %48

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %12

47:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %38, %27
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
