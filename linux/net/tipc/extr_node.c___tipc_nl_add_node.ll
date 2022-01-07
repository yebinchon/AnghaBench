; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_nl_add_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_nl_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.tipc_node = type { i32 }
%struct.nlattr = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_NODE_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_NODE = common dso_local global i32 0, align 4
@TIPC_NLA_NODE_ADDR = common dso_local global i32 0, align 4
@TIPC_NLA_NODE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_msg*, %struct.tipc_node*)* @__tipc_nl_add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_node(%struct.tipc_nl_msg* %0, %struct.tipc_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_msg*, align 8
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.tipc_nl_msg* %0, %struct.tipc_nl_msg** %4, align 8
  store %struct.tipc_node* %1, %struct.tipc_node** %5, align 8
  %8 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %9 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NLM_F_MULTI, align 4
  %18 = load i32, i32* @TIPC_NL_NODE_GET, align 4
  %19 = call i8* @genlmsg_put(i32 %10, i32 %13, i32 %16, i32* @tipc_genl_family, i32 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %2
  %26 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %27 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TIPC_NLA_NODE, align 4
  %30 = call %struct.nlattr* @nla_nest_start_noflag(i32 %28, i32 %29)
  store %struct.nlattr* %30, %struct.nlattr** %7, align 8
  %31 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %75

34:                                               ; preds = %25
  %35 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %36 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TIPC_NLA_NODE_ADDR, align 4
  %39 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %40 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nla_put_u32(i32 %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %69

45:                                               ; preds = %34
  %46 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %47 = call i64 @node_is_up(%struct.tipc_node* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %51 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TIPC_NLA_NODE_UP, align 4
  %54 = call i64 @nla_put_flag(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %69

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %60 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %63 = call i32 @nla_nest_end(i32 %61, %struct.nlattr* %62)
  %64 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %65 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @genlmsg_end(i32 %66, i8* %67)
  store i32 0, i32* %3, align 4
  br label %83

69:                                               ; preds = %56, %44
  %70 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %71 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %74 = call i32 @nla_nest_cancel(i32 %72, %struct.nlattr* %73)
  br label %75

75:                                               ; preds = %69, %33
  %76 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %77 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @genlmsg_cancel(i32 %78, i8* %79)
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %58, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i64 @node_is_up(%struct.tipc_node*) #1

declare dso_local i64 @nla_put_flag(i32, i32) #1

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
