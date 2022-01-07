; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_dump_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, %struct.pneigh_entry** }
%struct.pneigh_entry = type { i32, %struct.pneigh_entry* }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.neigh_dump_filter = type { i32, i32 }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NLM_F_DUMP_FILTERED = common dso_local global i32 0, align 4
@PNEIGH_HASHMASK = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*, %struct.sk_buff*, %struct.netlink_callback*, %struct.neigh_dump_filter*)* @pneigh_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pneigh_dump_table(%struct.neigh_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, %struct.neigh_dump_filter* %3) #0 {
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.neigh_dump_filter*, align 8
  %9 = alloca %struct.pneigh_entry*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  store %struct.neigh_dump_filter* %3, %struct.neigh_dump_filter** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %10, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %28 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* @NLM_F_MULTI, align 4
  store i32 %32, i32* %16, align 4
  %33 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %34 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %4
  %38 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %39 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %4
  %43 = load i32, i32* @NLM_F_DUMP_FILTERED, align 4
  %44 = load i32, i32* %16, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %48 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %47, i32 0, i32 0
  %49 = call i32 @read_lock_bh(i32* %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %133, %46
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @PNEIGH_HASHMASK, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %136

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %62 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %61, i32 0, i32 1
  %63 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %63, i64 %65
  %67 = load %struct.pneigh_entry*, %struct.pneigh_entry** %66, align 8
  store %struct.pneigh_entry* %67, %struct.pneigh_entry** %9, align 8
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %128, %60
  %69 = load %struct.pneigh_entry*, %struct.pneigh_entry** %9, align 8
  %70 = icmp ne %struct.pneigh_entry* %69, null
  br i1 %70, label %71, label %132

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.pneigh_entry*, %struct.pneigh_entry** %9, align 8
  %77 = call %struct.net* @pneigh_net(%struct.pneigh_entry* %76)
  %78 = load %struct.net*, %struct.net** %10, align 8
  %79 = icmp ne %struct.net* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %71
  br label %125

81:                                               ; preds = %75
  %82 = load %struct.pneigh_entry*, %struct.pneigh_entry** %9, align 8
  %83 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %86 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @neigh_ifindex_filtered(i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %81
  %91 = load %struct.pneigh_entry*, %struct.pneigh_entry** %9, align 8
  %92 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %95 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @neigh_master_filtered(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90, %81
  br label %125

100:                                              ; preds = %90
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load %struct.pneigh_entry*, %struct.pneigh_entry** %9, align 8
  %103 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %104 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @NETLINK_CB(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %111 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RTM_NEWNEIGH, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %118 = call i64 @pneigh_fill_info(%struct.sk_buff* %101, %struct.pneigh_entry* %102, i32 %109, i32 %114, i32 %115, i32 %116, %struct.neigh_table* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %100
  %121 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %122 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %121, i32 0, i32 0
  %123 = call i32 @read_unlock_bh(i32* %122)
  store i32 -1, i32* %11, align 4
  br label %143

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124, %99, %80
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load %struct.pneigh_entry*, %struct.pneigh_entry** %9, align 8
  %130 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %129, i32 0, i32 1
  %131 = load %struct.pneigh_entry*, %struct.pneigh_entry** %130, align 8
  store %struct.pneigh_entry* %131, %struct.pneigh_entry** %9, align 8
  br label %68

132:                                              ; preds = %68
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %51

136:                                              ; preds = %51
  %137 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %138 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %137, i32 0, i32 0
  %139 = call i32 @read_unlock_bh(i32* %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %136, %120
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %146 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %151 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  ret i32 %154
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.net* @pneigh_net(%struct.pneigh_entry*) #1

declare dso_local i64 @neigh_ifindex_filtered(i32, i32) #1

declare dso_local i64 @neigh_master_filtered(i32, i32) #1

declare dso_local i64 @pneigh_fill_info(%struct.sk_buff*, %struct.pneigh_entry*, i32, i32, i32, i32, %struct.neigh_table*) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
