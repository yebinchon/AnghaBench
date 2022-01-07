; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel_mgr.c_flowlabel_put.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel_mgr.c_flowlabel_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_flowlabel_req = type { i32, i32 }

@IPV6_FL_A_PUT = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @flowlabel_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flowlabel_put(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_flowlabel_req, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @htonl(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.in6_flowlabel_req, %struct.in6_flowlabel_req* %5, i32 0, i32 1
  %10 = load i32, i32* @IPV6_FL_A_PUT, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SOL_IPV6, align 4
  %13 = load i32, i32* @IPV6_FLOWLABEL_MGR, align 4
  %14 = call i32 @setsockopt(i32 %11, i32 %12, i32 %13, %struct.in6_flowlabel_req* %5, i32 8)
  ret i32 %14
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.in6_flowlabel_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
