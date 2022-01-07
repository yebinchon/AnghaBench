; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sort.c_sort_r.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sort.c_sort_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_r(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*, i8*)* %3, void (i8*, i8*, i32)* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i8*, i8*, i8*)*, align 8
  %11 = alloca void (i8*, i8*, i32)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i8*, i8*, i8*)* %3, i32 (i8*, i8*, i8*)** %10, align 8
  store void (i8*, i8*, i32)* %4, void (i8*, i8*, i32)** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = mul i64 %19, %20
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = udiv i64 %22, 2
  %24 = load i64, i64* %9, align 8
  %25 = mul i64 %23, %24
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 0, %27
  %29 = and i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %6
  br label %154

34:                                               ; preds = %6
  %35 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %11, align 8
  %36 = icmp ne void (i8*, i8*, i32)* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @is_aligned(i8* %38, i64 %39, i32 8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store void (i8*, i8*, i32)* @SWAP_WORDS_64, void (i8*, i8*, i32)** %11, align 8
  br label %51

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @is_aligned(i8* %44, i64 %45, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store void (i8*, i8*, i32)* @SWAP_WORDS_32, void (i8*, i8*, i32)** %11, align 8
  br label %50

49:                                               ; preds = %43
  store void (i8*, i8*, i32)* @SWAP_BYTES, void (i8*, i8*, i32)** %11, align 8
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %153, %52
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %14, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %14, align 8
  br label %75

60:                                               ; preds = %53
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr i8, i8* %67, i64 %68
  %70 = load i64, i64* %9, align 8
  %71 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %11, align 8
  %72 = call i32 @do_swap(i8* %66, i8* %69, i64 %70, void (i8*, i8*, i32)* %71)
  br label %74

73:                                               ; preds = %60
  br label %154

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i64, i64* %14, align 8
  store i64 %76, i64* %16, align 8
  br label %77

77:                                               ; preds = %102, %75
  %78 = load i64, i64* %16, align 8
  %79 = mul i64 2, %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %79, %80
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %82, %83
  store i64 %84, i64* %18, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %77
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %17, align 8
  %90 = getelementptr i8, i8* %88, i64 %89
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %18, align 8
  %93 = getelementptr i8, i8* %91, i64 %92
  %94 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %10, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i64 @do_cmp(i8* %90, i8* %93, i32 (i8*, i8*, i8*)* %94, i8* %95)
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i64, i64* %17, align 8
  br label %102

100:                                              ; preds = %87
  %101 = load i64, i64* %18, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  store i64 %103, i64* %16, align 8
  br label %77

104:                                              ; preds = %77
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* %17, align 8
  store i64 %109, i64* %16, align 8
  br label %110

110:                                              ; preds = %108, %104
  br label %111

111:                                              ; preds = %128, %110
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr i8, i8* %116, i64 %117
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %16, align 8
  %121 = getelementptr i8, i8* %119, i64 %120
  %122 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %10, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = call i64 @do_cmp(i8* %118, i8* %121, i32 (i8*, i8*, i8*)* %122, i8* %123)
  %125 = icmp sge i64 %124, 0
  br label %126

126:                                              ; preds = %115, %111
  %127 = phi i1 [ false, %111 ], [ %125, %115 ]
  br i1 %127, label %128, label %133

128:                                              ; preds = %126
  %129 = load i64, i64* %16, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @parent(i64 %129, i32 %130, i64 %131)
  store i64 %132, i64* %16, align 8
  br label %111

133:                                              ; preds = %126
  %134 = load i64, i64* %16, align 8
  store i64 %134, i64* %17, align 8
  br label %135

135:                                              ; preds = %139, %133
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %14, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load i64, i64* %16, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i64, i64* %9, align 8
  %143 = call i64 @parent(i64 %140, i32 %141, i64 %142)
  store i64 %143, i64* %16, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i64, i64* %16, align 8
  %146 = getelementptr i8, i8* %144, i64 %145
  %147 = load i8*, i8** %7, align 8
  %148 = load i64, i64* %17, align 8
  %149 = getelementptr i8, i8* %147, i64 %148
  %150 = load i64, i64* %9, align 8
  %151 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %11, align 8
  %152 = call i32 @do_swap(i8* %146, i8* %149, i64 %150, void (i8*, i8*, i32)* %151)
  br label %135

153:                                              ; preds = %135
  br label %53

154:                                              ; preds = %33, %73
  ret void
}

declare dso_local i64 @is_aligned(i8*, i64, i32) #1

declare dso_local void @SWAP_WORDS_64(i8*, i8*, i32) #1

declare dso_local void @SWAP_WORDS_32(i8*, i8*, i32) #1

declare dso_local void @SWAP_BYTES(i8*, i8*, i32) #1

declare dso_local i32 @do_swap(i8*, i8*, i64, void (i8*, i8*, i32)*) #1

declare dso_local i64 @do_cmp(i8*, i8*, i32 (i8*, i8*, i8*)*, i8*) #1

declare dso_local i64 @parent(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
