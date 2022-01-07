; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_queue_get.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap_queue = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sbitmap_queue_get(%struct.sbitmap_queue* %0) #0 {
  %2 = alloca %struct.sbitmap_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %2, align 8
  %6 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %7 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @this_cpu_read(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %12 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @READ_ONCE(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp uge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 (...) @prandom_u32()
  %27 = load i32, i32* %4, align 4
  %28 = urem i32 %26, %27
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  store i32 %31, i32* %3, align 4
  %32 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %33 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @this_cpu_write(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %1
  %39 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %40 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %43 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sbitmap_get(%struct.TYPE_2__* %40, i32 %41, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %50 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @this_cpu_write(i32 %52, i32 0)
  br label %80

54:                                               ; preds = %38
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %60 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub i32 %68, 1
  %70 = icmp uge i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %64
  %73 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %2, align 8
  %74 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @this_cpu_write(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %58
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @sbitmap_get(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
