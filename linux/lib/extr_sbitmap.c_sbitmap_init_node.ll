; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_init_node.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_init_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbitmap_init_node(%struct.sbitmap* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sbitmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sbitmap* %0, %struct.sbitmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %5
  %17 = load i32, i32* @BITS_PER_LONG, align 4
  %18 = call i32 @ilog2(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp uge i32 %19, 4
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 4, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  br label %22

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %5
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @BITS_PER_LONG, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %118

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %44 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %47 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %49 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @DIV_ROUND_UP(i32 %50, i32 %51)
  %53 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %54 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %59 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %58, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %59, align 8
  store i32 0, i32* %6, align 4
  br label %118

60:                                               ; preds = %41
  %61 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %62 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call %struct.TYPE_2__* @kcalloc_node(i32 %63, i32 16, i32 %64, i32 %65)
  %67 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %68 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %67, i32 0, i32 3
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %68, align 8
  %69 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %70 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = icmp ne %struct.TYPE_2__* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %118

76:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %114, %76
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %80 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i64 @min(i32 %84, i32 %85)
  %87 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %88 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i64 %86, i64* %93, align 8
  %94 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %95 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = sub nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load %struct.sbitmap*, %struct.sbitmap** %7, align 8
  %107 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = call i32 @spin_lock_init(i32* %112)
  br label %114

114:                                              ; preds = %83
  %115 = load i32, i32* %13, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %77

117:                                              ; preds = %77
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %73, %57, %38
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_2__* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
