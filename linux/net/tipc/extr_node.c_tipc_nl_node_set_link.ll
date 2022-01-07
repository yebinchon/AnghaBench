; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.tipc_link = type { i32 }
%struct.tipc_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tipc_link* }
%struct.sk_buff_head = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_LINK_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_link_policy = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_NAME = common dso_local global i64 0, align 8
@tipc_bclink_name = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_PROP = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_PRIO = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_WIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_node_set_link(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tipc_link*, align 8
  %11 = alloca %struct.tipc_node*, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 0, i32* %7, align 4
  %22 = load i32, i32* @TIPC_NLA_LINK_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.net* @sock_net(i32 %29)
  store %struct.net* %30, %struct.net** %15, align 8
  %31 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @TIPC_NLA_LINK, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

42:                                               ; preds = %2
  %43 = load i32, i32* @TIPC_NLA_LINK_MAX, align 4
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @TIPC_NLA_LINK, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @tipc_nl_link_policy, align 4
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %26, i32 %43, i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

59:                                               ; preds = %42
  %60 = load i64, i64* @TIPC_NLA_LINK_NAME, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

67:                                               ; preds = %59
  %68 = load i64, i64* @TIPC_NLA_LINK_NAME, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i8* @nla_data(%struct.nlattr* %70)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* @tipc_bclink_name, align 4
  %74 = call i64 @strcmp(i8* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.net*, %struct.net** %15, align 8
  %78 = call i32 @tipc_nl_bc_link_set(%struct.net* %77, %struct.nlattr** %26)
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

79:                                               ; preds = %67
  %80 = load %struct.net*, %struct.net** %15, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call %struct.tipc_node* @tipc_node_find_by_name(%struct.net* %80, i8* %81, i32* %8)
  store %struct.tipc_node* %82, %struct.tipc_node** %11, align 8
  %83 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %84 = icmp ne %struct.tipc_node* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

88:                                               ; preds = %79
  %89 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %90 = call i32 @tipc_node_read_lock(%struct.tipc_node* %89)
  %91 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %92 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load %struct.tipc_link*, %struct.tipc_link** %97, align 8
  store %struct.tipc_link* %98, %struct.tipc_link** %10, align 8
  %99 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %100 = icmp ne %struct.tipc_link* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %168

104:                                              ; preds = %88
  %105 = load i64, i64* @TIPC_NLA_LINK_PROP, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %109, label %167

109:                                              ; preds = %104
  %110 = load i32, i32* @TIPC_NLA_PROP_MAX, align 4
  %111 = add nsw i32 %110, 1
  %112 = zext i32 %111 to i64
  %113 = call i8* @llvm.stacksave()
  store i8* %113, i8** %17, align 8
  %114 = alloca %struct.nlattr*, i64 %112, align 16
  store i64 %112, i64* %18, align 8
  %115 = load i64, i64* @TIPC_NLA_LINK_PROP, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i32 @tipc_nl_parse_link_prop(%struct.nlattr* %117, %struct.nlattr** %114)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %7, align 4
  store i32 2, i32* %16, align 4
  br label %163

123:                                              ; preds = %109
  %124 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %125 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %124
  %126 = load %struct.nlattr*, %struct.nlattr** %125, align 8
  %127 = icmp ne %struct.nlattr* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  %132 = call i32 @nla_get_u32(%struct.nlattr* %131)
  store i32 %132, i32* %19, align 4
  %133 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @tipc_link_set_tolerance(%struct.tipc_link* %133, i32 %134, %struct.sk_buff_head* %12)
  br label %136

136:                                              ; preds = %128, %123
  %137 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %138 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %137
  %139 = load %struct.nlattr*, %struct.nlattr** %138, align 8
  %140 = icmp ne %struct.nlattr* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %143 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %142
  %144 = load %struct.nlattr*, %struct.nlattr** %143, align 8
  %145 = call i32 @nla_get_u32(%struct.nlattr* %144)
  store i32 %145, i32* %20, align 4
  %146 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @tipc_link_set_prio(%struct.tipc_link* %146, i32 %147, %struct.sk_buff_head* %12)
  br label %149

149:                                              ; preds = %141, %136
  %150 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = icmp ne %struct.nlattr* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %156 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %155
  %157 = load %struct.nlattr*, %struct.nlattr** %156, align 8
  %158 = call i32 @nla_get_u32(%struct.nlattr* %157)
  store i32 %158, i32* %21, align 4
  %159 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %160 = load i32, i32* %21, align 4
  %161 = call i32 @tipc_link_set_queue_limits(%struct.tipc_link* %159, i32 %160)
  br label %162

162:                                              ; preds = %154, %149
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %121, %162
  %164 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %16, align 4
  switch i32 %165, label %182 [
    i32 0, label %166
    i32 2, label %168
  ]

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %104
  br label %168

168:                                              ; preds = %167, %163, %101
  %169 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %170 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %169)
  %171 = load %struct.net*, %struct.net** %15, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %174 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = call i32 @tipc_bearer_xmit(%struct.net* %171, i32 %172, %struct.sk_buff_head* %12, i32* %179)
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

182:                                              ; preds = %168, %163, %85, %76, %64, %57, %39
  %183 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @sock_net(i32) #2

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @tipc_nl_bc_link_set(%struct.net*, %struct.nlattr**) #2

declare dso_local %struct.tipc_node* @tipc_node_find_by_name(%struct.net*, i8*, i32*) #2

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #2

declare dso_local i32 @tipc_nl_parse_link_prop(%struct.nlattr*, %struct.nlattr**) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_link_set_tolerance(%struct.tipc_link*, i32, %struct.sk_buff_head*) #2

declare dso_local i32 @tipc_link_set_prio(%struct.tipc_link*, i32, %struct.sk_buff_head*) #2

declare dso_local i32 @tipc_link_set_queue_limits(%struct.tipc_link*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #2

declare dso_local i32 @tipc_bearer_xmit(%struct.net*, i32, %struct.sk_buff_head*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
