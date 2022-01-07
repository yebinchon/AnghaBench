; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_node_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_node_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32*, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.tipc_link* }
%struct.tipc_link = type { i32 }
%struct.sk_buff_head = type { i32 }

@LINK_ESTABLISH_EVT = common dso_local global i32 0, align 4
@TIPC_NOTIFY_LINK_UP = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Established link <%s> on network plane %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SELF_ESTABL_CONTACT_EVT = common dso_local global i32 0, align 4
@TIPC_NOTIFY_NODE_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Old link <%s> becomes standby\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"New link <%s> is standby\0A\00", align 1
@SYNCH_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*, i32, %struct.sk_buff_head*)* @__tipc_node_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tipc_node_link_up(%struct.tipc_node* %0, i32 %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tipc_link*, align 8
  %10 = alloca %struct.tipc_link*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %11 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32* %14, i32** %7, align 8
  %15 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %16 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32* %18, i32** %8, align 8
  %19 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %20 = call %struct.tipc_link* @node_active_link(%struct.tipc_node* %19, i32 0)
  store %struct.tipc_link* %20, %struct.tipc_link** %9, align 8
  %21 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %22 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.tipc_link*, %struct.tipc_link** %27, align 8
  store %struct.tipc_link* %28, %struct.tipc_link** %10, align 8
  %29 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %30 = icmp ne %struct.tipc_link* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %33 = call i64 @tipc_link_is_up(%struct.tipc_link* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %3
  br label %155

36:                                               ; preds = %31
  %37 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %38 = load i32, i32* @LINK_ESTABLISH_EVT, align 4
  %39 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %37, i32 %38)
  %40 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %41 = call i64 @tipc_link_is_up(%struct.tipc_link* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %155

44:                                               ; preds = %36
  %45 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %46 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @TIPC_NOTIFY_LINK_UP, align 4
  %50 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %51 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %55 = call i32 @tipc_link_id(%struct.tipc_link* %54)
  %56 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %57 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %59 = call i64 @tipc_link_mtu(%struct.tipc_link* %58)
  %60 = load i64, i64* @INT_H_SIZE, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %63 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %61, i64* %68, align 8
  %69 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %70 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %74 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @tipc_bearer_add_dest(i32 %71, i32 %72, i32 %75)
  %77 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %78 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @tipc_bcast_inc_bearer_dst_cnt(i32 %79, i32 %80)
  %82 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %83 = call i32 @tipc_link_name(%struct.tipc_link* %82)
  %84 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %85 = call i32 @tipc_link_plane(%struct.tipc_link* %84)
  %86 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %85)
  %87 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %88 = call i32 @trace_tipc_node_link_up(%struct.tipc_node* %87, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %90 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %91 = call i32 @tipc_link_build_state_msg(%struct.tipc_link* %89, %struct.sk_buff_head* %90)
  %92 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %93 = icmp ne %struct.tipc_link* %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %44
  %95 = load i32, i32* %5, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %100 = load i32, i32* @SELF_ESTABL_CONTACT_EVT, align 4
  %101 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %99, i32 %100)
  %102 = load i32, i32* @TIPC_NOTIFY_NODE_UP, align 4
  %103 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %104 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %108 = call i32 @tipc_link_set_active(%struct.tipc_link* %107, i32 1)
  %109 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %110 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %113 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %114 = call i32 @tipc_bcast_add_peer(i32 %111, %struct.tipc_link* %112, %struct.sk_buff_head* %113)
  br label %155

115:                                              ; preds = %44
  %116 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %117 = call i64 @tipc_link_prio(%struct.tipc_link* %116)
  %118 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %119 = call i64 @tipc_link_prio(%struct.tipc_link* %118)
  %120 = icmp sgt i64 %117, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %123 = call i32 @tipc_link_name(%struct.tipc_link* %122)
  %124 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load i32*, i32** %7, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32*, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  %129 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %130 = call i32 @tipc_link_set_active(%struct.tipc_link* %129, i32 1)
  %131 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %132 = call i32 @tipc_link_set_active(%struct.tipc_link* %131, i32 0)
  br label %149

133:                                              ; preds = %115
  %134 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %135 = call i64 @tipc_link_prio(%struct.tipc_link* %134)
  %136 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %137 = call i64 @tipc_link_prio(%struct.tipc_link* %136)
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %141 = call i32 @tipc_link_set_active(%struct.tipc_link* %140, i32 1)
  %142 = load i32, i32* %5, align 4
  %143 = load i32*, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  br label %148

144:                                              ; preds = %133
  %145 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %146 = call i32 @tipc_link_name(%struct.tipc_link* %145)
  %147 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %139
  br label %149

149:                                              ; preds = %148, %121
  %150 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %151 = load %struct.tipc_link*, %struct.tipc_link** %10, align 8
  %152 = load i32, i32* @SYNCH_MSG, align 4
  %153 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %154 = call i32 @tipc_link_tnl_prepare(%struct.tipc_link* %150, %struct.tipc_link* %151, i32 %152, %struct.sk_buff_head* %153)
  br label %155

155:                                              ; preds = %149, %94, %43, %35
  ret void
}

declare dso_local %struct.tipc_link* @node_active_link(%struct.tipc_node*, i32) #1

declare dso_local i64 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @tipc_link_id(%struct.tipc_link*) #1

declare dso_local i64 @tipc_link_mtu(%struct.tipc_link*) #1

declare dso_local i32 @tipc_bearer_add_dest(i32, i32, i32) #1

declare dso_local i32 @tipc_bcast_inc_bearer_dst_cnt(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @tipc_link_name(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_plane(%struct.tipc_link*) #1

declare dso_local i32 @trace_tipc_node_link_up(%struct.tipc_node*, i32, i8*) #1

declare dso_local i32 @tipc_link_build_state_msg(%struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_fsm_evt(%struct.tipc_node*, i32) #1

declare dso_local i32 @tipc_link_set_active(%struct.tipc_link*, i32) #1

declare dso_local i32 @tipc_bcast_add_peer(i32, %struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i64 @tipc_link_prio(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_tnl_prepare(%struct.tipc_link*, %struct.tipc_link*, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
