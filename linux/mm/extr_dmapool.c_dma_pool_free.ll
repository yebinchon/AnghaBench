; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_dmapool.c_dma_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_dmapool.c_dma_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pool = type { i32, i32, i32, i32, i64 }
%struct.dma_page = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"dma_pool_free %s, %p/%lx (bad dma)\0A\00", align 1
@POOL_POISON_FREED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_pool_free(%struct.dma_pool* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_pool*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dma_pool* %0, %struct.dma_pool** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %11 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %10, i32 0, i32 1
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.dma_page* @pool_find_page(%struct.dma_pool* %14, i32 %15)
  store %struct.dma_page* %16, %struct.dma_page** %7, align 8
  %17 = load %struct.dma_page*, %struct.dma_page** %7, align 8
  %18 = icmp ne %struct.dma_page* %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %3
  %20 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %21 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %20, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %25 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %30 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %33 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = call i32 (i64, i8*, i32, i32*, ...) @dev_err(i64 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34, i32* %36, i64 %38)
  br label %49

40:                                               ; preds = %19
  %41 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %42 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = call i32 (i8*, i32, i32*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43, i32* %45, i64 %47)
  br label %49

49:                                               ; preds = %40, %28
  br label %84

50:                                               ; preds = %3
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.dma_page*, %struct.dma_page** %7, align 8
  %53 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = call i64 (...) @want_init_on_free()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %64 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memset(i8* %62, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %61, %50
  %68 = load %struct.dma_page*, %struct.dma_page** %7, align 8
  %69 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.dma_page*, %struct.dma_page** %7, align 8
  %73 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = bitcast i8* %75 to i32*
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.dma_page*, %struct.dma_page** %7, align 8
  %79 = getelementptr inbounds %struct.dma_page, %struct.dma_page* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  %81 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %80, i32 0, i32 1
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %67, %49
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.dma_page* @pool_find_page(%struct.dma_pool*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i64, i8*, i32, i32*, ...) #1

declare dso_local i32 @pr_err(i8*, i32, i32*, ...) #1

declare dso_local i64 @want_init_on_free(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
