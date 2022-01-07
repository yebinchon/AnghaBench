; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_entry_free_locked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_entry_free_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i8* }

@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@SWAP_MAP_SHMEM = common dso_local global i8 0, align 1
@COUNT_CONTINUED = common dso_local global i8 0, align 1
@SWAP_MAP_MAX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.swap_info_struct*, i64, i8)* @__swap_entry_free_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @__swap_entry_free_locked(%struct.swap_info_struct* %0, i64 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %10 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %7, align 1
  %15 = load i8, i8* %7, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %8, align 1
  %21 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %22 = zext i8 %21 to i32
  %23 = xor i32 %22, -1
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %7, align 1
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load i8, i8* %8, align 1
  %35 = icmp ne i8 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @VM_BUG_ON(i32 %37)
  store i8 0, i8* %8, align 1
  br label %84

39:                                               ; preds = %3
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @SWAP_MAP_SHMEM, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8 0, i8* %7, align 1
  br label %83

46:                                               ; preds = %39
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @COUNT_CONTINUED, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = load i8, i8* @SWAP_MAP_MAX, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp sle i32 %52, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %46
  %57 = load i8, i8* %7, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @COUNT_CONTINUED, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i8, i8* %7, align 1
  %66 = call i64 @swap_count_continued(%struct.swap_info_struct* %63, i64 %64, i8 zeroext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i8, i8* @SWAP_MAP_MAX, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @COUNT_CONTINUED, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %70, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %7, align 1
  br label %77

75:                                               ; preds = %62
  %76 = load i8, i8* @SWAP_MAP_MAX, align 1
  store i8 %76, i8* %7, align 1
  br label %77

77:                                               ; preds = %75, %68
  br label %81

78:                                               ; preds = %56
  %79 = load i8, i8* %7, align 1
  %80 = add i8 %79, -1
  store i8 %80, i8* %7, align 1
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %45
  br label %84

84:                                               ; preds = %83, %33
  %85 = load i8, i8* %7, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %8, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %6, align 1
  %91 = load i8, i8* %6, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %98

95:                                               ; preds = %84
  %96 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %97 = zext i8 %96 to i32
  br label %98

98:                                               ; preds = %95, %94
  %99 = phi i32 [ %92, %94 ], [ %97, %95 ]
  %100 = trunc i32 %99 to i8
  %101 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %102 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 %100, i8* %105, align 1
  %106 = load i8, i8* %6, align 1
  ret i8 %106
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @swap_count_continued(%struct.swap_info_struct*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
