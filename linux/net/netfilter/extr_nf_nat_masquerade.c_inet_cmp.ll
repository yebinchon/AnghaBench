; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_inet_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_inet_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.in_ifaddr = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.net_device = type { i64 }

@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*)* @inet_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_cmp(%struct.nf_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %10, %struct.in_ifaddr** %6, align 8
  %11 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %12 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @device_cmp(%struct.nf_conn* %16, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %26 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %30, %struct.nf_conntrack_tuple** %8, align 8
  %31 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %32 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %33, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %24, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @device_cmp(%struct.nf_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
