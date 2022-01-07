; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6.c_seg6_genl_get_tunsrc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6.c_seg6_genl_get_tunsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@seg6_genl_family = common dso_local global i32 0, align 4
@SEG6_CMD_GET_TUNSRC = common dso_local global i32 0, align 4
@SEG6_ATTR_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @seg6_genl_get_tunsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_genl_get_tunsrc(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = call %struct.net* @genl_info_net(%struct.genl_info* %10)
  store %struct.net* %11, %struct.net** %6, align 8
  %12 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @genlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SEG6_CMD_GET_TUNSRC, align 4
  %29 = call i8* @genlmsg_put(%struct.sk_buff* %21, i32 %24, i32 %27, i32* @seg6_genl_family, i32 0, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %56

33:                                               ; preds = %20
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.net*, %struct.net** %6, align 8
  %36 = call %struct.TYPE_2__* @seg6_pernet(%struct.net* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.in6_addr* @rcu_dereference(i32 %38)
  store %struct.in6_addr* %39, %struct.in6_addr** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i32, i32* @SEG6_ATTR_DST, align 4
  %42 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %43 = call i64 @nla_put(%struct.sk_buff* %40, i32 %41, i32 4, %struct.in6_addr* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %54

46:                                               ; preds = %33
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @genlmsg_end(%struct.sk_buff* %48, i8* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = call i32 @genlmsg_reply(%struct.sk_buff* %51, %struct.genl_info* %52)
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %45
  %55 = call i32 (...) @rcu_read_unlock()
  br label %56

56:                                               ; preds = %54, %32
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @nlmsg_free(%struct.sk_buff* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %46, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in6_addr* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @seg6_pernet(%struct.net*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.in6_addr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
