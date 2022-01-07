; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_reset_link_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_reset_link_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.tipc_link = type { i32 }
%struct.tipc_node = type { %struct.tipc_link_entry* }
%struct.tipc_link_entry = type { i32, %struct.tipc_link* }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_LINK_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_link_policy = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_NAME = common dso_local global i64 0, align 8
@tipc_bclink_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_node_reset_link_stats(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tipc_link*, align 8
  %10 = alloca %struct.tipc_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.tipc_link_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load i32, i32* @TIPC_NLA_LINK_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net* @sock_net(i32 %23)
  store %struct.net* %24, %struct.net** %13, align 8
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @TIPC_NLA_LINK, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

35:                                               ; preds = %2
  %36 = load i32, i32* @TIPC_NLA_LINK_MAX, align 4
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @TIPC_NLA_LINK, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @tipc_nl_link_policy, align 4
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %20, i32 %36, i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

52:                                               ; preds = %35
  %53 = load i64, i64* @TIPC_NLA_LINK_NAME, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

60:                                               ; preds = %52
  %61 = load i64, i64* @TIPC_NLA_LINK_NAME, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i8* @nla_data(%struct.nlattr* %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @tipc_bclink_name, align 4
  %67 = call i64 @strcmp(i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.net*, %struct.net** %13, align 8
  %71 = call i32 @tipc_bclink_reset_stats(%struct.net* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

76:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

77:                                               ; preds = %60
  %78 = load %struct.net*, %struct.net** %13, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call %struct.tipc_node* @tipc_node_find_by_name(%struct.net* %78, i8* %79, i32* %8)
  store %struct.tipc_node* %80, %struct.tipc_node** %10, align 8
  %81 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %82 = icmp ne %struct.tipc_node* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

86:                                               ; preds = %77
  %87 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %88 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %87, i32 0, i32 0
  %89 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %89, i64 %91
  store %struct.tipc_link_entry* %92, %struct.tipc_link_entry** %14, align 8
  %93 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %94 = call i32 @tipc_node_read_lock(%struct.tipc_node* %93)
  %95 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %14, align 8
  %96 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %95, i32 0, i32 0
  %97 = call i32 @spin_lock_bh(i32* %96)
  %98 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %99 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %98, i32 0, i32 0
  %100 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %100, i64 %102
  %104 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %103, i32 0, i32 1
  %105 = load %struct.tipc_link*, %struct.tipc_link** %104, align 8
  store %struct.tipc_link* %105, %struct.tipc_link** %9, align 8
  %106 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %107 = icmp ne %struct.tipc_link* %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %86
  %109 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %14, align 8
  %110 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %113 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

116:                                              ; preds = %86
  %117 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %118 = call i32 @tipc_link_reset_stats(%struct.tipc_link* %117)
  %119 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %14, align 8
  %120 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock_bh(i32* %120)
  %122 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %123 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %122)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

124:                                              ; preds = %116, %108, %83, %76, %74, %57, %50, %32
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @sock_net(i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @tipc_bclink_reset_stats(%struct.net*) #2

declare dso_local %struct.tipc_node* @tipc_node_find_by_name(%struct.net*, i8*, i32*) #2

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #2

declare dso_local i32 @tipc_link_reset_stats(%struct.tipc_link*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
