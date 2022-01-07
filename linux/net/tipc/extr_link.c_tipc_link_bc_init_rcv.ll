; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_init_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_init_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i8*, i32 }
%struct.tipc_msg = type { i32 }

@BCAST_PROTOCOL = common dso_local global i64 0, align 8
@LINK_ESTABLISHED = common dso_local global i32 0, align 4
@TIPC_BCAST_SYNCH = common dso_local global i32 0, align 4
@RESET_MSG = common dso_local global i32 0, align 4
@ACTIVATE_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_bc_init_rcv(%struct.tipc_link* %0, %struct.tipc_msg* %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca %struct.tipc_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %3, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %4, align 8
  %7 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %8 = call i32 @msg_type(%struct.tipc_msg* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %10 = call i8* @msg_bc_snd_nxt(%struct.tipc_msg* %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %12 = call i64 @link_is_up(%struct.tipc_link* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %17 = call i64 @msg_user(%struct.tipc_msg* %16)
  %18 = load i64, i64* @BCAST_PROTOCOL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %23 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @LINK_ESTABLISHED, align 4
  %25 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %26 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  br label %52

27:                                               ; preds = %15
  %28 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %29 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TIPC_BCAST_SYNCH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %37 = call i64 @msg_peer_node_is_up(%struct.tipc_msg* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %52

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RESET_MSG, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ACTIVATE_MSG, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %40
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %51 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %14, %20, %34, %39, %48, %44
  ret void
}

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i8* @msg_bc_snd_nxt(%struct.tipc_msg*) #1

declare dso_local i64 @link_is_up(%struct.tipc_link*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_peer_node_is_up(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
