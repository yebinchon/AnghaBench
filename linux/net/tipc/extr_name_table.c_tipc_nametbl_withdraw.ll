; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_withdraw.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_withdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.name_table = type { i32 }
%struct.tipc_net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.publication = type { i32 }

@rcu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to remove local publication {%u,%u,%u}/%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nametbl_withdraw(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.name_table*, align 8
  %13 = alloca %struct.tipc_net*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.publication*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = call %struct.name_table* @tipc_name_table(%struct.net* %17)
  store %struct.name_table* %18, %struct.name_table** %12, align 8
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = call %struct.tipc_net* @tipc_net(%struct.net* %19)
  store %struct.tipc_net* %20, %struct.tipc_net** %13, align 8
  %21 = load %struct.net*, %struct.net** %7, align 8
  %22 = call i32 @tipc_own_addr(%struct.net* %21)
  store i32 %22, i32* %14, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  %23 = load %struct.tipc_net*, %struct.tipc_net** %13, align 8
  %24 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.net*, %struct.net** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.publication* @tipc_nametbl_remove_publ(%struct.net* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store %struct.publication* %32, %struct.publication** %16, align 8
  %33 = load %struct.publication*, %struct.publication** %16, align 8
  %34 = icmp ne %struct.publication* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %5
  %36 = load %struct.name_table*, %struct.name_table** %12, align 8
  %37 = getelementptr inbounds %struct.name_table, %struct.name_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.net*, %struct.net** %7, align 8
  %41 = load %struct.publication*, %struct.publication** %16, align 8
  %42 = call %struct.sk_buff* @tipc_named_withdraw(%struct.net* %40, %struct.publication* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %15, align 8
  %43 = load %struct.publication*, %struct.publication** %16, align 8
  %44 = getelementptr inbounds %struct.publication, %struct.publication* %43, i32 0, i32 0
  %45 = call i32 @list_del_init(i32* %44)
  %46 = load %struct.publication*, %struct.publication** %16, align 8
  %47 = load i32, i32* @rcu, align 4
  %48 = call i32 @kfree_rcu(%struct.publication* %46, i32 %47)
  br label %55

49:                                               ; preds = %5
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %35
  %56 = load %struct.tipc_net*, %struct.tipc_net** %13, align 8
  %57 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.net*, %struct.net** %7, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %64 = call i32 @tipc_node_broadcast(%struct.net* %62, %struct.sk_buff* %63)
  store i32 1, i32* %6, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.name_table* @tipc_name_table(%struct.net*) #1

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.publication* @tipc_nametbl_remove_publ(%struct.net*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_named_withdraw(%struct.net*, %struct.publication*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.publication*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_broadcast(%struct.net*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
