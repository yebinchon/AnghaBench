; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_srcline.c_new_inline_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_srcline.c_new_inline_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.symbol = type { i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (%struct.dso*, %struct.symbol*, i8*)* @new_inline_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @new_inline_sym(%struct.dso* %0, %struct.symbol* %1, i8* %2) #0 {
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load %struct.dso*, %struct.dso** %4, align 8
  %14 = icmp ne %struct.dso* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.dso*, %struct.dso** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @dso__demangle_sym(%struct.dso* %16, i32 0, i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %15
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.symbol*, %struct.symbol** %5, align 8
  %26 = icmp ne %struct.symbol* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.symbol*, %struct.symbol** %5, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @strcmp(i8* %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.symbol*, %struct.symbol** %5, align 8
  store %struct.symbol* %35, %struct.symbol** %7, align 8
  %36 = load %struct.symbol*, %struct.symbol** %5, align 8
  %37 = getelementptr inbounds %struct.symbol, %struct.symbol* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %92

43:                                               ; preds = %27, %24
  %44 = load %struct.symbol*, %struct.symbol** %5, align 8
  %45 = icmp ne %struct.symbol* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.symbol*, %struct.symbol** %5, align 8
  %48 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i64 [ %49, %46 ], [ 0, %50 ]
  %53 = load %struct.symbol*, %struct.symbol** %5, align 8
  %54 = icmp ne %struct.symbol* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.symbol*, %struct.symbol** %5, align 8
  %57 = getelementptr inbounds %struct.symbol, %struct.symbol* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.symbol*, %struct.symbol** %5, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  br label %64

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %55
  %65 = phi i64 [ %62, %55 ], [ 0, %63 ]
  %66 = load %struct.symbol*, %struct.symbol** %5, align 8
  %67 = icmp ne %struct.symbol* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.symbol*, %struct.symbol** %5, align 8
  %70 = getelementptr inbounds %struct.symbol, %struct.symbol* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  br label %73

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i32 [ %71, %68 ], [ 0, %72 ]
  %75 = load %struct.symbol*, %struct.symbol** %5, align 8
  %76 = icmp ne %struct.symbol* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.symbol*, %struct.symbol** %5, align 8
  %79 = getelementptr inbounds %struct.symbol, %struct.symbol* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 0, %81 ]
  %84 = load i8*, i8** %6, align 8
  %85 = call %struct.symbol* @symbol__new(i64 %52, i64 %65, i32 %74, i32 %83, i8* %84)
  store %struct.symbol* %85, %struct.symbol** %7, align 8
  %86 = load %struct.symbol*, %struct.symbol** %7, align 8
  %87 = icmp ne %struct.symbol* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.symbol*, %struct.symbol** %7, align 8
  %90 = getelementptr inbounds %struct.symbol, %struct.symbol* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %91, %34
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load %struct.symbol*, %struct.symbol** %7, align 8
  ret %struct.symbol* %95
}

declare dso_local i8* @dso__demangle_sym(%struct.dso*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.symbol* @symbol__new(i64, i64, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
