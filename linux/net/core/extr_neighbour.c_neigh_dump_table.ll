; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_dump_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.neigh_dump_filter = type { i32, i32 }
%struct.net = type { i32 }
%struct.neighbour = type { i32, i32 }
%struct.neigh_hash_table = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NLM_F_DUMP_FILTERED = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*, %struct.sk_buff*, %struct.netlink_callback*, %struct.neigh_dump_filter*)* @neigh_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_dump_table(%struct.neigh_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, %struct.neigh_dump_filter* %3) #0 {
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.neigh_dump_filter*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.neigh_hash_table*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  store %struct.neigh_dump_filter* %3, %struct.neigh_dump_filter** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %9, align 8
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %29 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* @NLM_F_MULTI, align 4
  store i32 %33, i32* %17, align 4
  %34 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %35 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %4
  %39 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %40 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %4
  %44 = load i32, i32* @NLM_F_DUMP_FILTERED, align 4
  %45 = load i32, i32* %17, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = call i32 (...) @rcu_read_lock_bh()
  %49 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %50 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @rcu_dereference_bh(i32 %51)
  %53 = bitcast i8* %52 to %struct.neigh_hash_table*
  store %struct.neigh_hash_table* %53, %struct.neigh_hash_table** %16, align 8
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %143, %47
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %16, align 8
  %58 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %146

62:                                               ; preds = %55
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %16, align 8
  %69 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @rcu_dereference_bh(i32 %74)
  %76 = bitcast i8* %75 to %struct.neighbour*
  store %struct.neighbour* %76, %struct.neighbour** %10, align 8
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %136, %67
  %78 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %79 = icmp ne %struct.neighbour* %78, null
  br i1 %79, label %80, label %142

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %86 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_net(i32 %87)
  %89 = load %struct.net*, %struct.net** %9, align 8
  %90 = call i32 @net_eq(i32 %88, %struct.net* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84, %80
  br label %133

93:                                               ; preds = %84
  %94 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %95 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %98 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @neigh_ifindex_filtered(i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %93
  %103 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %104 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %107 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @neigh_master_filtered(i32 %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102, %93
  br label %133

112:                                              ; preds = %102
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %115 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %116 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @NETLINK_CB(i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %123 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RTM_NEWNEIGH, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i64 @neigh_fill_info(%struct.sk_buff* %113, %struct.neighbour* %114, i32 %121, i32 %126, i32 %127, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %112
  store i32 -1, i32* %11, align 4
  br label %150

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132, %111, %92
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133
  %137 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %138 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @rcu_dereference_bh(i32 %139)
  %141 = bitcast i8* %140 to %struct.neighbour*
  store %struct.neighbour* %141, %struct.neighbour** %10, align 8
  br label %77

142:                                              ; preds = %77
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %55

146:                                              ; preds = %55
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %146, %131
  %151 = call i32 (...) @rcu_read_unlock_bh()
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %154 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %159 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i8* @rcu_dereference_bh(i32) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @neigh_ifindex_filtered(i32, i32) #1

declare dso_local i64 @neigh_master_filtered(i32, i32) #1

declare dso_local i64 @neigh_fill_info(%struct.sk_buff*, %struct.neighbour*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
