; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_enable_cpucache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_enable_cpucache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"enable_cpucache failed for %s, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32)* @enable_cpucache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_cpucache(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %12 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @cache_random_seq_create(%struct.kmem_cache* %10, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %95

19:                                               ; preds = %2
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %21 = call i32 @is_root_cache(%struct.kmem_cache* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %25 = call %struct.kmem_cache* @memcg_root_cache(%struct.kmem_cache* %24)
  store %struct.kmem_cache* %25, %struct.kmem_cache** %9, align 8
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %27 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %30 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %33 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %23, %19
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %88

45:                                               ; preds = %41, %38, %35
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %47 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 131072
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %74

51:                                               ; preds = %45
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %53 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 8, i32* %6, align 4
  br label %73

58:                                               ; preds = %51
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %60 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1024
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 24, i32* %6, align 4
  br label %72

64:                                               ; preds = %58
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %66 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 256
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 54, i32* %6, align 4
  br label %71

70:                                               ; preds = %64
  store i32 120, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %63
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %50
  store i32 0, i32* %7, align 4
  %75 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %76 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = call i32 (...) @num_possible_cpus()
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 8, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %80, %74
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %44
  %89 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @do_tune_cpucache(%struct.kmem_cache* %89, i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %88, %18
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %100 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 0, %102
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %98, %95
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @cache_random_seq_create(%struct.kmem_cache*, i32, i32) #1

declare dso_local i32 @is_root_cache(%struct.kmem_cache*) #1

declare dso_local %struct.kmem_cache* @memcg_root_cache(%struct.kmem_cache*) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @do_tune_cpucache(%struct.kmem_cache*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
