; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_bsort_channel_array_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_bsort_channel_array_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsort_channel_array_by_index(%struct.iio_channel_info* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_channel_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_channel_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_channel_info* %0, %struct.iio_channel_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %63, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %59, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %13
  %19 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %19, i64 %21
  %23 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %25, i64 %28
  %30 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %24, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %18
  %34 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %34, i64 %37
  %39 = bitcast %struct.iio_channel_info* %5 to i8*
  %40 = bitcast %struct.iio_channel_info* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %41, i64 %44
  %46 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %46, i64 %48
  %50 = bitcast %struct.iio_channel_info* %45 to i8*
  %51 = bitcast %struct.iio_channel_info* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  %52 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %52, i64 %54
  %56 = bitcast %struct.iio_channel_info* %55 to i8*
  %57 = bitcast %struct.iio_channel_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  br label %58

58:                                               ; preds = %33, %18
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %13

62:                                               ; preds = %13
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %8

66:                                               ; preds = %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
