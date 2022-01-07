; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_find_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i64, i32, %struct.symbol* }

@HASH_BUCKETS = common dso_local global i64 0, align 8
@symtab = common dso_local global %struct.symbol** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @find_symbol(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @crc32(i8* %10)
  %12 = load i64, i64* @HASH_BUCKETS, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %8, align 8
  %14 = load %struct.symbol**, %struct.symbol*** @symtab, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.symbol*, %struct.symbol** %14, i64 %15
  %17 = load %struct.symbol*, %struct.symbol** %16, align 8
  store %struct.symbol* %17, %struct.symbol** %9, align 8
  br label %18

18:                                               ; preds = %43, %3
  %19 = load %struct.symbol*, %struct.symbol** %9, align 8
  %20 = icmp ne %struct.symbol* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load %struct.symbol*, %struct.symbol** %9, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @map_to_ns(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @map_to_ns(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.symbol*, %struct.symbol** %9, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strcmp(i8* %30, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.symbol*, %struct.symbol** %9, align 8
  %38 = getelementptr inbounds %struct.symbol, %struct.symbol* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36, %29, %21
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.symbol*, %struct.symbol** %9, align 8
  %45 = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 3
  %46 = load %struct.symbol*, %struct.symbol** %45, align 8
  store %struct.symbol* %46, %struct.symbol** %9, align 8
  br label %18

47:                                               ; preds = %41, %18
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.symbol*, %struct.symbol** %9, align 8
  %52 = icmp ne %struct.symbol* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.symbol*, %struct.symbol** %9, align 8
  %55 = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %62

60:                                               ; preds = %53, %50, %47
  %61 = load %struct.symbol*, %struct.symbol** %9, align 8
  store %struct.symbol* %61, %struct.symbol** %4, align 8
  br label %62

62:                                               ; preds = %60, %59
  %63 = load %struct.symbol*, %struct.symbol** %4, align 8
  ret %struct.symbol* %63
}

declare dso_local i64 @crc32(i8*) #1

declare dso_local i64 @map_to_ns(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
