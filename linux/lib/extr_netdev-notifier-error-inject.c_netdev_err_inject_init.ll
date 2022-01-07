; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_netdev-notifier-error-inject.c_netdev_err_inject_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_netdev-notifier-error-inject.c_netdev_err_inject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"netdev\00", align 1
@notifier_err_inject_dir = common dso_local global i32 0, align 4
@netdev_notifier_err_inject = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@priority = common dso_local global i32 0, align 4
@dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @netdev_err_inject_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_err_inject_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @notifier_err_inject_dir, align 4
  %4 = load i32, i32* @priority, align 4
  %5 = call i32 @notifier_err_inject_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %3, %struct.TYPE_3__* @netdev_notifier_err_inject, i32 %4)
  store i32 %5, i32* @dir, align 4
  %6 = load i32, i32* @dir, align 4
  %7 = call i64 @IS_ERR(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @dir, align 4
  %11 = call i32 @PTR_ERR(i32 %10)
  store i32 %11, i32* %1, align 4
  br label %21

12:                                               ; preds = %0
  %13 = call i32 @register_netdevice_notifier(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @netdev_notifier_err_inject, i32 0, i32 0))
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @dir, align 4
  %18 = call i32 @debugfs_remove_recursive(i32 %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %9
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @notifier_err_inject_init(i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @register_netdevice_notifier(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
