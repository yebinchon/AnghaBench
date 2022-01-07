; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_params.c_param_array_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_params.c_param_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32, i64, %struct.kparam_array* }
%struct.kparam_array = type { i32*, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i8*, %struct.kernel_param*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_array_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_array_get(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kparam_array*, align 8
  %10 = alloca %struct.kernel_param, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %11 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %12 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %11, i32 0, i32 2
  %13 = load %struct.kparam_array*, %struct.kparam_array** %12, align 8
  store %struct.kparam_array* %13, %struct.kparam_array** %9, align 8
  %14 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %15 = bitcast %struct.kernel_param* %10 to i8*
  %16 = bitcast %struct.kernel_param* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %77, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.kparam_array*, %struct.kparam_array** %9, align 8
  %20 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.kparam_array*, %struct.kparam_array** %9, align 8
  %25 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  br label %32

28:                                               ; preds = %17
  %29 = load %struct.kparam_array*, %struct.kparam_array** %9, align 8
  %30 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i32 [ %27, %23 ], [ %31, %28 ]
  %34 = icmp slt i32 %18, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 44, i8* %43, align 1
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.kparam_array*, %struct.kparam_array** %9, align 8
  %46 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.kparam_array*, %struct.kparam_array** %9, align 8
  %49 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %10, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @check_kparam_locked(i32 %57)
  %59 = load %struct.kparam_array*, %struct.kparam_array** %9, align 8
  %60 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %62, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 %63(i8* %67, %struct.kernel_param* %10)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %44
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %86

73:                                               ; preds = %44
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %17

80:                                               ; preds = %32
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %71
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @check_kparam_locked(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
