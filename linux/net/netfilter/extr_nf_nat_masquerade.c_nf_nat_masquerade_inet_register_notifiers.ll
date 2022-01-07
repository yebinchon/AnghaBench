; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_nf_nat_masquerade_inet_register_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_nf_nat_masquerade_inet_register_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@masq_mutex = common dso_local global i32 0, align 4
@masq_refcnt = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@masq_dev_notifier = common dso_local global i32 0, align 4
@masq_inet_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_masquerade_inet_register_notifiers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @mutex_lock(i32* @masq_mutex)
  %4 = load i32, i32* @masq_refcnt, align 4
  %5 = load i32, i32* @UINT_MAX, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @EOVERFLOW, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %0
  %14 = load i32, i32* @masq_refcnt, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @masq_refcnt, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %43

18:                                               ; preds = %13
  %19 = call i32 @register_netdevice_notifier(i32* @masq_dev_notifier)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %40

23:                                               ; preds = %18
  %24 = call i32 @register_inetaddr_notifier(i32* @masq_inet_notifier)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %38

28:                                               ; preds = %23
  %29 = call i32 (...) @nf_nat_masquerade_ipv6_register_notifier()
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  %34 = call i32 @mutex_unlock(i32* @masq_mutex)
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %1, align 4
  br label %46

36:                                               ; preds = %32
  %37 = call i32 @unregister_inetaddr_notifier(i32* @masq_inet_notifier)
  br label %38

38:                                               ; preds = %36, %27
  %39 = call i32 @unregister_netdevice_notifier(i32* @masq_dev_notifier)
  br label %40

40:                                               ; preds = %38, %22
  %41 = load i32, i32* @masq_refcnt, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @masq_refcnt, align 4
  br label %43

43:                                               ; preds = %40, %17, %10
  %44 = call i32 @mutex_unlock(i32* @masq_mutex)
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %43, %33
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @register_netdevice_notifier(i32*) #1

declare dso_local i32 @register_inetaddr_notifier(i32*) #1

declare dso_local i32 @nf_nat_masquerade_ipv6_register_notifier(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unregister_inetaddr_notifier(i32*) #1

declare dso_local i32 @unregister_netdevice_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
