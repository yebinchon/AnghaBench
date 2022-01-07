; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_xarray.c_xa_store_order.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_xarray.c_xa_store_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@xas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xarray*, i64, i32, i8*, i32)* @xa_store_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xa_store_order(%struct.xarray* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.xarray*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.xarray* %0, %struct.xarray** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @xas, align 4
  %13 = load %struct.xarray*, %struct.xarray** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @XA_STATE_ORDER(i32 %12, %struct.xarray* %13, i64 %14, i32 %15)
  br label %17

17:                                               ; preds = %22, %5
  %18 = call i32 @xas_lock(i32* @xas)
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @xas_store(i32* @xas, i8* %19)
  store i8* %20, i8** %11, align 8
  %21 = call i32 @xas_unlock(i32* @xas)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @xas_nomem(i32* @xas, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %17, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  ret i8* %27
}

declare dso_local i32 @XA_STATE_ORDER(i32, %struct.xarray*, i64, i32) #1

declare dso_local i32 @xas_lock(i32*) #1

declare dso_local i8* @xas_store(i32*, i8*) #1

declare dso_local i32 @xas_unlock(i32*) #1

declare dso_local i64 @xas_nomem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
