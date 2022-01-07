; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c___xa_alloc_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c___xa_alloc_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }
%struct.xa_limit = type { i64 }

@XA_FLAGS_ALLOC_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xa_alloc_cyclic(%struct.xarray* %0, i64* %1, i8* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.xa_limit, align 8
  %8 = alloca %struct.xarray*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  store i64 %3, i64* %15, align 8
  store %struct.xarray* %0, %struct.xarray** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @max(i64 %18, i64 %20)
  %22 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load %struct.xarray*, %struct.xarray** %8, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @__xa_alloc(%struct.xarray* %23, i64* %24, i8* %25, i64 %28, i32 %26)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.xarray*, %struct.xarray** %8, align 8
  %31 = getelementptr inbounds %struct.xarray, %struct.xarray* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XA_FLAGS_ALLOC_WRAPPED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %6
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* @XA_FLAGS_ALLOC_WRAPPED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.xarray*, %struct.xarray** %8, align 8
  %43 = getelementptr inbounds %struct.xarray, %struct.xarray* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 1, i32* %14, align 4
  br label %46

46:                                               ; preds = %39, %36, %6
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load %struct.xarray*, %struct.xarray** %8, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @__xa_alloc(%struct.xarray* %57, i64* %58, i8* %59, i64 %62, i32 %60)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %49, %46
  %69 = load i32, i32* %14, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i32, i32* @XA_FLAGS_ALLOC_WRAPPED, align 4
  %81 = load %struct.xarray*, %struct.xarray** %8, align 8
  %82 = getelementptr inbounds %struct.xarray, %struct.xarray* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %71
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i32, i32* %14, align 4
  ret i32 %87
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @__xa_alloc(%struct.xarray*, i64*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
