; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_msg = type { i32 }

@MSG_BUNDLER = common dso_local global i32 0, align 4
@MSG_FRAGMENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to build fragment list\0A\00", align 1
@LINK_FAILURE_EVT = common dso_local global i32 0, align 4
@BCAST_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*, %struct.sk_buff**)* @tipc_link_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_link_input(%struct.tipc_link* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2, %struct.sk_buff** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_link*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %8, align 8
  store %struct.sk_buff** %3, %struct.sk_buff*** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %15)
  store %struct.tipc_msg* %16, %struct.tipc_msg** %10, align 8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %18 = call i32 @msg_user(%struct.tipc_msg* %17)
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @MSG_BUNDLER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %4
  %23 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %12)
  %24 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %25 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %30 = call i64 @msg_msgcnt(%struct.tipc_msg* %29)
  %31 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %32 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %30
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %38

38:                                               ; preds = %42, %22
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i64 @tipc_msg_extract(%struct.sk_buff* %39, %struct.sk_buff** %11, i32* %14)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = call i32 @tipc_data_input(%struct.tipc_link* %43, %struct.sk_buff* %44, %struct.sk_buff_head* %12)
  br label %38

46:                                               ; preds = %38
  %47 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %48 = call i32 @tipc_skb_queue_splice_tail(%struct.sk_buff_head* %12, %struct.sk_buff_head* %47)
  store i32 0, i32* %5, align 4
  br label %110

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @MSG_FRAGMENTER, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %55 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %60 = call i64 @tipc_buf_append(%struct.sk_buff** %59, %struct.sk_buff** %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %64 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %71 = call i32 @tipc_data_input(%struct.tipc_link* %68, %struct.sk_buff* %69, %struct.sk_buff_head* %70)
  br label %86

72:                                               ; preds = %53
  %73 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %78 = call i32 @link_is_bc_rcvlink(%struct.tipc_link* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %83 = load i32, i32* @LINK_FAILURE_EVT, align 4
  %84 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %110

85:                                               ; preds = %76, %72
  br label %86

86:                                               ; preds = %85, %62
  store i32 0, i32* %5, align 4
  br label %110

87:                                               ; preds = %49
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @BCAST_PROTOCOL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %93 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @tipc_bcast_lock(i32 %94)
  %96 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %97 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %100 = call i32 @tipc_link_bc_init_rcv(i32 %98, %struct.tipc_msg* %99)
  %101 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %102 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @tipc_bcast_unlock(i32 %103)
  br label %105

105:                                              ; preds = %91, %87
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %86, %80, %46
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i64 @msg_msgcnt(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_msg_extract(%struct.sk_buff*, %struct.sk_buff**, i32*) #1

declare dso_local i32 @tipc_data_input(%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_skb_queue_splice_tail(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i64 @tipc_buf_append(%struct.sk_buff**, %struct.sk_buff**) #1

declare dso_local i32 @link_is_bc_rcvlink(%struct.tipc_link*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @tipc_bcast_lock(i32) #1

declare dso_local i32 @tipc_link_bc_init_rcv(i32, %struct.tipc_msg*) #1

declare dso_local i32 @tipc_bcast_unlock(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
