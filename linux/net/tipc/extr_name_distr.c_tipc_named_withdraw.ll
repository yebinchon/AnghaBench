; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_named_withdraw.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_named_withdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.publication = type { i64, i32 }
%struct.name_table = type { i32 }
%struct.distr_item = type { i32 }

@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8
@WITHDRAWAL = common dso_local global i32 0, align 4
@ITEM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Withdrawal distribution failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_named_withdraw(%struct.net* %0, %struct.publication* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.publication*, align 8
  %6 = alloca %struct.name_table*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.distr_item*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.publication* %1, %struct.publication** %5, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = call %struct.name_table* @tipc_name_table(%struct.net* %9)
  store %struct.name_table* %10, %struct.name_table** %6, align 8
  %11 = load %struct.name_table*, %struct.name_table** %6, align 8
  %12 = getelementptr inbounds %struct.name_table, %struct.name_table* %11, i32 0, i32 0
  %13 = call i32 @write_lock_bh(i32* %12)
  %14 = load %struct.publication*, %struct.publication** %5, align 8
  %15 = getelementptr inbounds %struct.publication, %struct.publication* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.name_table*, %struct.name_table** %6, align 8
  %18 = getelementptr inbounds %struct.name_table, %struct.name_table* %17, i32 0, i32 0
  %19 = call i32 @write_unlock_bh(i32* %18)
  %20 = load %struct.publication*, %struct.publication** %5, align 8
  %21 = getelementptr inbounds %struct.publication, %struct.publication* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.net*, %struct.net** %4, align 8
  %28 = load i32, i32* @WITHDRAWAL, align 4
  %29 = load i32, i32* @ITEM_SIZE, align 4
  %30 = call %struct.sk_buff* @named_prepare_buf(%struct.net* %27, i32 %28, i32 %29, i32 0)
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @buf_msg(%struct.sk_buff* %36)
  %38 = call i64 @msg_data(i32 %37)
  %39 = inttoptr i64 %38 to %struct.distr_item*
  store %struct.distr_item* %39, %struct.distr_item** %8, align 8
  %40 = load %struct.distr_item*, %struct.distr_item** %8, align 8
  %41 = load %struct.publication*, %struct.publication** %5, align 8
  %42 = call i32 @publ_to_item(%struct.distr_item* %40, %struct.publication* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  br label %44

44:                                               ; preds = %35, %33, %25
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %45
}

declare dso_local %struct.name_table* @tipc_name_table(%struct.net*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

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
