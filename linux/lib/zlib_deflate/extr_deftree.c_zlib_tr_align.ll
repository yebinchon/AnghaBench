; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_zlib_tr_align.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_zlib_tr_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@STATIC_TREES = common dso_local global i32 0, align 4
@END_BLOCK = common dso_local global i32 0, align 4
@static_ltree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zlib_tr_align(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = load i32, i32* @STATIC_TREES, align 4
  %5 = shl i32 %4, 1
  %6 = call i32 @send_bits(%struct.TYPE_6__* %3, i32 %5, i32 3)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @END_BLOCK, align 4
  %9 = load i32, i32* @static_ltree, align 4
  %10 = call i32 @send_code(%struct.TYPE_6__* %7, i32 %8, i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = call i32 @bi_flush(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 1, %19
  %21 = add nsw i32 %20, 10
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = icmp slt i32 %25, 9
  br i1 %26, label %27, label %42

27:                                               ; preds = %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = load i32, i32* @STATIC_TREES, align 4
  %30 = shl i32 %29, 1
  %31 = call i32 @send_bits(%struct.TYPE_6__* %28, i32 %30, i32 3)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = load i32, i32* @END_BLOCK, align 4
  %34 = load i32, i32* @static_ltree, align 4
  %35 = call i32 @send_code(%struct.TYPE_6__* %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 10
  store i64 %39, i64* %37, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = call i32 @bi_flush(%struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %27, %1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 7, i32* %44, align 8
  ret void
}

declare dso_local i32 @send_bits(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @send_code(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @bi_flush(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
