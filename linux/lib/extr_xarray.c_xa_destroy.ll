; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_xa_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_xa_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.xarray = type { i32 }

@xas = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@XA_FREE_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xa_destroy(%struct.xarray* %0) #0 {
  %2 = alloca %struct.xarray*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.xarray* %0, %struct.xarray** %2, align 8
  %5 = load %struct.xarray*, %struct.xarray** %2, align 8
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xas, i32 0, i32 0), align 8
  %7 = call i32 @XA_STATE(i32* %6, %struct.xarray* %5, i32 0)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xas, i32 0, i32 0), align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @xas_lock_irqsave(%struct.TYPE_7__* @xas, i64 %8)
  %10 = load %struct.xarray*, %struct.xarray** %2, align 8
  %11 = call i8* @xa_head_locked(%struct.xarray* %10)
  store i8* %11, i8** %4, align 8
  %12 = load %struct.xarray*, %struct.xarray** %2, align 8
  %13 = getelementptr inbounds %struct.xarray, %struct.xarray* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @RCU_INIT_POINTER(i32 %14, i32* null)
  %16 = call i32 @xas_init_marks(%struct.TYPE_7__* @xas)
  %17 = load %struct.xarray*, %struct.xarray** %2, align 8
  %18 = call i64 @xa_zero_busy(%struct.xarray* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.xarray*, %struct.xarray** %2, align 8
  %22 = load i32, i32* @XA_FREE_MARK, align 4
  %23 = call i32 @xa_mark_clear(%struct.xarray* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @xa_is_node(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @xa_to_node(i8* %29)
  %31 = call i32 @xas_free_nodes(%struct.TYPE_7__* @xas, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @xas_unlock_irqrestore(%struct.TYPE_7__* @xas, i64 %33)
  ret void
}

declare dso_local i32 @XA_STATE(i32*, %struct.xarray*, i32) #1

declare dso_local i32 @xas_lock_irqsave(%struct.TYPE_7__*, i64) #1

declare dso_local i8* @xa_head_locked(%struct.xarray*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @xas_init_marks(%struct.TYPE_7__*) #1

declare dso_local i64 @xa_zero_busy(%struct.xarray*) #1

declare dso_local i32 @xa_mark_clear(%struct.xarray*, i32) #1

declare dso_local i64 @xa_is_node(i8*) #1

declare dso_local i32 @xas_free_nodes(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xa_to_node(i8*) #1

declare dso_local i32 @xas_unlock_irqrestore(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
