; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel_mgr.c_flowlabel_get.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel_mgr.c_flowlabel_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_flowlabel_req = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@IPV6_FL_A_GET = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @flowlabel_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flowlabel_get(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_flowlabel_req, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_2__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %9, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %9, i32 0, i32 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %9, i32 0, i32 3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @htonl(i32 %17)
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %9, i32 0, i32 4
  %20 = load i32, i32* @IPV6_FL_A_GET, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 253, i32* %24, align 4
  %25 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 15
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SOL_IPV6, align 4
  %31 = load i32, i32* @IPV6_FLOWLABEL_MGR, align 4
  %32 = call i32 @setsockopt(i32 %29, i32 %30, i32 %31, %struct.in6_flowlabel_req* %9, i32 24)
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.in6_flowlabel_req*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
