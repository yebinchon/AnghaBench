; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_reset_user_features.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_reset_user_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.datapath = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"Dropping previously announced user features\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.genl_info*)* @ovs_dp_reset_user_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovs_dp_reset_user_features(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.datapath*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sock_net(i32 %8)
  %10 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.datapath* @lookup_datapath(i32 %9, i32 %12, i32 %15)
  store %struct.datapath* %16, %struct.datapath** %5, align 8
  %17 = load %struct.datapath*, %struct.datapath** %5, align 8
  %18 = call i64 @IS_ERR(%struct.datapath* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.datapath*, %struct.datapath** %5, align 8
  %23 = getelementptr inbounds %struct.datapath, %struct.datapath* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @WARN(i64 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.datapath*, %struct.datapath** %5, align 8
  %27 = getelementptr inbounds %struct.datapath, %struct.datapath* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.datapath* @lookup_datapath(i32, i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @IS_ERR(%struct.datapath*) #1

declare dso_local i32 @WARN(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
