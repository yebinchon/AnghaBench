; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c___xa_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c___xa_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.xarray = type { i32 }
%struct.xa_limit = type { i32, i32 }

@xas = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@XA_ZERO_ENTRY = common dso_local global i8* null, align 8
@XA_FREE_MARK = common dso_local global i32 0, align 4
@XAS_RESTART = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xa_alloc(%struct.xarray* %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xa_limit, align 4
  %8 = alloca %struct.xarray*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.xa_limit* %7 to i64*
  store i64 %3, i64* %12, align 4
  store %struct.xarray* %0, %struct.xarray** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.xarray*, %struct.xarray** %8, align 8
  %14 = load i64, i64* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.TYPE_9__* @xas to { i64, i32 }*), i32 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.TYPE_9__* @xas to { i64, i32 }*), i32 0, i32 1), align 8
  %16 = call i32 @XA_STATE(i64 %14, i32 %15, %struct.xarray* %13, i32 0)
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @xa_is_advanced(i8* %17)
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %69

24:                                               ; preds = %5
  %25 = load %struct.xarray*, %struct.xarray** %8, align 8
  %26 = call i32 @xa_track_free(%struct.xarray* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %69

35:                                               ; preds = %24
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** @XA_ZERO_ENTRY, align 8
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %63, %40
  %42 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xas, i32 0, i32 1), align 8
  %44 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XA_FREE_MARK, align 4
  %47 = call i32 @xas_find_marked(%struct.TYPE_9__* @xas, i32 %45, i32 %46)
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xas, i32 0, i32 0), align 8
  %49 = load i64, i64* @XAS_RESTART, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @xas_set_err(%struct.TYPE_9__* @xas, i32 %53)
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xas, i32 0, i32 1), align 8
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @xas_store(%struct.TYPE_9__* @xas, i8* %59)
  %61 = load i32, i32* @XA_FREE_MARK, align 4
  %62 = call i32 @xas_clear_mark(%struct.TYPE_9__* @xas, i32 %61)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @__xas_nomem(%struct.TYPE_9__* @xas, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %41, label %67

67:                                               ; preds = %63
  %68 = call i32 @xas_error(%struct.TYPE_9__* @xas)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %32, %21
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @XA_STATE(i64, i32, %struct.xarray*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xa_is_advanced(i8*) #1

declare dso_local i32 @xa_track_free(%struct.xarray*) #1

declare dso_local i32 @xas_find_marked(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @xas_set_err(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @xas_store(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @xas_clear_mark(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @__xas_nomem(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @xas_error(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
