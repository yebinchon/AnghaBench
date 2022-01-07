; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_miter_stop.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_miter_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_mapping_iter = type { i64, i64, i32, i32*, i32*, i32, i32 }

@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sg_miter_stop(%struct.sg_mapping_iter* %0) #0 {
  %2 = alloca %struct.sg_mapping_iter*, align 8
  store %struct.sg_mapping_iter* %0, %struct.sg_mapping_iter** %2, align 8
  %3 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %4 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %7 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %13 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %80

16:                                               ; preds = %1
  %17 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %18 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %21 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %27 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %30 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %36 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SG_MITER_TO_SG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %16
  %42 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %43 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PageSlab(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %49 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @flush_kernel_dcache_page(i32* %50)
  br label %52

52:                                               ; preds = %47, %41, %16
  %53 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %54 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = call i32 (...) @preemptible()
  %61 = call i32 @WARN_ON_ONCE(i32 %60)
  %62 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %63 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kunmap_atomic(i32* %64)
  br label %71

66:                                               ; preds = %52
  %67 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %68 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kunmap(i32* %69)
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %73 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %72, i32 0, i32 4
  store i32* null, i32** %73, align 8
  %74 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %75 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  %76 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %77 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %79 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageSlab(i32*) #1

declare dso_local i32 @flush_kernel_dcache_page(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @kunmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
