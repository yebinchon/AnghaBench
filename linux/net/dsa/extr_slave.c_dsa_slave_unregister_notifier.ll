; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@dsa_slave_switchdev_blocking_notifier = common dso_local global %struct.notifier_block zeroinitializer, align 4
@.str = private unnamed_addr constant [60 x i8] c"DSA: failed to unregister switchdev blocking notifier (%d)\0A\00", align 1
@dsa_slave_switchdev_notifier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"DSA: failed to unregister switchdev notifier (%d)\0A\00", align 1
@dsa_slave_nb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"DSA: failed to unregister slave notifier (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsa_slave_unregister_notifier() #0 {
  %1 = alloca %struct.notifier_block*, align 8
  %2 = alloca i32, align 4
  store %struct.notifier_block* @dsa_slave_switchdev_blocking_notifier, %struct.notifier_block** %1, align 8
  %3 = load %struct.notifier_block*, %struct.notifier_block** %1, align 8
  %4 = call i32 @unregister_switchdev_blocking_notifier(%struct.notifier_block* %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 @unregister_switchdev_notifier(i32* @dsa_slave_switchdev_notifier)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %10
  %18 = call i32 @unregister_netdevice_notifier(i32* @dsa_slave_nb)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @unregister_switchdev_blocking_notifier(%struct.notifier_block*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @unregister_switchdev_notifier(i32*) #1

declare dso_local i32 @unregister_netdevice_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
