; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_ct_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_ct_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nfnl_ct_hook = type { i64 (%struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.nlattr*, %struct.nf_conn.1*, i32, i32)*, %struct.nf_conn* (i32, i32*)* }
%struct.nlattr = type { i32 }
%struct.nf_conn.0 = type opaque
%struct.nf_conn.1 = type opaque
%struct.nlmsghdr = type { i32 }
%struct.nf_queue_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFQA_CT = common dso_local global i64 0, align 8
@NFQA_EXP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conn* (%struct.nfnl_ct_hook*, %struct.nlmsghdr*, %struct.nlattr**, %struct.nf_queue_entry*, i32*)* @nfqnl_ct_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conn* @nfqnl_ct_parse(%struct.nfnl_ct_hook* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.nf_queue_entry* %3, i32* %4) #0 {
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.nfnl_ct_hook*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nf_queue_entry*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca %struct.TYPE_2__, align 4
  store %struct.nfnl_ct_hook* %0, %struct.nfnl_ct_hook** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nf_queue_entry* %3, %struct.nf_queue_entry** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.nfnl_ct_hook*, %struct.nfnl_ct_hook** %7, align 8
  %15 = getelementptr inbounds %struct.nfnl_ct_hook, %struct.nfnl_ct_hook* %14, i32 0, i32 2
  %16 = load %struct.nf_conn* (i32, i32*)*, %struct.nf_conn* (i32, i32*)** %15, align 8
  %17 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %10, align 8
  %18 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = call %struct.nf_conn* %16(i32 %19, i32* %20)
  store %struct.nf_conn* %21, %struct.nf_conn** %12, align 8
  %22 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %23 = icmp eq %struct.nf_conn* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store %struct.nf_conn* null, %struct.nf_conn** %6, align 8
  br label %66

25:                                               ; preds = %5
  %26 = load %struct.nfnl_ct_hook*, %struct.nfnl_ct_hook** %7, align 8
  %27 = getelementptr inbounds %struct.nfnl_ct_hook, %struct.nfnl_ct_hook* %26, i32 0, i32 0
  %28 = load i64 (%struct.nlattr*, %struct.nf_conn.0*)*, i64 (%struct.nlattr*, %struct.nf_conn.0*)** %27, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %30 = load i64, i64* @NFQA_CT, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %34 = bitcast %struct.nf_conn* %33 to %struct.nf_conn.0*
  %35 = call i64 %28(%struct.nlattr* %32, %struct.nf_conn.0* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store %struct.nf_conn* null, %struct.nf_conn** %6, align 8
  br label %66

38:                                               ; preds = %25
  %39 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %40 = load i64, i64* @NFQA_EXP, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load %struct.nfnl_ct_hook*, %struct.nfnl_ct_hook** %7, align 8
  %46 = getelementptr inbounds %struct.nfnl_ct_hook, %struct.nfnl_ct_hook* %45, i32 0, i32 1
  %47 = load i32 (%struct.nlattr*, %struct.nf_conn.1*, i32, i32)*, i32 (%struct.nlattr*, %struct.nf_conn.1*, i32, i32)** %46, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %49 = load i64, i64* @NFQA_EXP, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %53 = bitcast %struct.nf_conn* %52 to %struct.nf_conn.1*
  %54 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %10, align 8
  %55 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @NETLINK_CB(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %62 = call i32 @nlmsg_report(%struct.nlmsghdr* %61)
  %63 = call i32 %47(%struct.nlattr* %51, %struct.nf_conn.1* %53, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %44, %38
  %65 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  store %struct.nf_conn* %65, %struct.nf_conn** %6, align 8
  br label %66

66:                                               ; preds = %64, %37, %24
  %67 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  ret %struct.nf_conn* %67
}

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
