; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_find_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_symbol = type { i32 }
%struct.module = type { i32 }
%struct.find_symbol_arg = type { i8*, i32, i32, %struct.kernel_symbol*, i32*, %struct.module* }

@find_exported_symbol_in_section = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to find symbol %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernel_symbol* @find_symbol(i8* %0, %struct.module** %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kernel_symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.module**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.find_symbol_arg, align 8
  store i8* %0, i8** %7, align 8
  store %struct.module** %1, %struct.module*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %12, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %12, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %12, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @find_exported_symbol_in_section, align 4
  %20 = call i64 @each_symbol_section(i32 %19, %struct.find_symbol_arg* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  %23 = load %struct.module**, %struct.module*** %8, align 8
  %24 = icmp ne %struct.module** %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %12, i32 0, i32 5
  %27 = load %struct.module*, %struct.module** %26, align 8
  %28 = load %struct.module**, %struct.module*** %8, align 8
  store %struct.module* %27, %struct.module** %28, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32**, i32*** %9, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %12, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32**, i32*** %9, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %12, i32 0, i32 3
  %38 = load %struct.kernel_symbol*, %struct.kernel_symbol** %37, align 8
  store %struct.kernel_symbol* %38, %struct.kernel_symbol** %6, align 8
  br label %42

39:                                               ; preds = %5
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %40)
  store %struct.kernel_symbol* null, %struct.kernel_symbol** %6, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.kernel_symbol*, %struct.kernel_symbol** %6, align 8
  ret %struct.kernel_symbol* %43
}

declare dso_local i64 @each_symbol_section(i32, %struct.find_symbol_arg*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
