; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_idr.c_idr_alloc_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_idr.c_idr_alloc_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idr_alloc_cyclic(%struct.idr* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.idr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.idr*, %struct.idr** %7, align 8
  %16 = getelementptr inbounds %struct.idr, %struct.idr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @INT_MAX, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ %24, %23 ]
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = load %struct.idr*, %struct.idr** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @idr_alloc_u32(%struct.idr* %33, i8* %34, i32* %12, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.idr*, %struct.idr** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @idr_alloc_u32(%struct.idr* %48, i8* %49, i32* %12, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %42, %32
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.idr*, %struct.idr** %7, align 8
  %62 = getelementptr inbounds %struct.idr, %struct.idr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %58, %56
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @idr_alloc_u32(%struct.idr*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
