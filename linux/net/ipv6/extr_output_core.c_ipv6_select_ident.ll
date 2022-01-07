; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_output_core.c_ipv6_select_ident.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_output_core.c_ipv6_select_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_select_ident(%struct.net* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %10 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %11 = call i32 @__ipv6_select_ident(%struct.net* %8, %struct.in6_addr* %9, %struct.in6_addr* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @htonl(i32 %12)
  ret i32 %13
}

declare dso_local i32 @__ipv6_select_ident(%struct.net*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
