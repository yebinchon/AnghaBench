; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.cls_cgroup_head = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_CGROUP_EMATCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)* @cls_cgroup_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_cgroup_dump(%struct.net* %0, %struct.tcf_proto* %1, i8* %2, %struct.sk_buff* %3, %struct.tcmsg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cls_cgroup_head*, align 8
  %15 = alloca %struct.nlattr*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store %struct.tcmsg* %4, %struct.tcmsg** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cls_cgroup_head* @rtnl_dereference(i32 %18)
  store %struct.cls_cgroup_head* %19, %struct.cls_cgroup_head** %14, align 8
  %20 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %21 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %24 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = load i32, i32* @TCA_OPTIONS, align 4
  %27 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %25, i32 %26)
  store %struct.nlattr* %27, %struct.nlattr** %15, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %29 = icmp eq %struct.nlattr* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %59

31:                                               ; preds = %6
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %34 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %33, i32 0, i32 0
  %35 = call i64 @tcf_exts_dump(%struct.sk_buff* %32, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %40 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %39, i32 0, i32 1
  %41 = load i32, i32* @TCA_CGROUP_EMATCHES, align 4
  %42 = call i64 @tcf_em_tree_dump(%struct.sk_buff* %38, i32* %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %31
  br label %59

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %48 = call i32 @nla_nest_end(%struct.sk_buff* %46, %struct.nlattr* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %51 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %50, i32 0, i32 0
  %52 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %49, i32* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  br label %63

59:                                               ; preds = %54, %44, %30
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %62 = call i32 @nla_nest_cancel(%struct.sk_buff* %60, %struct.nlattr* %61)
  store i32 -1, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.cls_cgroup_head* @rtnl_dereference(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*) #1

declare dso_local i64 @tcf_em_tree_dump(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
