; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.neighbour = type { i32 (%struct.neighbour*, %struct.sk_buff*)* }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NEIGH_NR_TABLES = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table** null, align 8
@NEIGH_ARP_TABLE = common dso_local global i32 0, align 4
@NEIGH_LINK_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_xmit(i32 %0, %struct.net_device* %1, i8* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.neigh_table*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %13 = load i32, i32* @EAFNOSUPPORT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NEIGH_NR_TABLES, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %4
  %22 = load %struct.neigh_table**, %struct.neigh_table*** @neigh_tables, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.neigh_table*, %struct.neigh_table** %22, i64 %24
  %26 = load %struct.neigh_table*, %struct.neigh_table** %25, align 8
  store %struct.neigh_table* %26, %struct.neigh_table** %10, align 8
  %27 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %28 = icmp ne %struct.neigh_table* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %95

30:                                               ; preds = %21
  %31 = call i32 (...) @rcu_read_lock_bh()
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NEIGH_ARP_TABLE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.neighbour* @__ipv4_neigh_lookup_noref(%struct.net_device* %39, i32 %40)
  store %struct.neighbour* %41, %struct.neighbour** %11, align 8
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = call %struct.neighbour* @__neigh_lookup_noref(%struct.neigh_table* %43, i8* %44, %struct.net_device* %45)
  store %struct.neighbour* %46, %struct.neighbour** %11, align 8
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %49 = icmp ne %struct.neighbour* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call %struct.neighbour* @__neigh_create(%struct.neigh_table* %51, i8* %52, %struct.net_device* %53, i32 0)
  store %struct.neighbour* %54, %struct.neighbour** %11, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %57 = call i32 @PTR_ERR(%struct.neighbour* %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %59 = call i64 @IS_ERR(%struct.neighbour* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (...) @rcu_read_unlock_bh()
  br label %97

63:                                               ; preds = %55
  %64 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %65 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %64, i32 0, i32 0
  %66 = load i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)** %65, align 8
  %67 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 %66(%struct.neighbour* %67, %struct.sk_buff* %68)
  store i32 %69, i32* %9, align 4
  %70 = call i32 (...) @rcu_read_unlock_bh()
  br label %94

71:                                               ; preds = %4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @NEIGH_LINK_TABLE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohs(i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_hard_header(%struct.sk_buff* %76, %struct.net_device* %77, i32 %81, i8* %82, i32* null, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %97

90:                                               ; preds = %75
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = call i32 @dev_queue_xmit(%struct.sk_buff* %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %71
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %97, %94, %29
  %96 = load i32, i32* %9, align 4
  ret i32 %96

97:                                               ; preds = %89, %61
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = call i32 @kfree_skb(%struct.sk_buff* %98)
  br label %95
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.neighbour* @__ipv4_neigh_lookup_noref(%struct.net_device*, i32) #1

declare dso_local %struct.neighbour* @__neigh_lookup_noref(%struct.neigh_table*, i8*, %struct.net_device*) #1

declare dso_local %struct.neighbour* @__neigh_create(%struct.neigh_table*, i8*, %struct.net_device*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
