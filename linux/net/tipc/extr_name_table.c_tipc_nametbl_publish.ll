; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_publish.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nametbl_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.publication = type { i32 }
%struct.net = type { i32 }
%struct.name_table = type { i64 }
%struct.tipc_net = type { i32 }
%struct.sk_buff = type { i32 }

@TIPC_MAX_PUBL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Bind failed, max limit %u reached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.publication* @tipc_nametbl_publish(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.name_table*, align 8
  %16 = alloca %struct.tipc_net*, align 8
  %17 = alloca %struct.publication*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.net*, %struct.net** %8, align 8
  %20 = call %struct.name_table* @tipc_name_table(%struct.net* %19)
  store %struct.name_table* %20, %struct.name_table** %15, align 8
  %21 = load %struct.net*, %struct.net** %8, align 8
  %22 = call %struct.tipc_net* @tipc_net(%struct.net* %21)
  store %struct.tipc_net* %22, %struct.tipc_net** %16, align 8
  store %struct.publication* null, %struct.publication** %17, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %18, align 8
  %23 = load %struct.tipc_net*, %struct.tipc_net** %16, align 8
  %24 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.name_table*, %struct.name_table** %15, align 8
  %27 = getelementptr inbounds %struct.name_table, %struct.name_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TIPC_MAX_PUBL, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i64, i64* @TIPC_MAX_PUBL, align 8
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %56

34:                                               ; preds = %7
  %35 = load %struct.net*, %struct.net** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.net*, %struct.net** %8, align 8
  %41 = call i32 @tipc_own_addr(%struct.net* %40)
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call %struct.publication* @tipc_nametbl_insert_publ(%struct.net* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %41, i32 %42, i32 %43)
  store %struct.publication* %44, %struct.publication** %17, align 8
  %45 = load %struct.publication*, %struct.publication** %17, align 8
  %46 = icmp ne %struct.publication* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load %struct.name_table*, %struct.name_table** %15, align 8
  %49 = getelementptr inbounds %struct.name_table, %struct.name_table* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.net*, %struct.net** %8, align 8
  %53 = load %struct.publication*, %struct.publication** %17, align 8
  %54 = call %struct.sk_buff* @tipc_named_publish(%struct.net* %52, %struct.publication* %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %18, align 8
  br label %55

55:                                               ; preds = %47, %34
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.tipc_net*, %struct.tipc_net** %16, align 8
  %58 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.net*, %struct.net** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %65 = call i32 @tipc_node_broadcast(%struct.net* %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.publication*, %struct.publication** %17, align 8
  ret %struct.publication* %67
}

declare dso_local %struct.name_table* @tipc_name_table(%struct.net*) #1

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local %struct.publication* @tipc_nametbl_insert_publ(%struct.net*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local %struct.sk_buff* @tipc_named_publish(%struct.net*, %struct.publication*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_broadcast(%struct.net*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
