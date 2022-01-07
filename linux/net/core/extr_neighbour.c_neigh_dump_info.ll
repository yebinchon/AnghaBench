; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_dump_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_dump_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, i64, i32, %struct.nlmsghdr* }
%struct.nlmsghdr = type { i32 }
%struct.neigh_dump_filter = type { i32 }
%struct.rtgenmsg = type { i32 }
%struct.ndmsg = type { i64 }

@NTF_PROXY = common dso_local global i64 0, align 8
@NEIGH_NR_TABLES = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @neigh_dump_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_dump_info(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.neigh_dump_filter, align 4
  %8 = alloca %struct.neigh_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 3
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  store %struct.nlmsghdr* %16, %struct.nlmsghdr** %6, align 8
  %17 = bitcast %struct.neigh_dump_filter* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store i32 0, i32* %12, align 4
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %19 = call i64 @nlmsg_data(%struct.nlmsghdr* %18)
  %20 = inttoptr i64 %19 to %struct.rtgenmsg*
  %21 = getelementptr inbounds %struct.rtgenmsg, %struct.rtgenmsg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %24 = call i32 @nlmsg_len(%struct.nlmsghdr* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, 8
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %29 = call i64 @nlmsg_data(%struct.nlmsghdr* %28)
  %30 = inttoptr i64 %29 to %struct.ndmsg*
  %31 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NTF_PROXY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %27, %2
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %38 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %39 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %42 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @neigh_valid_dump_req(%struct.nlmsghdr* %37, i64 %40, %struct.neigh_dump_filter* %7, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %49 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %3, align 4
  br label %127

54:                                               ; preds = %47, %36
  %55 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %56 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %115, %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NEIGH_NR_TABLES, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %60
  %65 = load %struct.neigh_table**, %struct.neigh_table*** @neigh_tables, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.neigh_table*, %struct.neigh_table** %65, i64 %67
  %69 = load %struct.neigh_table*, %struct.neigh_table** %68, align 8
  store %struct.neigh_table* %69, %struct.neigh_table** %8, align 8
  %70 = load %struct.neigh_table*, %struct.neigh_table** %8, align 8
  %71 = icmp ne %struct.neigh_table* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %115

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.neigh_table*, %struct.neigh_table** %8, align 8
  %82 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %73
  br label %115

87:                                               ; preds = %80, %77
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %93 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = call i32 @memset(i32* %95, i32 0, i32 4)
  br label %97

97:                                               ; preds = %91, %87
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.neigh_table*, %struct.neigh_table** %8, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %104 = call i32 @pneigh_dump_table(%struct.neigh_table* %101, %struct.sk_buff* %102, %struct.netlink_callback* %103, %struct.neigh_dump_filter* %7)
  store i32 %104, i32* %13, align 4
  br label %110

105:                                              ; preds = %97
  %106 = load %struct.neigh_table*, %struct.neigh_table** %8, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %109 = call i32 @neigh_dump_table(%struct.neigh_table* %106, %struct.sk_buff* %107, %struct.netlink_callback* %108, %struct.neigh_dump_filter* %7)
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %118

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %86, %72
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %60

118:                                              ; preds = %113, %60
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %121 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %118, %52
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #2

declare dso_local i32 @neigh_valid_dump_req(%struct.nlmsghdr*, i64, %struct.neigh_dump_filter*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @pneigh_dump_table(%struct.neigh_table*, %struct.sk_buff*, %struct.netlink_callback*, %struct.neigh_dump_filter*) #2

declare dso_local i32 @neigh_dump_table(%struct.neigh_table*, %struct.sk_buff*, %struct.netlink_callback*, %struct.neigh_dump_filter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
