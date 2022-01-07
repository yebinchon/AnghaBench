; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.cls_bpf_prog = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.cls_bpf_prog*, %struct.cls_bpf_prog*, %struct.netlink_ext_ack*)* @cls_bpf_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_bpf_offload(%struct.tcf_proto* %0, %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.cls_bpf_prog*, align 8
  %8 = alloca %struct.cls_bpf_prog*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog** %7, align 8
  store %struct.cls_bpf_prog* %2, %struct.cls_bpf_prog** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %10 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %11 = icmp ne %struct.cls_bpf_prog* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %14 = icmp ne %struct.cls_bpf_prog* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %17 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @cls_bpf_flags(i32 %18)
  %20 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %21 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @cls_bpf_flags(i32 %22)
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %61

28:                                               ; preds = %15, %12, %4
  %29 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %30 = icmp ne %struct.cls_bpf_prog* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %33 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @tc_skip_hw(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.cls_bpf_prog* null, %struct.cls_bpf_prog** %7, align 8
  br label %38

38:                                               ; preds = %37, %31, %28
  %39 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %40 = icmp ne %struct.cls_bpf_prog* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %43 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @tc_skip_hw(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store %struct.cls_bpf_prog* null, %struct.cls_bpf_prog** %8, align 8
  br label %48

48:                                               ; preds = %47, %41, %38
  %49 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %50 = icmp ne %struct.cls_bpf_prog* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %53 = icmp ne %struct.cls_bpf_prog* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %61

55:                                               ; preds = %51, %48
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %57 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %58 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %60 = call i32 @cls_bpf_offload_cmd(%struct.tcf_proto* %56, %struct.cls_bpf_prog* %57, %struct.cls_bpf_prog* %58, %struct.netlink_ext_ack* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %54, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @cls_bpf_flags(i32) #1

declare dso_local i64 @tc_skip_hw(i32) #1

declare dso_local i32 @cls_bpf_offload_cmd(%struct.tcf_proto*, %struct.cls_bpf_prog*, %struct.cls_bpf_prog*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
