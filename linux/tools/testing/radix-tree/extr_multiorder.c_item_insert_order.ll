; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_multiorder.c_item_insert_order.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_multiorder.c_item_insert_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }
%struct.item = type { i32 }

@xas = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xarray*, i64, i32)* @item_insert_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @item_insert_order(%struct.xarray* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xarray*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.item*, align 8
  store %struct.xarray* %0, %struct.xarray** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @xas, align 4
  %10 = load %struct.xarray*, %struct.xarray** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @XA_STATE_ORDER(i32 %9, %struct.xarray* %10, i64 %11, i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.item* @item_create(i64 %14, i32 %15)
  store %struct.item* %16, %struct.item** %8, align 8
  br label %17

17:                                               ; preds = %22, %3
  %18 = call i32 @xas_lock(i32* @xas)
  %19 = load %struct.item*, %struct.item** %8, align 8
  %20 = call i32 @xas_store(i32* @xas, %struct.item* %19)
  %21 = call i32 @xas_unlock(i32* @xas)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @xas_nomem(i32* @xas, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %17, label %26

26:                                               ; preds = %22
  %27 = call i32 @xas_error(i32* @xas)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %34

30:                                               ; preds = %26
  %31 = load %struct.item*, %struct.item** %8, align 8
  %32 = call i32 @free(%struct.item* %31)
  %33 = call i32 @xas_error(i32* @xas)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @XA_STATE_ORDER(i32, %struct.xarray*, i64, i32) #1

declare dso_local %struct.item* @item_create(i64, i32) #1

declare dso_local i32 @xas_lock(i32*) #1

declare dso_local i32 @xas_store(i32*, %struct.item*) #1

declare dso_local i32 @xas_unlock(i32*) #1

declare dso_local i64 @xas_nomem(i32*, i32) #1

declare dso_local i32 @xas_error(i32*) #1

declare dso_local i32 @free(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
