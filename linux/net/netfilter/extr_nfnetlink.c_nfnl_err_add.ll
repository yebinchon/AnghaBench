; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink.c_nfnl_err_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink.c_nfnl_err_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfnl_err = type { i32, i32, %struct.netlink_ext_ack, %struct.nlmsghdr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.nlmsghdr*, i32, %struct.netlink_ext_ack*)* @nfnl_err_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_err_add(%struct.list_head* %0, %struct.nlmsghdr* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfnl_err*, align 8
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nfnl_err* @kmalloc(i32 24, i32 %11)
  store %struct.nfnl_err* %12, %struct.nfnl_err** %10, align 8
  %13 = load %struct.nfnl_err*, %struct.nfnl_err** %10, align 8
  %14 = icmp eq %struct.nfnl_err* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %34

18:                                               ; preds = %4
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %20 = load %struct.nfnl_err*, %struct.nfnl_err** %10, align 8
  %21 = getelementptr inbounds %struct.nfnl_err, %struct.nfnl_err* %20, i32 0, i32 3
  store %struct.nlmsghdr* %19, %struct.nlmsghdr** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.nfnl_err*, %struct.nfnl_err** %10, align 8
  %24 = getelementptr inbounds %struct.nfnl_err, %struct.nfnl_err* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nfnl_err*, %struct.nfnl_err** %10, align 8
  %26 = getelementptr inbounds %struct.nfnl_err, %struct.nfnl_err* %25, i32 0, i32 2
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %28 = bitcast %struct.netlink_ext_ack* %26 to i8*
  %29 = bitcast %struct.netlink_ext_ack* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.nfnl_err*, %struct.nfnl_err** %10, align 8
  %31 = getelementptr inbounds %struct.nfnl_err, %struct.nfnl_err* %30, i32 0, i32 1
  %32 = load %struct.list_head*, %struct.list_head** %6, align 8
  %33 = call i32 @list_add_tail(i32* %31, %struct.list_head* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.nfnl_err* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
