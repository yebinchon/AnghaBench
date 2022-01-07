; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_hwbm.c_hwbm_pool_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_hwbm.c_hwbm_pool_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbm_pool = type { i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"pool already filled\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot allocate %d buffers for pool\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Adding %d buffers to the %d current buffers will overflow\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"hwpm pool: %d of %d buffers added\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwbm_pool_add(%struct.hwbm_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwbm_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hwbm_pool* %0, %struct.hwbm_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %9 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %12 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %15 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %21 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %20, i32 0, i32 2
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %24 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %94

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %31 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %35 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %42 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %41, i32 0, i32 2
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %3, align 4
  br label %94

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %48 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %52 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %58 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %56, i64 %59)
  %61 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %62 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %61, i32 0, i32 2
  %63 = call i32 @mutex_unlock(i32* %62)
  store i32 0, i32* %3, align 4
  br label %94

64:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @hwbm_pool_refill(%struct.hwbm_pool* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %80

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %65

80:                                               ; preds = %75, %65
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %84 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.hwbm_pool*, %struct.hwbm_pool** %4, align 8
  %91 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %80, %55, %38, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hwbm_pool_refill(%struct.hwbm_pool*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
