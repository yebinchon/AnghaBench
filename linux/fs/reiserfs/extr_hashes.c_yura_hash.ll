; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_hashes.c_yura_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_hashes.c_yura_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yura_hash(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %17, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %15, 10
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 48
  store i32 %28, i32* %7, align 4
  br label %37

29:                                               ; preds = %20
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29, %23
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  store i32 %49, i32* %8, align 4
  store i32 1, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %59, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 10
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %38

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 40
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %85, %75
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %83, 10
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %77

88:                                               ; preds = %77
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %72

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %121, %97
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 256
  br i1 %100, label %101, label %124

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %8, align 4
  store i32 1, i32* %6, align 4
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %112, %101
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %110, 10
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %104

115:                                              ; preds = %104
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %98

124:                                              ; preds = %98
  %125 = load i32, i32* %7, align 4
  %126 = shl i32 %125, 7
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
