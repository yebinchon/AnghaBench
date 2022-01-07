; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_delete_empty.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_delete_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, %struct.tcf_proto* }
%struct.tcf_proto = type { i32, %struct.tcf_proto* }
%struct.netlink_ext_ack = type { i32 }
%struct.tcf_chain_info = type { %struct.tcf_proto**, %struct.tcf_proto* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_chain*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* @tcf_chain_tp_delete_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_chain_tp_delete_empty(%struct.tcf_chain* %0, %struct.tcf_proto* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.tcf_chain*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.tcf_chain_info, align 8
  %10 = alloca %struct.tcf_proto*, align 8
  %11 = alloca %struct.tcf_proto**, align 8
  %12 = alloca %struct.tcf_proto*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %13 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %14 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %17 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %16, i32 0, i32 1
  store %struct.tcf_proto** %17, %struct.tcf_proto*** %11, align 8
  br label %18

18:                                               ; preds = %40, %4
  %19 = load %struct.tcf_proto**, %struct.tcf_proto*** %11, align 8
  %20 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %21 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %22 = call %struct.tcf_proto* @tcf_chain_dereference(%struct.tcf_proto* %20, %struct.tcf_chain* %21)
  store %struct.tcf_proto* %22, %struct.tcf_proto** %10, align 8
  %23 = icmp ne %struct.tcf_proto* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %27 = icmp eq %struct.tcf_proto* %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.tcf_proto**, %struct.tcf_proto*** %11, align 8
  %30 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %9, i32 0, i32 0
  store %struct.tcf_proto** %29, %struct.tcf_proto*** %30, align 8
  %31 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %32 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %31, i32 0, i32 1
  %33 = load %struct.tcf_proto*, %struct.tcf_proto** %32, align 8
  %34 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %9, i32 0, i32 1
  store %struct.tcf_proto* %33, %struct.tcf_proto** %34, align 8
  %35 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %36 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @WARN_ON(i32 %37)
  br label %43

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %42 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %41, i32 0, i32 1
  store %struct.tcf_proto** %42, %struct.tcf_proto*** %11, align 8
  br label %18

43:                                               ; preds = %28, %18
  %44 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %45 = icmp ne %struct.tcf_proto* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @tcf_proto_check_delete(%struct.tcf_proto* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %53 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %85

55:                                               ; preds = %46
  %56 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %57 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %58 = call i32 @tcf_proto_signal_destroying(%struct.tcf_chain* %56, %struct.tcf_proto* %57)
  %59 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %9, i32 0, i32 1
  %60 = load %struct.tcf_proto*, %struct.tcf_proto** %59, align 8
  %61 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %62 = call %struct.tcf_proto* @tcf_chain_dereference(%struct.tcf_proto* %60, %struct.tcf_chain* %61)
  store %struct.tcf_proto* %62, %struct.tcf_proto** %12, align 8
  %63 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %64 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %65 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %64, i32 0, i32 1
  %66 = load %struct.tcf_proto*, %struct.tcf_proto** %65, align 8
  %67 = icmp eq %struct.tcf_proto* %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %70 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %71 = call i32 @tcf_chain0_head_change(%struct.tcf_chain* %69, %struct.tcf_proto* %70)
  br label %72

72:                                               ; preds = %68, %55
  %73 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %9, i32 0, i32 0
  %74 = load %struct.tcf_proto**, %struct.tcf_proto*** %73, align 8
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %74, align 8
  %76 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %77 = call i32 @RCU_INIT_POINTER(%struct.tcf_proto* %75, %struct.tcf_proto* %76)
  %78 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %79 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %84 = call i32 @tcf_proto_put(%struct.tcf_proto* %81, i32 %82, %struct.netlink_ext_ack* %83)
  br label %85

85:                                               ; preds = %72, %51
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_dereference(%struct.tcf_proto*, %struct.tcf_chain*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tcf_proto_check_delete(%struct.tcf_proto*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tcf_proto_signal_destroying(%struct.tcf_chain*, %struct.tcf_proto*) #1

declare dso_local i32 @tcf_chain0_head_change(%struct.tcf_chain*, %struct.tcf_proto*) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.tcf_proto*, %struct.tcf_proto*) #1

declare dso_local i32 @tcf_proto_put(%struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
