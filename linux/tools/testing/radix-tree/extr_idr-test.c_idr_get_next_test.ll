; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_get_next_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_get_next_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@idr = common dso_local global i32 0, align 4
@__const.idr_get_next_test.indices = private unnamed_addr constant [9 x i32] [i32 4, i32 7, i32 9, i32 15, i32 65, i32 128, i32 1000, i32 99999, i32 0], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@item_idr_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_get_next_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [9 x i32], align 16
  %6 = alloca %struct.item*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @idr, align 4
  %8 = call i32 @DEFINE_IDR(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @idr_init_base(i32* @idr, i32 %9)
  %11 = bitcast [9 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([9 x i32]* @__const.idr_get_next_test.indices to i8*), i64 36, i1 false)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.item* @item_create(i32 %20, i32 0)
  store %struct.item* %21, %struct.item** %6, align 8
  %22 = load %struct.item*, %struct.item** %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @idr_alloc(i32* @idr, %struct.item* %22, i32 %25, i32 %29, i32 %30)
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %17
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %12

41:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = call i32 @idr_get_next(i32* @idr, i32* %4)
  %49 = load i32, i32* %4, align 4
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %42

61:                                               ; preds = %42
  %62 = load i32, i32* @item_idr_free, align 4
  %63 = call i32 @idr_for_each(i32* @idr, i32 %62, i32* @idr)
  %64 = call i32 @idr_destroy(i32* @idr)
  ret void
}

declare dso_local i32 @DEFINE_IDR(i32) #1

declare dso_local i32 @idr_init_base(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.item* @item_create(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.item*, i32, i32, i32) #1

declare dso_local i32 @idr_get_next(i32*, i32*) #1

declare dso_local i32 @idr_for_each(i32*, i32, i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
