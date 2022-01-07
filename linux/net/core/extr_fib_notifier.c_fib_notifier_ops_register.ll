; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_notifier.c_fib_notifier_ops_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_notifier.c_fib_notifier_ops_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_notifier_ops = type { i32 }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fib_notifier_ops* @fib_notifier_ops_register(%struct.fib_notifier_ops* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.fib_notifier_ops*, align 8
  %4 = alloca %struct.fib_notifier_ops*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib_notifier_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.fib_notifier_ops* %0, %struct.fib_notifier_ops** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %8 = load %struct.fib_notifier_ops*, %struct.fib_notifier_ops** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.fib_notifier_ops* @kmemdup(%struct.fib_notifier_ops* %8, i32 4, i32 %9)
  store %struct.fib_notifier_ops* %10, %struct.fib_notifier_ops** %6, align 8
  %11 = load %struct.fib_notifier_ops*, %struct.fib_notifier_ops** %6, align 8
  %12 = icmp ne %struct.fib_notifier_ops* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.fib_notifier_ops* @ERR_PTR(i32 %15)
  store %struct.fib_notifier_ops* %16, %struct.fib_notifier_ops** %3, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.fib_notifier_ops*, %struct.fib_notifier_ops** %6, align 8
  %19 = load %struct.net*, %struct.net** %5, align 8
  %20 = call i32 @__fib_notifier_ops_register(%struct.fib_notifier_ops* %18, %struct.net* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %26

24:                                               ; preds = %17
  %25 = load %struct.fib_notifier_ops*, %struct.fib_notifier_ops** %6, align 8
  store %struct.fib_notifier_ops* %25, %struct.fib_notifier_ops** %3, align 8
  br label %31

26:                                               ; preds = %23
  %27 = load %struct.fib_notifier_ops*, %struct.fib_notifier_ops** %6, align 8
  %28 = call i32 @kfree(%struct.fib_notifier_ops* %27)
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.fib_notifier_ops* @ERR_PTR(i32 %29)
  store %struct.fib_notifier_ops* %30, %struct.fib_notifier_ops** %3, align 8
  br label %31

31:                                               ; preds = %26, %24, %13
  %32 = load %struct.fib_notifier_ops*, %struct.fib_notifier_ops** %3, align 8
  ret %struct.fib_notifier_ops* %32
}

declare dso_local %struct.fib_notifier_ops* @kmemdup(%struct.fib_notifier_ops*, i32, i32) #1

declare dso_local %struct.fib_notifier_ops* @ERR_PTR(i32) #1

declare dso_local i32 @__fib_notifier_ops_register(%struct.fib_notifier_ops*, %struct.net*) #1

declare dso_local i32 @kfree(%struct.fib_notifier_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
