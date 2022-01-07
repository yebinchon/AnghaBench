; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32*, i32, i32 }
%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.tipc_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tipc_link* }
%struct.tipc_link = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_LINK_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_link_policy = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_NAME = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tipc_bclink_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_node_get_link(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tipc_nl_msg, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tipc_node*, align 8
  %15 = alloca %struct.tipc_link*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = call %struct.net* @genl_info_net(%struct.genl_info* %16)
  store %struct.net* %17, %struct.net** %6, align 8
  %18 = load i32, i32* @TIPC_NLA_LINK_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @TIPC_NLA_LINK, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %140

41:                                               ; preds = %2
  %42 = load i32, i32* @TIPC_NLA_LINK_MAX, align 4
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @TIPC_NLA_LINK, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @tipc_nl_link_policy, align 4
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %42, i32 %48, i32 %49, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %140

58:                                               ; preds = %41
  %59 = load i64, i64* @TIPC_NLA_LINK_NAME, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %140

66:                                               ; preds = %58
  %67 = load i64, i64* @TIPC_NLA_LINK_NAME, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i8* @nla_data(%struct.nlattr* %69)
  store i8* %70, i8** %10, align 8
  %71 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @nlmsg_new(i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %140

81:                                               ; preds = %66
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* @tipc_bclink_name, align 4
  %84 = call i64 @strcmp(i8* %82, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.net*, %struct.net** %6, align 8
  %88 = call i32 @tipc_nl_add_bc_link(%struct.net* %87, %struct.tipc_nl_msg* %9)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %135

92:                                               ; preds = %86
  br label %130

93:                                               ; preds = %81
  %94 = load %struct.net*, %struct.net** %6, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call %struct.tipc_node* @tipc_node_find_by_name(%struct.net* %94, i8* %95, i32* %13)
  store %struct.tipc_node* %96, %struct.tipc_node** %14, align 8
  %97 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %98 = icmp ne %struct.tipc_node* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %11, align 4
  br label %135

102:                                              ; preds = %93
  %103 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %104 = call i32 @tipc_node_read_lock(%struct.tipc_node* %103)
  %105 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %106 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load %struct.tipc_link*, %struct.tipc_link** %111, align 8
  store %struct.tipc_link* %112, %struct.tipc_link** %15, align 8
  %113 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %114 = icmp ne %struct.tipc_link* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %102
  %116 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %117 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  br label %135

120:                                              ; preds = %102
  %121 = load %struct.net*, %struct.net** %6, align 8
  %122 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %123 = call i32 @__tipc_nl_add_link(%struct.net* %121, %struct.tipc_nl_msg* %9, %struct.tipc_link* %122, i32 0)
  store i32 %123, i32* %11, align 4
  %124 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %125 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %124)
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %135

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %92
  %131 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %134 = call i32 @genlmsg_reply(i32 %132, %struct.genl_info* %133)
  store i32 %134, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %140

135:                                              ; preds = %128, %115, %99, %91
  %136 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @nlmsg_free(i32 %137)
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %140

140:                                              ; preds = %135, %130, %78, %63, %56, %38
  %141 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nlmsg_new(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @tipc_nl_add_bc_link(%struct.net*, %struct.tipc_nl_msg*) #1

declare dso_local %struct.tipc_node* @tipc_node_find_by_name(%struct.net*, i8*, i32*) #1

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #1

declare dso_local i32 @__tipc_nl_add_link(%struct.net*, %struct.tipc_nl_msg*, %struct.tipc_link*, i32) #1

declare dso_local i32 @genlmsg_reply(i32, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
