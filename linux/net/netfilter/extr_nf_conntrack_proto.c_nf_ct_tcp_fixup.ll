; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_tcp_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_tcp_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCP_CONNTRACK_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*)* @nf_ct_tcp_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_tcp_fixup(%struct.nf_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %10 = call i64 @nf_ct_l3num(%struct.nf_conn* %9)
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %16 = call i64 @nf_ct_protonum(%struct.nf_conn* %15)
  %17 = load i64, i64* @IPPROTO_TCP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %21 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TCP_CONNTRACK_ESTABLISHED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %29 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %36 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %27, %19, %14
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
