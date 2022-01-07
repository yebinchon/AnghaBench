; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c___xa_store.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c___xa_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@xas = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XA_ZERO_ENTRY = common dso_local global i8* null, align 8
@XA_FREE_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__xa_store(%struct.xarray* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xarray*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.xarray* %0, %struct.xarray** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @xas, align 4
  %12 = load %struct.xarray*, %struct.xarray** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @XA_STATE(i32 %11, %struct.xarray* %12, i64 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @xa_is_advanced(i8* %15)
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i8* @XA_ERROR(i32 %21)
  store i8* %22, i8** %5, align 8
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.xarray*, %struct.xarray** %6, align 8
  %25 = call i64 @xa_track_free(%struct.xarray* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** @XA_ZERO_ENTRY, align 8
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %30, %27, %23
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @xas_store(i32* @xas, i8* %34)
  store i8* %35, i8** %10, align 8
  %36 = load %struct.xarray*, %struct.xarray** %6, align 8
  %37 = call i64 @xa_track_free(%struct.xarray* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @XA_FREE_MARK, align 4
  %41 = call i32 @xas_clear_mark(i32* @xas, i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @__xas_nomem(i32* @xas, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %33, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = call i8* @xas_result(i32* @xas, i8* %48)
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %47, %19
  %51 = load i8*, i8** %5, align 8
  ret i8* %51
}

declare dso_local i32 @XA_STATE(i32, %struct.xarray*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xa_is_advanced(i8*) #1

declare dso_local i8* @XA_ERROR(i32) #1

declare dso_local i64 @xa_track_free(%struct.xarray*) #1

declare dso_local i8* @xas_store(i32*, i8*) #1

declare dso_local i32 @xas_clear_mark(i32*, i32) #1

declare dso_local i64 @__xas_nomem(i32*, i32) #1

declare dso_local i8* @xas_result(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
