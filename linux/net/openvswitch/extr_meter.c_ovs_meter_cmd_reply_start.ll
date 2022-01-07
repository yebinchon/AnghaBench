; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_reply_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_reply_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.ovs_header* }
%struct.ovs_header = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dp_meter_genl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.genl_info*, i32, %struct.ovs_header**)* @ovs_meter_cmd_reply_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ovs_meter_cmd_reply_start(%struct.genl_info* %0, i32 %1, %struct.ovs_header** %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ovs_header**, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ovs_header*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ovs_header** %2, %struct.ovs_header*** %7, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 2
  %12 = load %struct.ovs_header*, %struct.ovs_header** %11, align 8
  store %struct.ovs_header* %12, %struct.ovs_header** %9, align 8
  %13 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @nlmsg_new(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %23, i32 %26, i32 %29, i32* @dp_meter_genl_family, i32 0, i32 %30)
  %32 = load %struct.ovs_header**, %struct.ovs_header*** %7, align 8
  store %struct.ovs_header* %31, %struct.ovs_header** %32, align 8
  %33 = load %struct.ovs_header**, %struct.ovs_header*** %7, align 8
  %34 = load %struct.ovs_header*, %struct.ovs_header** %33, align 8
  %35 = icmp ne %struct.ovs_header* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %22
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call i32 @nlmsg_free(%struct.sk_buff* %37)
  %39 = load i32, i32* @EMSGSIZE, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.sk_buff* @ERR_PTR(i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %4, align 8
  br label %50

42:                                               ; preds = %22
  %43 = load %struct.ovs_header*, %struct.ovs_header** %9, align 8
  %44 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ovs_header**, %struct.ovs_header*** %7, align 8
  %47 = load %struct.ovs_header*, %struct.ovs_header** %46, align 8
  %48 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %4, align 8
  br label %50

50:                                               ; preds = %42, %36, %18
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %51
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
