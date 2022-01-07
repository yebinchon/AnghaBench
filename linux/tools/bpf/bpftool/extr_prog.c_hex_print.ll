; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_hex_print.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_hex_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%07zx\09\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @hex_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_print(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %111, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %114

15:                                               ; preds = %10
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %45, %15
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 16
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %48

32:                                               ; preds = %30
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = urem i64 %39, 2
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %20

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 16
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = urem i64 %56, 2
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %49

65:                                               ; preds = %49
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %105, %65
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 16
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %108

81:                                               ; preds = %79
  %82 = load i8*, i8** %4, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %9, align 1
  %86 = load i8, i8* %9, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp slt i32 %87, 32
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i8, i8* %9, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sgt i32 %91, 126
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %81
  store i8 46, i8* %9, align 1
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32*, i32** %6, align 8
  %96 = load i8, i8* %9, align 1
  %97 = sext i8 %96 to i32
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 7
  %101 = icmp eq i64 %98, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %97, i8* %103)
  br label %105

105:                                              ; preds = %94
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %8, align 8
  br label %69

108:                                              ; preds = %79
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, 16
  store i64 %113, i64* %7, align 8
  br label %10

114:                                              ; preds = %10
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
