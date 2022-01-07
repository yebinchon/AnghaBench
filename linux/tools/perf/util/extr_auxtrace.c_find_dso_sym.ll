; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_find_dso_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_find_dso_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.symbol = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, i8*, i64*, i64*, i32)* @find_dso_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dso_sym(%struct.dso* %0, i8* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dso*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i64*, i64** %9, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** %10, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.dso*, %struct.dso** %7, align 8
  %17 = call %struct.symbol* @dso__first_symbol(%struct.dso* %16)
  store %struct.symbol* %17, %struct.symbol** %12, align 8
  br label %18

18:                                               ; preds = %80, %5
  %19 = load %struct.symbol*, %struct.symbol** %12, align 8
  %20 = icmp ne %struct.symbol* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %18
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load %struct.symbol*, %struct.symbol** %12, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %32, %34
  %36 = load i64*, i64** %10, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %25
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %92

45:                                               ; preds = %40
  br label %59

46:                                               ; preds = %37
  %47 = load %struct.symbol*, %struct.symbol** %12, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @dso_sym_match(%struct.symbol* %47, i8* %48, i32* %13, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.dso*, %struct.dso** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @print_duplicate_syms(%struct.dso* %53, i8* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %92

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %45
  br label %80

60:                                               ; preds = %21
  %61 = load %struct.symbol*, %struct.symbol** %12, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @dso_sym_match(%struct.symbol* %61, i8* %62, i32* %13, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.symbol*, %struct.symbol** %12, align 8
  %68 = getelementptr inbounds %struct.symbol, %struct.symbol* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.symbol*, %struct.symbol** %12, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.symbol*, %struct.symbol** %12, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load i64*, i64** %10, align 8
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %66, %60
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.symbol*, %struct.symbol** %12, align 8
  %82 = call %struct.symbol* @dso__next_symbol(%struct.symbol* %81)
  store %struct.symbol* %82, %struct.symbol** %12, align 8
  br label %18

83:                                               ; preds = %18
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @sym_not_found_error(i8* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %87, %52, %44
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.symbol* @dso__first_symbol(%struct.dso*) #1

declare dso_local i64 @dso_sym_match(%struct.symbol*, i8*, i32*, i32) #1

declare dso_local i32 @print_duplicate_syms(%struct.dso*, i8*) #1

declare dso_local %struct.symbol* @dso__next_symbol(%struct.symbol*) #1

declare dso_local i32 @sym_not_found_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
