; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_get_mark.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xa_get_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@xas = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xa_get_mark(%struct.xarray* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xarray*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.xarray* %0, %struct.xarray** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @xas, align 4
  %10 = load %struct.xarray*, %struct.xarray** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @XA_STATE(i32 %9, %struct.xarray* %10, i64 %11)
  %13 = call i32 (...) @rcu_read_lock()
  %14 = call i8* @xas_start(i32* @xas)
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %24, %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @xas_get_mark(i32* @xas, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @xa_is_node(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %30

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @xa_to_node(i8* %25)
  %27 = call i8* @xas_descend(i32* @xas, i32 %26)
  store i8* %27, i8** %8, align 8
  br label %15

28:                                               ; preds = %15
  %29 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %32

30:                                               ; preds = %23
  %31 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @XA_STATE(i32, %struct.xarray*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @xas_start(i32*) #1

declare dso_local i64 @xas_get_mark(i32*, i32) #1

declare dso_local i32 @xa_is_node(i8*) #1

declare dso_local i8* @xas_descend(i32*, i32) #1

declare dso_local i32 @xa_to_node(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
