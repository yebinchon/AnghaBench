; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, i32, i32, i32, %struct.tipc_link_entry* }
%struct.tipc_link_entry = type { i32, i32, i32 }
%struct.timer_list = type { i32 }
%struct.sk_buff_head = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@MAX_BEARERS = common dso_local global i32 0, align 4
@TIPC_LINK_DOWN_EVT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@n = common dso_local global %struct.tipc_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tipc_node_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca %struct.tipc_link_entry*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %10 = ptrtoint %struct.tipc_node* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @timer, align 4
  %13 = call %struct.tipc_node* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.tipc_node* %13, %struct.tipc_node** %3, align 8
  %14 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %15 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %18 = call i32 @trace_tipc_node_timeout(%struct.tipc_node* %17, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %20 = call i32 @node_is_up(%struct.tipc_node* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %24 = call i64 @tipc_node_cleanup(%struct.tipc_node* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %28 = call i32 @tipc_node_put(%struct.tipc_node* %27)
  br label %109

29:                                               ; preds = %22, %1
  %30 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %31 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %32 = call i32 @tipc_node_read_lock(%struct.tipc_node* %31)
  %33 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %34 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %33, i32 0, i32 1
  store i32 10000, i32* %34, align 4
  %35 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %36 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %96, %29
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MAX_BEARERS, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %99

46:                                               ; preds = %44
  %47 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %48 = call i32 @tipc_node_read_lock(%struct.tipc_node* %47)
  %49 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %50 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %49, i32 0, i32 4
  %51 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %51, i64 %53
  store %struct.tipc_link_entry* %54, %struct.tipc_link_entry** %4, align 8
  %55 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %4, align 8
  %56 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %46
  %60 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %4, align 8
  %61 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %60, i32 0, i32 1
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %64 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %4, align 8
  %65 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @tipc_node_calculate_timer(%struct.tipc_node* %63, i32 %66)
  %68 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %4, align 8
  %69 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tipc_link_timeout(i32 %70, %struct.sk_buff_head* %5)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %4, align 8
  %73 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %59, %46
  %78 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %79 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %78)
  %80 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %81 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %4, align 8
  %85 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %84, i32 0, i32 0
  %86 = call i32 @tipc_bearer_xmit(i32 %82, i32 %83, %struct.sk_buff_head* %5, i32* %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @tipc_node_link_down(%struct.tipc_node* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %91, %77
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %37

99:                                               ; preds = %44
  %100 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %101 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %100, i32 0, i32 2
  %102 = load i64, i64* @jiffies, align 8
  %103 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %104 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @msecs_to_jiffies(i32 %105)
  %107 = add nsw i64 %102, %106
  %108 = call i32 @mod_timer(i32* %101, i64 %107)
  br label %109

109:                                              ; preds = %99, %26
  ret void
}

declare dso_local %struct.tipc_node* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @trace_tipc_node_timeout(%struct.tipc_node*, i32, i8*) #1

declare dso_local i32 @node_is_up(%struct.tipc_node*) #1

declare dso_local i64 @tipc_node_cleanup(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tipc_node_calculate_timer(%struct.tipc_node*, i32) #1

declare dso_local i32 @tipc_link_timeout(i32, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_bearer_xmit(i32, i32, %struct.sk_buff_head*, i32*) #1

declare dso_local i32 @tipc_node_link_down(%struct.tipc_node*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
