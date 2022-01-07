; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_listen_sock_def_readable.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp.c_rds_tcp_listen_sock_def_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rds_tcp_net = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@rds_tcp_netid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rds_tcp_listen_sock_def_readable(%struct.net* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.rds_tcp_net*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @rds_tcp_netid, align 4
  %8 = call %struct.rds_tcp_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.rds_tcp_net* %8, %struct.rds_tcp_net** %4, align 8
  %9 = load %struct.rds_tcp_net*, %struct.rds_tcp_net** %4, align 8
  %10 = getelementptr inbounds %struct.rds_tcp_net, %struct.rds_tcp_net* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = icmp ne %struct.socket* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local %struct.rds_tcp_net* @net_generic(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
