; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_link_entry = type { i32, i32, i32 }
%struct.tipc_node = type { i32*, %struct.tipc_link_entry* }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@INVALID_BEARER_ID = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_xmit(%struct.net* %0, %struct.sk_buff_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tipc_link_entry*, align 8
  %11 = alloca %struct.tipc_node*, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.tipc_link_entry* null, %struct.tipc_link_entry** %10, align 8
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @in_own_node(%struct.net* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.net*, %struct.net** %6, align 8
  %21 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %22 = call i32 @tipc_loopback_trace(%struct.net* %20, %struct.sk_buff_head* %21)
  %23 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.net*, %struct.net** %6, align 8
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %28 = call i32 @tipc_sk_rcv(%struct.net* %26, %struct.sk_buff_head* %27)
  store i32 0, i32* %5, align 4
  br label %112

29:                                               ; preds = %4
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.tipc_node* @tipc_node_find(%struct.net* %30, i32 %31)
  store %struct.tipc_node* %32, %struct.tipc_node** %11, align 8
  %33 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %34 = icmp ne %struct.tipc_node* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %41 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %40)
  %42 = load i32, i32* @EHOSTUNREACH, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %112

44:                                               ; preds = %29
  %45 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %46 = call i32 @tipc_node_read_lock(%struct.tipc_node* %45)
  %47 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %48 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @INVALID_BEARER_ID, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %44
  %62 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %63 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %62)
  %64 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %65 = call i32 @tipc_node_put(%struct.tipc_node* %64)
  %66 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %67 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %66)
  %68 = load i32, i32* @EHOSTUNREACH, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %112

70:                                               ; preds = %44
  %71 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %72 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %73 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %72, i32 0, i32 1
  %74 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %74, i64 %76
  store %struct.tipc_link_entry* %77, %struct.tipc_link_entry** %10, align 8
  %78 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %10, align 8
  %79 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %78, i32 0, i32 1
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %10, align 8
  %82 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %85 = call i32 @tipc_link_xmit(i32 %83, %struct.sk_buff_head* %84, %struct.sk_buff_head* %12)
  store i32 %85, i32* %14, align 4
  %86 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %10, align 8
  %87 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock_bh(i32* %87)
  %89 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %90 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %89)
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @ENOBUFS, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %70
  %99 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @tipc_node_link_down(%struct.tipc_node* %99, i32 %100, i32 0)
  br label %108

102:                                              ; preds = %70
  %103 = load %struct.net*, %struct.net** %6, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %10, align 8
  %106 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %105, i32 0, i32 0
  %107 = call i32 @tipc_bearer_xmit(%struct.net* %103, i32 %104, %struct.sk_buff_head* %12, i32* %106)
  br label %108

108:                                              ; preds = %102, %98
  %109 = load %struct.tipc_node*, %struct.tipc_node** %11, align 8
  %110 = call i32 @tipc_node_put(%struct.tipc_node* %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %61, %39, %19
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @in_own_node(%struct.net*, i32) #1

declare dso_local i32 @tipc_loopback_trace(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tipc_sk_rcv(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tipc_link_xmit(i32, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_link_down(%struct.tipc_node*, i32, i32) #1

declare dso_local i32 @tipc_bearer_xmit(%struct.net*, i32, %struct.sk_buff_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
