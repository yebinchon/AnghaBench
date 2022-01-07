; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@xas = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xa_load(%struct.xarray* %0, i64 %1) #0 {
  %3 = alloca %struct.xarray*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.xarray* %0, %struct.xarray** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @xas, align 4
  %7 = load %struct.xarray*, %struct.xarray** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @XA_STATE(i32 %6, %struct.xarray* %7, i64 %8)
  %10 = call i32 (...) @rcu_read_lock()
  br label %11

11:                                               ; preds = %18, %2
  %12 = call i8* @xas_load(i32* @xas)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @xa_is_zero(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i8* null, i8** %5, align 8
  br label %17

17:                                               ; preds = %16, %11
  br label %18

18:                                               ; preds = %17
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @xas_retry(i32* @xas, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %11, label %22

22:                                               ; preds = %18
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

declare dso_local i32 @XA_STATE(i32, %struct.xarray*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @xas_load(i32*) #1

declare dso_local i64 @xa_is_zero(i8*) #1

declare dso_local i64 @xas_retry(i32*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
