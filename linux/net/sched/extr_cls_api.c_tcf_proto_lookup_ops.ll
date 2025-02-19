; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_lookup_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_lookup_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto_ops = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"TC classifier not found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_proto_ops* (i8*, i32, %struct.netlink_ext_ack*)* @tcf_proto_lookup_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_proto_ops* @tcf_proto_lookup_ops(i8* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.tcf_proto_ops*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.tcf_proto_ops* @__tcf_proto_lookup_ops(i8* %9)
  store %struct.tcf_proto_ops* %10, %struct.tcf_proto_ops** %8, align 8
  %11 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %8, align 8
  %12 = icmp ne %struct.tcf_proto_ops* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %8, align 8
  store %struct.tcf_proto_ops* %14, %struct.tcf_proto_ops** %4, align 8
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %17 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.tcf_proto_ops* @ERR_PTR(i32 %19)
  store %struct.tcf_proto_ops* %20, %struct.tcf_proto_ops** %4, align 8
  br label %21

21:                                               ; preds = %15, %13
  %22 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %4, align 8
  ret %struct.tcf_proto_ops* %22
}

declare dso_local %struct.tcf_proto_ops* @__tcf_proto_lookup_ops(i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.tcf_proto_ops* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
