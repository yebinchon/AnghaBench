; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c___xa_cmpxchg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c___xa_cmpxchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@xas = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XA_FREE_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__xa_cmpxchg(%struct.xarray* %0, i64 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xarray*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.xarray* %0, %struct.xarray** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @xas, align 4
  %14 = load %struct.xarray*, %struct.xarray** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @XA_STATE(i32 %13, %struct.xarray* %14, i64 %15)
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @xa_is_advanced(i8* %17)
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i8* @XA_ERROR(i32 %23)
  store i8* %24, i8** %6, align 8
  br label %55

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %48, %25
  %27 = call i8* @xas_load(i32* @xas)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @xas_store(i32* @xas, i8* %32)
  %34 = load %struct.xarray*, %struct.xarray** %7, align 8
  %35 = call i64 @xa_track_free(%struct.xarray* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @XA_FREE_MARK, align 4
  %45 = call i32 @xas_clear_mark(i32* @xas, i32 %44)
  br label %46

46:                                               ; preds = %43, %40, %37, %31
  br label %47

47:                                               ; preds = %46, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @__xas_nomem(i32* @xas, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %26, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @xas_result(i32* @xas, i8* %53)
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %52, %21
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

declare dso_local i32 @XA_STATE(i32, %struct.xarray*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xa_is_advanced(i8*) #1

declare dso_local i8* @XA_ERROR(i32) #1

declare dso_local i8* @xas_load(i32*) #1

declare dso_local i32 @xas_store(i32*, i8*) #1

declare dso_local i64 @xa_track_free(%struct.xarray*) #1

declare dso_local i32 @xas_clear_mark(i32*, i32) #1

declare dso_local i64 @__xas_nomem(i32*, i32) #1

declare dso_local i8* @xas_result(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
