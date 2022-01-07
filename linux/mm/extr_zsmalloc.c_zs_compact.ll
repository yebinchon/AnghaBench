; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_compact.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { %struct.TYPE_2__, %struct.size_class** }
%struct.TYPE_2__ = type { i64 }
%struct.size_class = type { i32 }

@ZS_SIZE_CLASSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zs_compact(%struct.zs_pool* %0) #0 {
  %2 = alloca %struct.zs_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.size_class*, align 8
  store %struct.zs_pool* %0, %struct.zs_pool** %2, align 8
  %5 = load i32, i32* @ZS_SIZE_CLASSES, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %12 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %11, i32 0, i32 1
  %13 = load %struct.size_class**, %struct.size_class*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.size_class*, %struct.size_class** %13, i64 %15
  %17 = load %struct.size_class*, %struct.size_class** %16, align 8
  store %struct.size_class* %17, %struct.size_class** %4, align 8
  %18 = load %struct.size_class*, %struct.size_class** %4, align 8
  %19 = icmp ne %struct.size_class* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %32

21:                                               ; preds = %10
  %22 = load %struct.size_class*, %struct.size_class** %4, align 8
  %23 = getelementptr inbounds %struct.size_class, %struct.size_class* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %30 = load %struct.size_class*, %struct.size_class** %4, align 8
  %31 = call i32 @__zs_compact(%struct.zs_pool* %29, %struct.size_class* %30)
  br label %32

32:                                               ; preds = %28, %27, %20
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %37 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  ret i64 %39
}

declare dso_local i32 @__zs_compact(%struct.zs_pool*, %struct.size_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
