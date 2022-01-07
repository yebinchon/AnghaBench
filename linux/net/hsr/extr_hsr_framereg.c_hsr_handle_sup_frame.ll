; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_handle_sup_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_handle_sup_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.hsr_node = type { i32, i32, i32*, i64*, i32*, i32 }
%struct.hsr_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.ethhdr = type { i64, i32 }
%struct.hsr_sup_payload = type { i32 }

@ETH_P_HSR = common dso_local global i32 0, align 4
@HSR_SEQNR_START = common dso_local global i64 0, align 8
@HSR_PT_PORTS = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsr_handle_sup_frame(%struct.sk_buff* %0, %struct.hsr_node* %1, %struct.hsr_port* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hsr_node*, align 8
  %6 = alloca %struct.hsr_port*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.hsr_node*, align 8
  %9 = alloca %struct.hsr_sup_payload*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hsr_node* %1, %struct.hsr_node** %5, align 8
  store %struct.hsr_port* %2, %struct.hsr_port** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i64 @skb_mac_header(%struct.sk_buff* %12)
  %14 = inttoptr i64 %13 to %struct.ethhdr*
  store %struct.ethhdr* %14, %struct.ethhdr** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_pull(%struct.sk_buff* %15, i32 16)
  %17 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %18 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @ETH_P_HSR, align 4
  %21 = call i64 @htons(i32 %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @skb_pull(%struct.sk_buff* %24, i32 4)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_pull(%struct.sk_buff* %27, i32 4)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.hsr_sup_payload*
  store %struct.hsr_sup_payload* %32, %struct.hsr_sup_payload** %9, align 8
  %33 = load %struct.hsr_port*, %struct.hsr_port** %6, align 8
  %34 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.list_head* %36, %struct.list_head** %10, align 8
  %37 = load %struct.list_head*, %struct.list_head** %10, align 8
  %38 = load %struct.hsr_sup_payload*, %struct.hsr_sup_payload** %9, align 8
  %39 = getelementptr inbounds %struct.hsr_sup_payload, %struct.hsr_sup_payload* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.hsr_node* @find_node_by_addr_A(%struct.list_head* %37, i32 %40)
  store %struct.hsr_node* %41, %struct.hsr_node** %8, align 8
  %42 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %43 = icmp ne %struct.hsr_node* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %26
  %45 = load %struct.list_head*, %struct.list_head** %10, align 8
  %46 = load %struct.hsr_sup_payload*, %struct.hsr_sup_payload** %9, align 8
  %47 = getelementptr inbounds %struct.hsr_sup_payload, %struct.hsr_sup_payload* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @HSR_SEQNR_START, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call %struct.hsr_node* @hsr_add_node(%struct.list_head* %45, i32 %48, i64 %50)
  store %struct.hsr_node* %51, %struct.hsr_node** %8, align 8
  br label %52

52:                                               ; preds = %44, %26
  %53 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %54 = icmp ne %struct.hsr_node* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %173

56:                                               ; preds = %52
  %57 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %58 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %59 = icmp eq %struct.hsr_node* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %173

61:                                               ; preds = %56
  %62 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %63 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %66 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ether_addr_copy(i32 %64, i32 %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %158, %61
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @HSR_PT_PORTS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %161

73:                                               ; preds = %69
  %74 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %75 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %126, label %82

82:                                               ; preds = %73
  %83 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %84 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %91 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @time_after(i32 %89, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %82
  %100 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %101 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %108 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %114 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %121 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  br label %126

126:                                              ; preds = %99, %82, %73
  %127 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %128 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %135 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @seq_nr_after(i32 %133, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %126
  %144 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %145 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %152 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  br label %157

157:                                              ; preds = %143, %126
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %69

161:                                              ; preds = %69
  %162 = load %struct.hsr_port*, %struct.hsr_port** %6, align 8
  %163 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.hsr_node*, %struct.hsr_node** %8, align 8
  %166 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %168 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %167, i32 0, i32 0
  %169 = call i32 @list_del_rcu(i32* %168)
  %170 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %171 = load i32, i32* @rcu_head, align 4
  %172 = call i32 @kfree_rcu(%struct.hsr_node* %170, i32 %171)
  br label %173

173:                                              ; preds = %161, %60, %55
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = call i32 @skb_push(%struct.sk_buff* %174, i32 4)
  ret void
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.hsr_node* @find_node_by_addr_A(%struct.list_head*, i32) #1

declare dso_local %struct.hsr_node* @hsr_add_node(%struct.list_head*, i32, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i64 @seq_nr_after(i32, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.hsr_node*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
