; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c___nfulnl_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c___nfulnl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfulnl_instance = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlmsghdr = type { i32 }

@NLMSG_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bad nlskb size: %u, tailroom %d\0A\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfulnl_instance*)* @__nfulnl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfulnl_send(%struct.nfulnl_instance* %0) #0 {
  %2 = alloca %struct.nfulnl_instance*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  store %struct.nfulnl_instance* %0, %struct.nfulnl_instance** %2, align 8
  %4 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %5 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %10 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load i32, i32* @NLMSG_DONE, align 4
  %13 = call %struct.nlmsghdr* @nlmsg_put(%struct.TYPE_5__* %11, i32 0, i32 0, i32 %12, i32 4, i32 0)
  store %struct.nlmsghdr* %13, %struct.nlmsghdr** %3, align 8
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %15 = icmp ne %struct.nlmsghdr* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %19 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %24 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = call i32 @skb_tailroom(%struct.TYPE_5__* %25)
  %27 = call i64 @WARN_ONCE(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %8
  %30 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %31 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @kfree_skb(%struct.TYPE_5__* %32)
  br label %47

34:                                               ; preds = %8
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %37 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %40 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %43 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MSG_DONTWAIT, align 4
  %46 = call i32 @nfnetlink_unicast(%struct.TYPE_5__* %38, i32 %41, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %35, %29
  %48 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %49 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %2, align 8
  %51 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %50, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %51, align 8
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @skb_tailroom(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_5__*) #1

declare dso_local i32 @nfnetlink_unicast(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
