; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.rds_transport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_connection* @rds_conn_create(%struct.net* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, %struct.rds_transport* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.rds_transport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %9, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %10, align 8
  store %struct.rds_transport* %3, %struct.rds_transport** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.net*, %struct.net** %8, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %17 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %18 = load %struct.rds_transport*, %struct.rds_transport** %11, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call %struct.rds_connection* @__rds_conn_create(%struct.net* %15, %struct.in6_addr* %16, %struct.in6_addr* %17, %struct.rds_transport* %18, i32 %19, i32 %20, i32 0, i32 %21)
  ret %struct.rds_connection* %22
}

declare dso_local %struct.rds_connection* @__rds_conn_create(%struct.net*, %struct.in6_addr*, %struct.in6_addr*, %struct.rds_transport*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
