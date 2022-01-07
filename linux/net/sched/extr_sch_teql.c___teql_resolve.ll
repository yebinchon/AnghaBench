; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c___teql_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c___teql_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.dst_entry = type { %struct.net_device* }
%struct.neighbour = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*, %struct.dst_entry*)* @__teql_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__teql_resolve(%struct.sk_buff* %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.netdev_queue* %3, %struct.dst_entry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.neighbour*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.netdev_queue* %3, %struct.netdev_queue** %10, align 8
  store %struct.dst_entry* %4, %struct.dst_entry** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry* %18, %struct.sk_buff* %19)
  store %struct.neighbour* %20, %struct.neighbour** %12, align 8
  %21 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %22 = icmp ne %struct.neighbour* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %93

26:                                               ; preds = %5
  %27 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %9, align 8
  %31 = icmp ne %struct.net_device* %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %34 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %37 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = call %struct.neighbour* @__neigh_lookup_errno(i32 %35, i32 %38, %struct.net_device* %39)
  store %struct.neighbour* %40, %struct.neighbour** %14, align 8
  %41 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %42 = call i32 @neigh_release(%struct.neighbour* %41)
  %43 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %44 = call i64 @IS_ERR(%struct.neighbour* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %48 = call i32 @PTR_ERR(%struct.neighbour* %47)
  store i32 %48, i32* %6, align 4
  br label %93

49:                                               ; preds = %32
  %50 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  store %struct.neighbour* %50, %struct.neighbour** %12, align 8
  br label %51

51:                                               ; preds = %49, %26
  %52 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i64 @neigh_event_send(%struct.neighbour* %52, %struct.sk_buff* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32, i32* @MAX_ADDR_LEN, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %16, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %17, align 8
  %61 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = call i32 @neigh_ha_snapshot(i8* %60, %struct.neighbour* %61, %struct.net_device* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i32 @tc_skb_protocol(%struct.sk_buff* %66)
  %68 = call i32 @ntohs(i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_hard_header(%struct.sk_buff* %64, %struct.net_device* %65, i32 %68, i8* %60, i32* null, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %56
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %75, %56
  %79 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %79)
  br label %89

80:                                               ; preds = %51
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = icmp eq %struct.sk_buff* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  br label %87

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ 1, %86 ]
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %87, %78
  %90 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %91 = call i32 @neigh_release(%struct.neighbour* %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %46, %23
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry*, %struct.sk_buff*) #1

declare dso_local %struct.neighbour* @__neigh_lookup_errno(i32, i32, %struct.net_device*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i64 @neigh_event_send(%struct.neighbour*, %struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @neigh_ha_snapshot(i8*, %struct.neighbour*, %struct.net_device*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tc_skb_protocol(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
