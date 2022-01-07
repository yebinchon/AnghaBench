; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_node_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_node_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i32 }
%struct.tcf_dump_args = type { %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@RTM_NEWTFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i8*, %struct.tcf_walker*)* @tcf_node_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_node_dump(%struct.tcf_proto* %0, i8* %1, %struct.tcf_walker* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcf_walker*, align 8
  %7 = alloca %struct.tcf_dump_args*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.tcf_walker* %2, %struct.tcf_walker** %6, align 8
  %10 = load %struct.tcf_walker*, %struct.tcf_walker** %6, align 8
  %11 = bitcast %struct.tcf_walker* %10 to i8*
  %12 = bitcast i8* %11 to %struct.tcf_dump_args*
  store %struct.tcf_dump_args* %12, %struct.tcf_dump_args** %7, align 8
  %13 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %14 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %13, i32 0, i32 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %8, align 8
  %19 = load %struct.net*, %struct.net** %8, align 8
  %20 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %21 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %20, i32 0, i32 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %24 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %28 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %31 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %35 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @NETLINK_CB(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tcf_dump_args*, %struct.tcf_dump_args** %7, align 8
  %44 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NLM_F_MULTI, align 4
  %51 = load i32, i32* @RTM_NEWTFILTER, align 4
  %52 = call i32 @tcf_fill_node(%struct.net* %19, %struct.TYPE_7__* %22, %struct.tcf_proto* %23, i32 %26, i32 %29, i32 %32, i8* %33, i32 %42, i32 %49, i32 %50, i32 %51, i32 1)
  ret i32 %52
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @tcf_fill_node(%struct.net*, %struct.TYPE_7__*, %struct.tcf_proto*, i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
