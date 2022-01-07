; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_named_publish.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_named_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.publication = type { i64, i32 }
%struct.name_table = type { i32, i32, i32 }
%struct.distr_item = type { i32 }

@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8
@PUBLICATION = common dso_local global i32 0, align 4
@ITEM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Publication distribution failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_named_publish(%struct.net* %0, %struct.publication* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.publication*, align 8
  %6 = alloca %struct.name_table*, align 8
  %7 = alloca %struct.distr_item*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.publication* %1, %struct.publication** %5, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = call %struct.name_table* @tipc_name_table(%struct.net* %9)
  store %struct.name_table* %10, %struct.name_table** %6, align 8
  %11 = load %struct.publication*, %struct.publication** %5, align 8
  %12 = getelementptr inbounds %struct.publication, %struct.publication* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.publication*, %struct.publication** %5, align 8
  %18 = getelementptr inbounds %struct.publication, %struct.publication* %17, i32 0, i32 1
  %19 = load %struct.name_table*, %struct.name_table** %6, align 8
  %20 = getelementptr inbounds %struct.name_table, %struct.name_table* %19, i32 0, i32 2
  %21 = call i32 @list_add_tail_rcu(i32* %18, i32* %20)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.name_table*, %struct.name_table** %6, align 8
  %24 = getelementptr inbounds %struct.name_table, %struct.name_table* %23, i32 0, i32 0
  %25 = call i32 @write_lock_bh(i32* %24)
  %26 = load %struct.publication*, %struct.publication** %5, align 8
  %27 = getelementptr inbounds %struct.publication, %struct.publication* %26, i32 0, i32 1
  %28 = load %struct.name_table*, %struct.name_table** %6, align 8
  %29 = getelementptr inbounds %struct.name_table, %struct.name_table* %28, i32 0, i32 1
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.name_table*, %struct.name_table** %6, align 8
  %32 = getelementptr inbounds %struct.name_table, %struct.name_table* %31, i32 0, i32 0
  %33 = call i32 @write_unlock_bh(i32* %32)
  %34 = load %struct.net*, %struct.net** %4, align 8
  %35 = load i32, i32* @PUBLICATION, align 4
  %36 = load i32, i32* @ITEM_SIZE, align 4
  %37 = call %struct.sk_buff* @named_prepare_buf(%struct.net* %34, i32 %35, i32 %36, i32 0)
  store %struct.sk_buff* %37, %struct.sk_buff** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %22
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %51

42:                                               ; preds = %22
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call i32 @buf_msg(%struct.sk_buff* %43)
  %45 = call i64 @msg_data(i32 %44)
  %46 = inttoptr i64 %45 to %struct.distr_item*
  store %struct.distr_item* %46, %struct.distr_item** %7, align 8
  %47 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %48 = load %struct.publication*, %struct.publication** %5, align 8
  %49 = call i32 @publ_to_item(%struct.distr_item* %47, %struct.publication* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %3, align 8
  br label %51

51:                                               ; preds = %42, %40, %16
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %52
}

declare dso_local %struct.name_table* @tipc_name_table(%struct.net*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @named_prepare_buf(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @msg_data(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @publ_to_item(%struct.distr_item*, %struct.publication*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
