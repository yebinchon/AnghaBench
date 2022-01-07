; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_rtmsg_fib.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_rtmsg_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_alias = type { i32, i32, i32 }
%struct.nl_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV4_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtmsg_fib(i32 %0, i32 %1, %struct.fib_alias* %2, i32 %3, i32 %4, %struct.nl_info* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fib_alias*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nl_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.fib_alias* %2, %struct.fib_alias** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nl_info* %5, %struct.nl_info** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %19 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %24 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ 0, %28 ]
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* @ENOBUFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %17, align 4
  %33 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %34 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fib_nlmsg_size(i32 %35)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.sk_buff* @nlmsg_new(i32 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %15, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %88

42:                                               ; preds = %29
  %43 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %44 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %45 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %51 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %56 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fib_alias*, %struct.fib_alias** %10, align 8
  %59 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @fib_dump_info(%struct.sk_buff* %43, i32 %46, i32 %47, i32 %48, i32 %49, i32 %52, i32 %53, i32 %54, i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %42
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @EMSGSIZE, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  br label %88

74:                                               ; preds = %42
  %75 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %76 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %77 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %80 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RTNLGRP_IPV4_ROUTE, align 4
  %83 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %84 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @rtnl_notify(%struct.sk_buff* %75, i32 %78, i32 %81, i32 %82, %struct.TYPE_2__* %85, i32 %86)
  br label %98

88:                                               ; preds = %65, %41
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.nl_info*, %struct.nl_info** %13, align 8
  %93 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RTNLGRP_IPV4_ROUTE, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @rtnl_set_sk_err(i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %74, %91, %88
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @fib_nlmsg_size(i32) #1

declare dso_local i32 @fib_dump_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, i32, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
