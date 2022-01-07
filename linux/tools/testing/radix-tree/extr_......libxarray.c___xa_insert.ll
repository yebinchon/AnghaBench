; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c___xa_insert.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c___xa_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@xas = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XA_ZERO_ENTRY = common dso_local global i8* null, align 8
@XA_FREE_MARK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xa_insert(%struct.xarray* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
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
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** @XA_ZERO_ENTRY, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %47, %27
  %29 = call i8* @xas_load(i32* @xas)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @xas_store(i32* @xas, i8* %33)
  %35 = load %struct.xarray*, %struct.xarray** %6, align 8
  %36 = call i64 @xa_track_free(%struct.xarray* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @XA_FREE_MARK, align 4
  %40 = call i32 @xas_clear_mark(i32* @xas, i32 %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %46

42:                                               ; preds = %28
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @xas_set_err(i32* @xas, i32 %44)
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @__xas_nomem(i32* @xas, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %28, label %51

51:                                               ; preds = %47
  %52 = call i32 @xas_error(i32* @xas)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @XA_STATE(i32, %struct.xarray*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xa_is_advanced(i8*) #1

declare dso_local i8* @xas_load(i32*) #1

declare dso_local i32 @xas_store(i32*, i8*) #1

declare dso_local i64 @xa_track_free(%struct.xarray*) #1

declare dso_local i32 @xas_clear_mark(i32*, i32) #1

declare dso_local i32 @xas_set_err(i32*, i32) #1

declare dso_local i64 @__xas_nomem(i32*, i32) #1

declare dso_local i32 @xas_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
