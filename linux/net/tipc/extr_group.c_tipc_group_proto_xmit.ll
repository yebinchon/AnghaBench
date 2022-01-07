; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_proto_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_proto_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i32, i32, i32 }
%struct.tipc_member = type { i64, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type { i32 }

@GROUP_PROTOCOL = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@MBR_ACTIVE = common dso_local global i64 0, align 8
@ADV_ACTIVE = common dso_local global i32 0, align 4
@MBR_JOINED = common dso_local global i64 0, align 8
@MBR_PENDING = common dso_local global i64 0, align 8
@ADV_IDLE = common dso_local global i32 0, align 4
@GRP_JOIN_MSG = common dso_local global i32 0, align 4
@GRP_LEAVE_MSG = common dso_local global i32 0, align 4
@GRP_ADV_MSG = common dso_local global i32 0, align 4
@GRP_ACK_MSG = common dso_local global i32 0, align 4
@GRP_REMIT_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_group*, %struct.tipc_member*, i32, %struct.sk_buff_head*)* @tipc_group_proto_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_group_proto_xmit(%struct.tipc_group* %0, %struct.tipc_member* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.tipc_group*, align 8
  %6 = alloca %struct.tipc_member*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.tipc_group* %0, %struct.tipc_group** %5, align 8
  store %struct.tipc_member* %1, %struct.tipc_member** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @GROUP_PROTOCOL, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @INT_H_SIZE, align 4
  %15 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %16 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tipc_group*, %struct.tipc_group** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tipc_own_addr(i32 %20)
  %22 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %23 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tipc_group*, %struct.tipc_group** %5, align 8
  %26 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sk_buff* @tipc_msg_create(i32 %12, i32 %13, i32 %14, i32 0, i32 %17, i32 %21, i32 %24, i32 %27, i32 0)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  br label %136

32:                                               ; preds = %4
  %33 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %34 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MBR_ACTIVE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @ADV_ACTIVE, align 4
  %40 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %41 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %11, align 4
  br label %63

44:                                               ; preds = %32
  %45 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %46 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MBR_JOINED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %52 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MBR_PENDING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @ADV_IDLE, align 4
  %58 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %59 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %64)
  store %struct.tipc_msg* %65, %struct.tipc_msg** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @GRP_JOIN_MSG, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %71 = load %struct.tipc_group*, %struct.tipc_group** %5, align 8
  %72 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @msg_set_grp_bc_syncpt(%struct.tipc_msg* %70, i32 %73)
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @msg_set_adv_win(%struct.tipc_msg* %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %80 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %130

83:                                               ; preds = %63
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @GRP_LEAVE_MSG, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %89 = load %struct.tipc_group*, %struct.tipc_group** %5, align 8
  %90 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @msg_set_grp_bc_syncpt(%struct.tipc_msg* %88, i32 %91)
  br label %129

93:                                               ; preds = %83
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @GRP_ADV_MSG, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @msg_set_adv_win(%struct.tipc_msg* %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %103 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %128

106:                                              ; preds = %93
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @GRP_ACK_MSG, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %112 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %113 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @msg_set_grp_bc_acked(%struct.tipc_msg* %111, i32 %114)
  br label %127

116:                                              ; preds = %106
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @GRP_REMIT_MSG, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %122 = load %struct.tipc_member*, %struct.tipc_member** %6, align 8
  %123 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @msg_set_grp_remitted(%struct.tipc_msg* %121, i32 %124)
  br label %126

126:                                              ; preds = %120, %116
  br label %127

127:                                              ; preds = %126, %110
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128, %87
  br label %130

130:                                              ; preds = %129, %69
  %131 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %132 = call i32 @msg_set_dest_droppable(%struct.tipc_msg* %131, i32 1)
  %133 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %135 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %133, %struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %130, %31
  ret void
}

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_grp_bc_syncpt(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_adv_win(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_grp_bc_acked(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_grp_remitted(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_dest_droppable(%struct.tipc_msg*, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
