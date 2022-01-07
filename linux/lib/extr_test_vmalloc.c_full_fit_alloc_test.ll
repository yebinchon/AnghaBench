; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_full_fit_alloc_test.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_full_fit_alloc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@test_loop_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @full_fit_alloc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @full_fit_alloc_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 -1, i32* %6, align 4
  %8 = call i32 (...) @num_online_cpus()
  %9 = call i32 @fls(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sdiv i32 33554432, %10
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @vmalloc(i32 %17)
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %2, align 8
  %20 = load i8**, i8*** %2, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %1, align 4
  br label %120

24:                                               ; preds = %0
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @vmalloc(i32 %28)
  %30 = bitcast i8* %29 to i8**
  store i8** %30, i8*** %3, align 8
  %31 = load i8**, i8*** %3, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i8**, i8*** %2, align 8
  %35 = call i32 @vfree(i8** %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %1, align 4
  br label %120

37:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = mul nsw i32 1, %43
  %45 = call i8* @vmalloc(i32 %44)
  %46 = load i8**, i8*** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = mul nsw i32 1, %50
  %52 = call i8* @vmalloc(i32 %51)
  %53 = load i8**, i8*** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* %52, i8** %56, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i8**, i8*** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to i8**
  %72 = call i32 @vfree(i8** %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %61

76:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @test_loop_count, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = mul nsw i32 1, %82
  %84 = call i8* @vmalloc(i32 %83)
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %98

88:                                               ; preds = %81
  %89 = load i8*, i8** %4, align 8
  %90 = bitcast i8* %89 to i32*
  store i32 1, i32* %90, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = bitcast i8* %91 to i8**
  %93 = call i32 @vfree(i8** %92)
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %77

97:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %87
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %111, %98
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i8**, i8*** %2, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast i8* %108 to i8**
  %110 = call i32 @vfree(i8** %109)
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %99

114:                                              ; preds = %99
  %115 = load i8**, i8*** %2, align 8
  %116 = call i32 @vfree(i8** %115)
  %117 = load i8**, i8*** %3, align 8
  %118 = call i32 @vfree(i8** %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %1, align 4
  br label %120

120:                                              ; preds = %114, %33, %22
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @vfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
