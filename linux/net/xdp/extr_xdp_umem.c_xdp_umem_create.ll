; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32 }
%struct.xdp_umem_reg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@umem_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xdp_umem* @xdp_umem_create(%struct.xdp_umem_reg* %0) #0 {
  %2 = alloca %struct.xdp_umem*, align 8
  %3 = alloca %struct.xdp_umem_reg*, align 8
  %4 = alloca %struct.xdp_umem*, align 8
  %5 = alloca i32, align 4
  store %struct.xdp_umem_reg* %0, %struct.xdp_umem_reg** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.xdp_umem* @kzalloc(i32 4, i32 %6)
  store %struct.xdp_umem* %7, %struct.xdp_umem** %4, align 8
  %8 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %9 = icmp ne %struct.xdp_umem* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.xdp_umem* @ERR_PTR(i32 %12)
  store %struct.xdp_umem* %13, %struct.xdp_umem** %2, align 8
  br label %44

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @ida_simple_get(i32* @umem_ida, i32 0, i32 0, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %21 = call i32 @kfree(%struct.xdp_umem* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.xdp_umem* @ERR_PTR(i32 %22)
  store %struct.xdp_umem* %23, %struct.xdp_umem** %2, align 8
  br label %44

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %27 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %29 = load %struct.xdp_umem_reg*, %struct.xdp_umem_reg** %3, align 8
  %30 = call i32 @xdp_umem_reg(%struct.xdp_umem* %28, %struct.xdp_umem_reg* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %35 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ida_simple_remove(i32* @umem_ida, i32 %36)
  %38 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %39 = call i32 @kfree(%struct.xdp_umem* %38)
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.xdp_umem* @ERR_PTR(i32 %40)
  store %struct.xdp_umem* %41, %struct.xdp_umem** %2, align 8
  br label %44

42:                                               ; preds = %24
  %43 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  store %struct.xdp_umem* %43, %struct.xdp_umem** %2, align 8
  br label %44

44:                                               ; preds = %42, %33, %19, %10
  %45 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  ret %struct.xdp_umem* %45
}

declare dso_local %struct.xdp_umem* @kzalloc(i32, i32) #1

declare dso_local %struct.xdp_umem* @ERR_PTR(i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.xdp_umem*) #1

declare dso_local i32 @xdp_umem_reg(%struct.xdp_umem*, %struct.xdp_umem_reg*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
