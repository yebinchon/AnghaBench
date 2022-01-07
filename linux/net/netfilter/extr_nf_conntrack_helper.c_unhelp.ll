; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_unhelp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_unhelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }

@IPCT_HELPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*)* @unhelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unhelp(%struct.nf_conn* %0, i8* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nf_conn_help*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %6)
  store %struct.nf_conn_help* %7, %struct.nf_conn_help** %5, align 8
  %8 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %9 = icmp ne %struct.nf_conn_help* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %12 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @rcu_dereference_raw(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load i32, i32* @IPCT_HELPER, align 4
  %19 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %20 = call i32 @nf_conntrack_event(i32 %18, %struct.nf_conn* %19)
  %21 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %22 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @RCU_INIT_POINTER(i32 %23, i32* null)
  br label %25

25:                                               ; preds = %17, %10, %2
  ret i32 0
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i8* @rcu_dereference_raw(i32) #1

declare dso_local i32 @nf_conntrack_event(i32, %struct.nf_conn*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
