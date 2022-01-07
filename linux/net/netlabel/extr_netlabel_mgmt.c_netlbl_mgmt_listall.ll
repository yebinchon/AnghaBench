; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listall.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.netlbl_domhsh_walk_arg = type { i32, %struct.sk_buff*, %struct.netlink_callback* }

@netlbl_mgmt_listall_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @netlbl_mgmt_listall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_mgmt_listall(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.netlbl_domhsh_walk_arg, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %8 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %9 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %19 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %5, i32 0, i32 2
  store %struct.netlink_callback* %18, %struct.netlink_callback** %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %5, i32 0, i32 1
  store %struct.sk_buff* %20, %struct.sk_buff** %21, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @netlbl_mgmt_listall_cb, align 4
  %29 = call i32 @netlbl_domhsh_walk(i8** %6, i8** %7, i32 %28, %struct.netlbl_domhsh_walk_arg* %5)
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %30, i8** %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %37 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %35, i8** %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

declare dso_local i32 @netlbl_domhsh_walk(i8**, i8**, i32, %struct.netlbl_domhsh_walk_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
