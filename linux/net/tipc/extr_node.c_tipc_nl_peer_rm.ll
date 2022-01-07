; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_peer_rm.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_peer_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.net = type { i32 }
%struct.tipc_net = type { i32 }
%struct.tipc_node = type { i64 }
%struct.nlattr = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@TIPC_NLA_NET_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_NET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_net_policy = common dso_local global i32 0, align 4
@TIPC_NLA_NET_ADDR = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SELF_DOWN_PEER_DOWN = common dso_local global i64 0, align 8
@SELF_DOWN_PEER_LEAVING = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_peer_rm(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tipc_net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tipc_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %6, align 8
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load i32, i32* @tipc_net_id, align 4
  %20 = call %struct.tipc_net* @net_generic(%struct.net* %18, i32 %19)
  store %struct.tipc_net* %20, %struct.tipc_net** %7, align 8
  %21 = load i32, i32* @TIPC_NLA_NET_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @TIPC_NLA_NET, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

36:                                               ; preds = %2
  %37 = load i32, i32* @TIPC_NLA_NET_MAX, align 4
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @TIPC_NLA_NET, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @tipc_nl_net_policy, align 4
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %25, i32 %37, i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

53:                                               ; preds = %36
  %54 = load i64, i64* @TIPC_NLA_NET_ADDR, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp ne %struct.nlattr* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

61:                                               ; preds = %53
  %62 = load i64, i64* @TIPC_NLA_NET_ADDR, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @nla_get_u32(%struct.nlattr* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.net*, %struct.net** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @in_own_node(%struct.net* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

73:                                               ; preds = %61
  %74 = load %struct.tipc_net*, %struct.tipc_net** %7, align 8
  %75 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_bh(i32* %75)
  %77 = load %struct.net*, %struct.net** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.tipc_node* @tipc_node_find(%struct.net* %77, i32 %78)
  store %struct.tipc_node* %79, %struct.tipc_node** %10, align 8
  %80 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %81 = icmp ne %struct.tipc_node* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %73
  %83 = load %struct.tipc_net*, %struct.tipc_net** %7, align 8
  %84 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_bh(i32* %84)
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

88:                                               ; preds = %73
  %89 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %90 = call i32 @tipc_node_write_lock(%struct.tipc_node* %89)
  %91 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %92 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SELF_DOWN_PEER_DOWN, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %98 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SELF_DOWN_PEER_LEAVING, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %104 = call i32 @tipc_node_write_unlock(%struct.tipc_node* %103)
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %12, align 4
  br label %114

107:                                              ; preds = %96, %88
  %108 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %109 = call i32 @tipc_node_clear_links(%struct.tipc_node* %108)
  %110 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %111 = call i32 @tipc_node_write_unlock(%struct.tipc_node* %110)
  %112 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %113 = call i32 @tipc_node_delete(%struct.tipc_node* %112)
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %107, %102
  %115 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %116 = call i32 @tipc_node_put(%struct.tipc_node* %115)
  %117 = load %struct.tipc_net*, %struct.tipc_net** %7, align 8
  %118 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %121

121:                                              ; preds = %114, %82, %70, %58, %51, %33
  %122 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @in_own_node(%struct.net*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_write_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_write_unlock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_clear_links(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_delete(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
