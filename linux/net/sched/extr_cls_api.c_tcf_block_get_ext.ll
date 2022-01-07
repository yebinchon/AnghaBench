; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_get_ext.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_get_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.tcf_block_ext_info = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_block_get_ext(%struct.tcf_block** %0, %struct.Qdisc* %1, %struct.tcf_block_ext_info* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_block**, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.tcf_block_ext_info*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tcf_block*, align 8
  %12 = alloca i32, align 4
  store %struct.tcf_block** %0, %struct.tcf_block*** %6, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %7, align 8
  store %struct.tcf_block_ext_info* %2, %struct.tcf_block_ext_info** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %14 = call %struct.net* @qdisc_net(%struct.Qdisc* %13)
  store %struct.net* %14, %struct.net** %10, align 8
  store %struct.tcf_block* null, %struct.tcf_block** %11, align 8
  %15 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %16 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.net*, %struct.net** %10, align 8
  %21 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %22 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.tcf_block* @tcf_block_refcnt_get(%struct.net* %20, i32 %23)
  store %struct.tcf_block* %24, %struct.tcf_block** %11, align 8
  br label %25

25:                                               ; preds = %19, %4
  %26 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %27 = icmp ne %struct.tcf_block* %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %25
  %29 = load %struct.net*, %struct.net** %10, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %31 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %32 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %35 = call %struct.tcf_block* @tcf_block_create(%struct.net* %29, %struct.Qdisc* %30, i32 %33, %struct.netlink_ext_ack* %34)
  store %struct.tcf_block* %35, %struct.tcf_block** %11, align 8
  %36 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %37 = call i64 @IS_ERR(%struct.tcf_block* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %41 = call i32 @PTR_ERR(%struct.tcf_block* %40)
  store i32 %41, i32* %5, align 4
  br label %108

42:                                               ; preds = %28
  %43 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %44 = call i64 @tcf_block_shared(%struct.tcf_block* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %48 = load %struct.net*, %struct.net** %10, align 8
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %50 = call i32 @tcf_block_insert(%struct.tcf_block* %47, %struct.net* %48, %struct.netlink_ext_ack* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %104

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %58 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %59 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %60 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tcf_block_owner_add(%struct.tcf_block* %57, %struct.Qdisc* %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %103

66:                                               ; preds = %56
  %67 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %68 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %69 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %70 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tcf_block_owner_netif_keep_dst(%struct.tcf_block* %67, %struct.Qdisc* %68, i32 %71)
  %73 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %74 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %76 = call i32 @tcf_chain0_head_change_cb_add(%struct.tcf_block* %73, %struct.tcf_block_ext_info* %74, %struct.netlink_ext_ack* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %96

80:                                               ; preds = %66
  %81 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %82 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %83 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %85 = call i32 @tcf_block_offload_bind(%struct.tcf_block* %81, %struct.Qdisc* %82, %struct.tcf_block_ext_info* %83, %struct.netlink_ext_ack* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %92

89:                                               ; preds = %80
  %90 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %91 = load %struct.tcf_block**, %struct.tcf_block*** %6, align 8
  store %struct.tcf_block* %90, %struct.tcf_block** %91, align 8
  store i32 0, i32* %5, align 4
  br label %108

92:                                               ; preds = %88
  %93 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %94 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %95 = call i32 @tcf_chain0_head_change_cb_del(%struct.tcf_block* %93, %struct.tcf_block_ext_info* %94)
  br label %96

96:                                               ; preds = %92, %79
  %97 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %98 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %99 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %100 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @tcf_block_owner_del(%struct.tcf_block* %97, %struct.Qdisc* %98, i32 %101)
  br label %103

103:                                              ; preds = %96, %65
  br label %104

104:                                              ; preds = %103, %53
  %105 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %106 = call i32 @tcf_block_refcnt_put(%struct.tcf_block* %105, i32 1)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %89, %39
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.net* @qdisc_net(%struct.Qdisc*) #1

declare dso_local %struct.tcf_block* @tcf_block_refcnt_get(%struct.net*, i32) #1

declare dso_local %struct.tcf_block* @tcf_block_create(%struct.net*, %struct.Qdisc*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.tcf_block*) #1

declare dso_local i32 @PTR_ERR(%struct.tcf_block*) #1

declare dso_local i64 @tcf_block_shared(%struct.tcf_block*) #1

declare dso_local i32 @tcf_block_insert(%struct.tcf_block*, %struct.net*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_block_owner_add(%struct.tcf_block*, %struct.Qdisc*, i32) #1

declare dso_local i32 @tcf_block_owner_netif_keep_dst(%struct.tcf_block*, %struct.Qdisc*, i32) #1

declare dso_local i32 @tcf_chain0_head_change_cb_add(%struct.tcf_block*, %struct.tcf_block_ext_info*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_block_offload_bind(%struct.tcf_block*, %struct.Qdisc*, %struct.tcf_block_ext_info*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_chain0_head_change_cb_del(%struct.tcf_block*, %struct.tcf_block_ext_info*) #1

declare dso_local i32 @tcf_block_owner_del(%struct.tcf_block*, %struct.Qdisc*, i32) #1

declare dso_local i32 @tcf_block_refcnt_put(%struct.tcf_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
