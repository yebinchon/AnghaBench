; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_tags.c_check_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_tags.c_check_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KASAN_TAG_KERNEL = common dso_local global i64 0, align 8
@KASAN_SHADOW_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_memory_region(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %76

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i64 @get_tag(i8* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @KASAN_TAG_KERNEL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %76

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i8* @reset_tag(i8* %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i64, i64* @KASAN_SHADOW_START, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i8* @kasan_shadow_to_mem(i8* %35)
  %37 = icmp ult i8* %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @kasan_report(i64 %42, i64 %43, i32 %44, i64 %45)
  store i32 0, i32* %5, align 4
  br label %76

47:                                               ; preds = %29
  %48 = load i8*, i8** %14, align 8
  %49 = call i64* @kasan_mem_to_shadow(i8* %48)
  store i64* %49, i64** %11, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = getelementptr i8, i8* %52, i64 -1
  %54 = call i64* @kasan_mem_to_shadow(i8* %53)
  store i64* %54, i64** %12, align 8
  %55 = load i64*, i64** %11, align 8
  store i64* %55, i64** %13, align 8
  br label %56

56:                                               ; preds = %72, %47
  %57 = load i64*, i64** %13, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = icmp ule i64* %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i64*, i64** %13, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @kasan_report(i64 %66, i64 %67, i32 %68, i64 %69)
  store i32 0, i32* %5, align 4
  br label %76

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %13, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %13, align 8
  br label %56

75:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %65, %41, %28, %20
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_tag(i8*) #1

declare dso_local i8* @reset_tag(i8*) #1

declare dso_local i8* @kasan_shadow_to_mem(i8*) #1

declare dso_local i32 @kasan_report(i64, i64, i32, i64) #1

declare dso_local i64* @kasan_mem_to_shadow(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
