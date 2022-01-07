; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_find_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, %struct.symbol* }

@symbolhash = common dso_local global %struct.symbol** null, align 8
@SYMBOL_HASH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*)* @find_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @find_symbol(i8* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 46
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.symbol**, %struct.symbol*** @symbolhash, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @tdb_hash(i8* %15)
  %17 = load i64, i64* @SYMBOL_HASH_SIZE, align 8
  %18 = urem i64 %16, %17
  %19 = getelementptr inbounds %struct.symbol*, %struct.symbol** %14, i64 %18
  %20 = load %struct.symbol*, %struct.symbol** %19, align 8
  store %struct.symbol* %20, %struct.symbol** %4, align 8
  br label %21

21:                                               ; preds = %34, %13
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = icmp ne %struct.symbol* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.symbol*, %struct.symbol** %4, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i32 %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %32, %struct.symbol** %2, align 8
  br label %39

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.symbol*, %struct.symbol** %4, align 8
  %36 = getelementptr inbounds %struct.symbol, %struct.symbol* %35, i32 0, i32 1
  %37 = load %struct.symbol*, %struct.symbol** %36, align 8
  store %struct.symbol* %37, %struct.symbol** %4, align 8
  br label %21

38:                                               ; preds = %21
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %40
}

declare dso_local i64 @tdb_hash(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
