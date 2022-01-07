; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_leave.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { %struct.tipc_group*, i32 }
%struct.tipc_group = type { i32 }
%struct.net = type { i32 }
%struct.tipc_name_seq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_sock*)* @tipc_sk_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_leave(%struct.tipc_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tipc_group*, align 8
  %6 = alloca %struct.tipc_name_seq, align 4
  %7 = alloca i32, align 4
  store %struct.tipc_sock* %0, %struct.tipc_sock** %3, align 8
  %8 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %9 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %8, i32 0, i32 1
  %10 = call %struct.net* @sock_net(i32* %9)
  store %struct.net* %10, %struct.net** %4, align 8
  %11 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %12 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %11, i32 0, i32 0
  %13 = load %struct.tipc_group*, %struct.tipc_group** %12, align 8
  store %struct.tipc_group* %13, %struct.tipc_group** %5, align 8
  %14 = load %struct.tipc_group*, %struct.tipc_group** %5, align 8
  %15 = icmp ne %struct.tipc_group* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.tipc_group*, %struct.tipc_group** %5, align 8
  %21 = call i32 @tipc_group_self(%struct.tipc_group* %20, %struct.tipc_name_seq* %6, i32* %7)
  %22 = load %struct.net*, %struct.net** %4, align 8
  %23 = load %struct.tipc_group*, %struct.tipc_group** %5, align 8
  %24 = call i32 @tipc_group_delete(%struct.net* %22, %struct.tipc_group* %23)
  %25 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %26 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %25, i32 0, i32 0
  store %struct.tipc_group* null, %struct.tipc_group** %26, align 8
  %27 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @tipc_sk_withdraw(%struct.tipc_sock* %27, i32 %28, %struct.tipc_name_seq* %6)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.net* @sock_net(i32*) #1

declare dso_local i32 @tipc_group_self(%struct.tipc_group*, %struct.tipc_name_seq*, i32*) #1

declare dso_local i32 @tipc_group_delete(%struct.net*, %struct.tipc_group*) #1

declare dso_local i32 @tipc_sk_withdraw(%struct.tipc_sock*, i32, %struct.tipc_name_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
