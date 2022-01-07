; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_hex_dump.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_hex_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_HEXDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"addr=%llu\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"length = %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s | \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"__ \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @hex_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_dump(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  store i64 32, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @DEBUG_HEXDUMP, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %100

18:                                               ; preds = %3
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %97, %18
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %5, align 8
  %29 = icmp ugt i64 %27, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %9, align 8
  %40 = urem i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %9, align 8
  %49 = urem i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %45, %30
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %62, %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = sext i32 %56 to i64
  %59 = load i64, i64* %9, align 8
  %60 = urem i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %55

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %51
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %86, %65
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %10, align 1
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp slt i32 %76, 33
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 255
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %71
  br label %86

83:                                               ; preds = %78
  %84 = load i8, i8* %10, align 1
  %85 = zext i8 %84 to i32
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i32 [ 46, %82 ], [ %85, %83 ]
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  br label %67

89:                                               ; preds = %67
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i64, i64* %5, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %45, %42
  br label %26

98:                                               ; preds = %26
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %17
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
