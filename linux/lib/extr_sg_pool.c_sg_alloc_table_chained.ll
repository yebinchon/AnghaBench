; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sg_pool.c_sg_alloc_table_chained.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sg_pool.c_sg_alloc_table_chained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }

@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@sg_pool_alloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sg_alloc_table_chained(%struct.sg_table* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sg_table* %0, %struct.sg_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %17 = icmp ne %struct.scatterlist* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %28 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %30 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %32 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @sg_init_table(i32 %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %59

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %18, %4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ule i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store %struct.scatterlist* null, %struct.scatterlist** %8, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = load i32, i32* @sg_pool_alloc, align 4
  %49 = call i32 @__sg_alloc_table(%struct.sg_table* %42, i32 %43, i32 %44, %struct.scatterlist* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @sg_free_table_chained(%struct.sg_table* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %41
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %25
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @__sg_alloc_table(%struct.sg_table*, i32, i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_free_table_chained(%struct.sg_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
