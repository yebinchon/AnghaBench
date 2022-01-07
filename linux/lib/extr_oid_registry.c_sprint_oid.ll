; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_oid_registry.c_sprint_oid.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_oid_registry.c_sprint_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".%lu\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(bad)\00", align 1
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprint_oid(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp uge i8* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %124

24:                                               ; preds = %4
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  %27 = load i8, i8* %25, align 1
  store i8 %27, i8* %13, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i8, i8* %13, align 1
  %31 = zext i8 %30 to i32
  %32 = sdiv i32 %31, 40
  %33 = load i8, i8* %13, align 1
  %34 = zext i8 %33 to i32
  %35 = srem i32 %34, 40
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i32, i32* @ENOBUFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %130

45:                                               ; preds = %24
  %46 = load i32, i32* %15, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %112, %45
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %121

58:                                               ; preds = %54
  store i64 0, i64* %12, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  %61 = load i8, i8* %59, align 1
  store i8 %61, i8* %13, align 1
  %62 = load i8, i8* %13, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i8, i8* %13, align 1
  %68 = zext i8 %67 to i64
  store i64 %68, i64* %12, align 8
  br label %97

69:                                               ; preds = %58
  %70 = load i8, i8* %13, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 127
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %91, %69
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp uge i8* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %124

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  %82 = load i8, i8* %80, align 1
  store i8 %82, i8* %13, align 1
  %83 = load i64, i64* %12, align 8
  %84 = shl i64 %83, 7
  store i64 %84, i64* %12, align 8
  %85 = load i8, i8* %13, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 127
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %12, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %79
  %92 = load i8, i8* %13, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %74, label %96

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %66
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %98, i64 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  store i32 %101, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %9, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* @ENOBUFS, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %130

112:                                              ; preds = %97
  %113 = load i32, i32* %15, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %9, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %9, align 8
  br label %54

121:                                              ; preds = %54
  %122 = load i64, i64* %14, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %130

124:                                              ; preds = %78, %23
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %125, i64 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EBADMSG, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %124, %121, %109, %42
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
