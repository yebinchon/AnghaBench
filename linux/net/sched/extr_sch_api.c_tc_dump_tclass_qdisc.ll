; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_dump_tclass_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_dump_tclass_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.Qdisc*, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i64 }
%struct.netlink_callback = type { i64* }
%struct.qdisc_dump_args = type { %struct.TYPE_6__, %struct.netlink_callback*, %struct.sk_buff* }

@qdisc_class_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*, %struct.tcmsg*, %struct.netlink_callback*, i32*, i32)* @tc_dump_tclass_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dump_tclass_qdisc(%struct.Qdisc* %0, %struct.sk_buff* %1, %struct.tcmsg* %2, %struct.netlink_callback* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tcmsg*, align 8
  %11 = alloca %struct.netlink_callback*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qdisc_dump_args, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.tcmsg* %2, %struct.tcmsg** %10, align 8
  store %struct.netlink_callback* %3, %struct.netlink_callback** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %16 = call i64 @tc_qdisc_dump_ignore(%struct.Qdisc* %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %44, label %23

23:                                               ; preds = %18
  %24 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.tcmsg*, %struct.tcmsg** %10, align 8
  %32 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.tcmsg*, %struct.tcmsg** %10, align 8
  %37 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @TC_H_MAJ(i64 %38)
  %40 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %41 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35, %23, %18, %6
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %7, align 4
  br label %104

48:                                               ; preds = %35, %30
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.netlink_callback*, %struct.netlink_callback** %11, align 8
  %55 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = call i32 @memset(i64* %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* @qdisc_class_dump, align 4
  %61 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 2
  store %struct.sk_buff* %63, %struct.sk_buff** %64, align 8
  %65 = load %struct.netlink_callback*, %struct.netlink_callback** %11, align 8
  %66 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 1
  store %struct.netlink_callback* %65, %struct.netlink_callback** %66, align 8
  %67 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.netlink_callback*, %struct.netlink_callback** %11, align 8
  %70 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %79 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (%struct.Qdisc*, %struct.TYPE_6__*)*, i32 (%struct.Qdisc*, %struct.TYPE_6__*)** %83, align 8
  %85 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %86 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 0
  %87 = call i32 %84(%struct.Qdisc* %85, %struct.TYPE_6__* %86)
  %88 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.netlink_callback*, %struct.netlink_callback** %11, align 8
  %92 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  store i64 %90, i64* %94, align 8
  %95 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %14, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %59
  store i32 -1, i32* %7, align 4
  br label %104

100:                                              ; preds = %59
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %100, %99, %44
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i64 @tc_qdisc_dump_ignore(%struct.Qdisc*, i32) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
