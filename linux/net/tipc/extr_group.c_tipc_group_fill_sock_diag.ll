; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_fill_sock_diag.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_fill_sock_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i64, i64*, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_SOCK_GROUP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_GROUP_ID = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_GROUP_INSTANCE = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_GROUP_BC_SEND_NEXT = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8
@TIPC_NLA_SOCK_GROUP_NODE_SCOPE = common dso_local global i32 0, align 4
@TIPC_CLUSTER_SCOPE = common dso_local global i64 0, align 8
@TIPC_NLA_SOCK_GROUP_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_GROUP_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_group_fill_sock_diag(%struct.tipc_group* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_group*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = load i32, i32* @TIPC_NLA_SOCK_GROUP, align 4
  %9 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @TIPC_NLA_SOCK_GROUP_ID, align 4
  %18 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %19 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @nla_put_u32(%struct.sk_buff* %16, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @TIPC_NLA_SOCK_GROUP_INSTANCE, align 4
  %26 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %27 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @nla_put_u32(%struct.sk_buff* %24, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @TIPC_NLA_SOCK_GROUP_BC_SEND_NEXT, align 4
  %34 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %35 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %23, %15
  br label %83

40:                                               ; preds = %31
  %41 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %42 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i32, i32* @TIPC_NLA_SOCK_GROUP_NODE_SCOPE, align 4
  %49 = call i64 @nla_put_flag(%struct.sk_buff* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %83

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %55 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TIPC_CLUSTER_SCOPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load i32, i32* @TIPC_NLA_SOCK_GROUP_CLUSTER_SCOPE, align 4
  %62 = call i64 @nla_put_flag(%struct.sk_buff* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %83

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %68 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* @TIPC_NLA_SOCK_GROUP_OPEN, align 4
  %75 = call i64 @nla_put_flag(%struct.sk_buff* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %83

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %66
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %82 = call i32 @nla_nest_end(%struct.sk_buff* %80, %struct.nlattr* %81)
  store i32 0, i32* %3, align 4
  br label %87

83:                                               ; preds = %77, %64, %51, %39
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %86 = call i32 @nla_nest_cancel(%struct.sk_buff* %84, %struct.nlattr* %85)
  store i32 -1, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %79, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
