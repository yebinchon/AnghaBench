; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_new_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_new_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, %struct.module* }
%struct.module = type { i32 }

@SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@symbolhash = common dso_local global %struct.symbol** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, %struct.module*, i32)* @new_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @new_symbol(i8* %0, %struct.module* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @tdb_hash(i8* %9)
  %11 = load i32, i32* @SYMBOL_HASH_SIZE, align 4
  %12 = urem i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.symbol**, %struct.symbol*** @symbolhash, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.symbol*, %struct.symbol** %14, i64 %16
  %18 = load %struct.symbol*, %struct.symbol** %17, align 8
  %19 = call %struct.symbol* @alloc_symbol(i8* %13, i32 0, %struct.symbol* %18)
  %20 = load %struct.symbol**, %struct.symbol*** @symbolhash, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.symbol*, %struct.symbol** %20, i64 %22
  store %struct.symbol* %19, %struct.symbol** %23, align 8
  store %struct.symbol* %19, %struct.symbol** %8, align 8
  %24 = load %struct.module*, %struct.module** %5, align 8
  %25 = load %struct.symbol*, %struct.symbol** %8, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 1
  store %struct.module* %24, %struct.module** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.symbol*, %struct.symbol** %8, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.symbol*, %struct.symbol** %8, align 8
  ret %struct.symbol* %30
}

declare dso_local i32 @tdb_hash(i8*) #1

declare dso_local %struct.symbol* @alloc_symbol(i8*, i32, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
