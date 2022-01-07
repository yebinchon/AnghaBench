; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_set_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_set_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_MON_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_MON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_monitor_policy = common dso_local global i32 0, align 4
@TIPC_NLA_MON_ACTIVATION_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_node_set_monitor(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load i32, i32* @TIPC_NLA_MON_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @TIPC_NLA_MON, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %67

31:                                               ; preds = %2
  %32 = load i32, i32* @TIPC_NLA_MON_MAX, align 4
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @TIPC_NLA_MON, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @tipc_nl_monitor_policy, align 4
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %32, i32 %38, i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %67

48:                                               ; preds = %31
  %49 = load i64, i64* @TIPC_NLA_MON_ACTIVATION_THRESHOLD, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i64, i64* @TIPC_NLA_MON_ACTIVATION_THRESHOLD, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i32 @nla_get_u32(%struct.nlattr* %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.net*, %struct.net** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @tipc_nl_monitor_set_threshold(%struct.net* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %67

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %48
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %63, %46, %28
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @sock_net(i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_nl_monitor_set_threshold(%struct.net*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
