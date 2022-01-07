; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_extract__create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_extract__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcore_extract = type { i32, i32, i32, i32, i32 }
%struct.kcore = type { i32, i32 }

@page_size = common dso_local global i64 0, align 8
@PERF_KCORE_EXTRACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcore_extract__create(%struct.kcore_extract* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kcore_extract*, align 8
  %4 = alloca %struct.kcore, align 4
  %5 = alloca %struct.kcore, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kcore_extract* %0, %struct.kcore_extract** %3, align 8
  store i64 1, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load i64, i64* @page_size, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %13 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @kcore__open(%struct.kcore* %4, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %20 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PERF_KCORE_EXTRACT, align 4
  %23 = call i32 @strcpy(i32 %21, i32 %22)
  %24 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %25 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.kcore, %struct.kcore* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @kcore__init(%struct.kcore* %5, i32 %26, i32 %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %84

32:                                               ; preds = %18
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @kcore__copy_hdr(%struct.kcore* %4, %struct.kcore* %5, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %74

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %41 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %44 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @kcore__add_phdr(%struct.kcore* %5, i32 %38, i64 %39, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %74

49:                                               ; preds = %37
  %50 = call i64 @kcore__write(%struct.kcore* %5)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49
  br label %74

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.kcore, %struct.kcore* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %62 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.kcore, %struct.kcore* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %68 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @copy_bytes(i32 %60, i32 %63, i32 %65, i64 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %74

73:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %72, %57, %48, %36
  %75 = call i32 @kcore__close(%struct.kcore* %5)
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.kcore_extract*, %struct.kcore_extract** %3, align 8
  %80 = getelementptr inbounds %struct.kcore_extract, %struct.kcore_extract* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @unlink(i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  br label %84

84:                                               ; preds = %83, %31
  %85 = call i32 @kcore__close(%struct.kcore* %4)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %17
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @kcore__open(%struct.kcore*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @kcore__init(%struct.kcore*, i32, i32, i32) #1

declare dso_local i64 @kcore__copy_hdr(%struct.kcore*, %struct.kcore*, i64) #1

declare dso_local i64 @kcore__add_phdr(%struct.kcore*, i32, i64, i32, i32) #1

declare dso_local i64 @kcore__write(%struct.kcore*) #1

declare dso_local i64 @copy_bytes(i32, i32, i32, i64, i32) #1

declare dso_local i32 @kcore__close(%struct.kcore*) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
