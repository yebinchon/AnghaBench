; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_check_exported_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_check_exported_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symsearch = type { i64, i32*, i32, i64 }
%struct.module = type { i32 }
%struct.find_symbol_arg = type { i32*, i32, %struct.module*, i32, i64, i32 }

@GPL_ONLY = common dso_local global i64 0, align 8
@WILL_BE_GPL_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"Symbol %s is being used by a non-GPL module, which will not be allowed in the future\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symsearch*, %struct.module*, i32, i8*)* @check_exported_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_exported_symbol(%struct.symsearch* %0, %struct.module* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symsearch*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.find_symbol_arg*, align 8
  store %struct.symsearch* %0, %struct.symsearch** %6, align 8
  store %struct.module* %1, %struct.module** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.find_symbol_arg*
  store %struct.find_symbol_arg* %12, %struct.find_symbol_arg** %10, align 8
  %13 = load %struct.find_symbol_arg*, %struct.find_symbol_arg** %10, align 8
  %14 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %4
  %18 = load %struct.symsearch*, %struct.symsearch** %6, align 8
  %19 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GPL_ONLY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.symsearch*, %struct.symsearch** %6, align 8
  %26 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WILL_BE_GPL_ONLY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.find_symbol_arg*, %struct.find_symbol_arg** %10, align 8
  %32 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.find_symbol_arg*, %struct.find_symbol_arg** %10, align 8
  %37 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %30, %24
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.module*, %struct.module** %7, align 8
  %43 = load %struct.find_symbol_arg*, %struct.find_symbol_arg** %10, align 8
  %44 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %43, i32 0, i32 2
  store %struct.module* %42, %struct.module** %44, align 8
  %45 = load %struct.symsearch*, %struct.symsearch** %6, align 8
  %46 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @symversion(i32 %47, i32 %48)
  %50 = load %struct.find_symbol_arg*, %struct.find_symbol_arg** %10, align 8
  %51 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.symsearch*, %struct.symsearch** %6, align 8
  %53 = getelementptr inbounds %struct.symsearch, %struct.symsearch* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.find_symbol_arg*, %struct.find_symbol_arg** %10, align 8
  %59 = getelementptr inbounds %struct.find_symbol_arg, %struct.find_symbol_arg* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %41, %23
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @symversion(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
