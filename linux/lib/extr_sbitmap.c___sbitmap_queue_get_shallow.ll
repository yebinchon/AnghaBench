; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_queue_get_shallow.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_queue_get_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap_queue = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sbitmap_queue_get_shallow(%struct.sbitmap_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.sbitmap_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %10 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %16 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @this_cpu_read(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %21 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @READ_ONCE(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp uge i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 (...) @prandom_u32()
  %36 = load i32, i32* %6, align 4
  %37 = urem i32 %35, %36
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  store i32 %40, i32* %5, align 4
  %41 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %42 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @this_cpu_write(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %2
  %48 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %49 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %48, i32 0, i32 3
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @sbitmap_get_shallow(%struct.TYPE_2__* %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %57 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @this_cpu_write(i32 %59, i32 0)
  br label %87

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %67 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub i32 %75, 1
  %77 = icmp uge i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %3, align 8
  %81 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @this_cpu_write(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %65
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @sbitmap_get_shallow(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
