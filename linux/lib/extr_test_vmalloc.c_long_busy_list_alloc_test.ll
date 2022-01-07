; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_long_busy_list_alloc_test.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_vmalloc.c_long_busy_list_alloc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@test_loop_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @long_busy_list_alloc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @long_busy_list_alloc_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 -1, i32* %5, align 4
  %7 = call i8* @vmalloc(i32 120000)
  %8 = bitcast i8* %7 to i8**
  store i8** %8, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %1, align 4
  br label %84

13:                                               ; preds = %0
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 15000
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul nsw i32 1, %18
  %20 = call i8* @vmalloc(i32 %19)
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %20, i8** %24, align 8
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %14

28:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @test_loop_count, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = mul nsw i32 100, %34
  %36 = call i8* @vmalloc(i32 %35)
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %65

40:                                               ; preds = %33
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = mul nsw i32 1, %41
  %43 = call i8* @vmalloc(i32 %42)
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %2, align 8
  %48 = bitcast i8* %47 to i8**
  %49 = call i32 @vfree(i8** %48)
  br label %65

50:                                               ; preds = %40
  %51 = load i8*, i8** %2, align 8
  %52 = bitcast i8* %51 to i32*
  store i32 0, i32* %52, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = bitcast i8* %53 to i32*
  store i32 1, i32* %54, align 4
  %55 = load i8*, i8** %2, align 8
  %56 = bitcast i8* %55 to i8**
  %57 = call i32 @vfree(i8** %56)
  %58 = load i8*, i8** %3, align 8
  %59 = bitcast i8* %58 to i8**
  %60 = call i32 @vfree(i8** %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %29

64:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %46, %39
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 15000
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i8**, i8*** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i8**
  %76 = call i32 @vfree(i8** %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load i8**, i8*** %4, align 8
  %82 = call i32 @vfree(i8** %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %1, align 4
  br label %84

84:                                               ; preds = %80, %11
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @vfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
