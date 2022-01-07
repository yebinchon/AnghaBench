; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6.c_seg6_genl_set_tunsrc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6.c_seg6_genl_set_tunsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.seg6_pernet_data = type { i32, %struct.in6_addr* }

@SEG6_ATTR_DST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @seg6_genl_set_tunsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_genl_set_tunsrc(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.seg6_pernet_data*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = call %struct.net* @genl_info_net(%struct.genl_info* %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = call %struct.seg6_pernet_data* @seg6_pernet(%struct.net* %13)
  store %struct.seg6_pernet_data* %14, %struct.seg6_pernet_data** %10, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @SEG6_ATTR_DST, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %59

25:                                               ; preds = %2
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @SEG6_ATTR_DST, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.in6_addr* @nla_data(i32 %31)
  store %struct.in6_addr* %32, %struct.in6_addr** %7, align 8
  %33 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.in6_addr* @kmemdup(%struct.in6_addr* %33, i32 4, i32 %34)
  store %struct.in6_addr* %35, %struct.in6_addr** %9, align 8
  %36 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %37 = icmp ne %struct.in6_addr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %25
  %42 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %10, align 8
  %43 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %10, align 8
  %46 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %45, i32 0, i32 1
  %47 = load %struct.in6_addr*, %struct.in6_addr** %46, align 8
  store %struct.in6_addr* %47, %struct.in6_addr** %8, align 8
  %48 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %10, align 8
  %49 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %48, i32 0, i32 1
  %50 = load %struct.in6_addr*, %struct.in6_addr** %49, align 8
  %51 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %52 = call i32 @rcu_assign_pointer(%struct.in6_addr* %50, %struct.in6_addr* %51)
  %53 = load %struct.seg6_pernet_data*, %struct.seg6_pernet_data** %10, align 8
  %54 = getelementptr inbounds %struct.seg6_pernet_data, %struct.seg6_pernet_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = call i32 (...) @synchronize_net()
  %57 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %58 = call i32 @kfree(%struct.in6_addr* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %41, %38, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local %struct.seg6_pernet_data* @seg6_pernet(%struct.net*) #1

declare dso_local %struct.in6_addr* @nla_data(i32) #1

declare dso_local %struct.in6_addr* @kmemdup(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @kfree(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
