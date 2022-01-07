; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c___tcp_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c___tcp_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_splice_state = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tcp_splice_state* }

@tcp_splice_data_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tcp_splice_state*)* @__tcp_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcp_splice_read(%struct.sock* %0, %struct.tcp_splice_state* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_splice_state*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tcp_splice_state* %1, %struct.tcp_splice_state** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.tcp_splice_state*, %struct.tcp_splice_state** %4, align 8
  %8 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.tcp_splice_state*, %struct.tcp_splice_state** %4, align 8
  store %struct.tcp_splice_state* %12, %struct.tcp_splice_state** %11, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = load i32, i32* @tcp_splice_data_recv, align 4
  %15 = call i32 @tcp_read_sock(%struct.sock* %13, %struct.TYPE_5__* %5, i32 %14)
  ret i32 %15
}

declare dso_local i32 @tcp_read_sock(%struct.sock*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
