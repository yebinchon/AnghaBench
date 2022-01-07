; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_notify_rule_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_notify_rule_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.fib_rules_ops = type { i32, %struct.net* }
%struct.net = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fib_rule*, %struct.fib_rules_ops*, %struct.nlmsghdr*, i32)* @notify_rule_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_rule_change(i32 %0, %struct.fib_rule* %1, %struct.fib_rules_ops* %2, %struct.nlmsghdr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib_rule*, align 8
  %8 = alloca %struct.fib_rules_ops*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.fib_rule* %1, %struct.fib_rule** %7, align 8
  store %struct.fib_rules_ops* %2, %struct.fib_rules_ops** %8, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %8, align 8
  %17 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %16, i32 0, i32 1
  %18 = load %struct.net*, %struct.net** %17, align 8
  store %struct.net* %18, %struct.net** %11, align 8
  %19 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %8, align 8
  %20 = load %struct.fib_rule*, %struct.fib_rule** %7, align 8
  %21 = call i32 @fib_rule_nlmsg_size(%struct.fib_rules_ops* %19, %struct.fib_rule* %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sk_buff* @nlmsg_new(i32 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = icmp eq %struct.sk_buff* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %58

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = load %struct.fib_rule*, %struct.fib_rule** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %32 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %8, align 8
  %36 = call i32 @fib_nl_fill_rule(%struct.sk_buff* %28, %struct.fib_rule* %29, i32 %30, i32 %33, i32 %34, i32 0, %struct.fib_rules_ops* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %58

48:                                               ; preds = %27
  %49 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %50 = load %struct.net*, %struct.net** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %8, align 8
  %53 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @rtnl_notify(%struct.sk_buff* %49, %struct.net* %50, i32 %51, i32 %54, %struct.nlmsghdr* %55, i32 %56)
  br label %68

58:                                               ; preds = %39, %26
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.net*, %struct.net** %11, align 8
  %63 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %8, align 8
  %64 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @rtnl_set_sk_err(%struct.net* %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %48, %61, %58
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @fib_rule_nlmsg_size(%struct.fib_rules_ops*, %struct.fib_rule*) #1

declare dso_local i32 @fib_nl_fill_rule(%struct.sk_buff*, %struct.fib_rule*, i32, i32, i32, i32, %struct.fib_rules_ops*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
