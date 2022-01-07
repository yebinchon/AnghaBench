; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_nl_add_monitor_prop.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_nl_add_monitor_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@TIPC_NL_MON_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_MON = common dso_local global i32 0, align 4
@TIPC_NLA_MON_ACTIVATION_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tipc_nl_msg*)* @__tipc_nl_add_monitor_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_monitor_prop(%struct.net* %0, %struct.tipc_nl_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tipc_nl_msg*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %5, align 8
  %9 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %10 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %13 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %16 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TIPC_NL_MON_GET, align 4
  %19 = call i8* @genlmsg_put(i32 %11, i32 %14, i32 %17, i32* @tipc_genl_family, i32 0, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %2
  %26 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %27 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TIPC_NLA_MON, align 4
  %30 = call %struct.nlattr* @nla_nest_start_noflag(i32 %28, i32 %29)
  store %struct.nlattr* %30, %struct.nlattr** %6, align 8
  %31 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %62

34:                                               ; preds = %25
  %35 = load %struct.net*, %struct.net** %4, align 8
  %36 = call i32 @tipc_nl_monitor_get_threshold(%struct.net* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %38 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TIPC_NLA_MON_ACTIVATION_THRESHOLD, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @nla_put_u32(i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %56

45:                                               ; preds = %34
  %46 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %47 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %50 = call i32 @nla_nest_end(i32 %48, %struct.nlattr* %49)
  %51 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %52 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @genlmsg_end(i32 %53, i8* %54)
  store i32 0, i32* %3, align 4
  br label %70

56:                                               ; preds = %44
  %57 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %58 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %61 = call i32 @nla_nest_cancel(i32 %59, %struct.nlattr* %60)
  br label %62

62:                                               ; preds = %56, %33
  %63 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %64 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @genlmsg_cancel(i32 %65, i8* %66)
  %68 = load i32, i32* @EMSGSIZE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %62, %45, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i32 @tipc_nl_monitor_get_threshold(%struct.net*) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
