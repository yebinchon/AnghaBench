; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_perf_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_perf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STB_GLOBAL = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dso*)* @dso__load_perf_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__load_perf_map(i8* %0, %struct.dso* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dso* %1, %struct.dso** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %95

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %79, %65, %50, %20
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @feof(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %86

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @getline(i8** %6, i64* %7, i32* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %86

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %95

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @hex2u64(i8* %42, i32* %10)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 2
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %21

51:                                               ; preds = %36
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 @hex2u64(i8* %55, i32* %11)
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 2
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %21

66:                                               ; preds = %51
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @STB_GLOBAL, align 4
  %70 = load i32, i32* @STT_FUNC, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call %struct.symbol* @symbol__new(i32 %67, i32 %68, i32 %69, i32 %70, i8* %74)
  store %struct.symbol* %75, %struct.symbol** %12, align 8
  %76 = load %struct.symbol*, %struct.symbol** %12, align 8
  %77 = icmp eq %struct.symbol* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %92

79:                                               ; preds = %66
  %80 = load %struct.dso*, %struct.dso** %5, align 8
  %81 = getelementptr inbounds %struct.dso, %struct.dso* %80, i32 0, i32 0
  %82 = load %struct.symbol*, %struct.symbol** %12, align 8
  %83 = call i32 @symbols__insert(i32* %81, %struct.symbol* %82)
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %21

86:                                               ; preds = %31, %21
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %96

92:                                               ; preds = %78
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @free(i8* %93)
  br label %95

95:                                               ; preds = %92, %35, %19
  store i32 -1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @hex2u64(i8*, i32*) #1

declare dso_local %struct.symbol* @symbol__new(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @symbols__insert(i32*, %struct.symbol*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
