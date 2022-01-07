; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_remove_bc_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_remove_bc_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i8*, i32, i64 }
%struct.sk_buff_head = type { i32 }

@LINK_ESTABLISHED = common dso_local global i8* null, align 8
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bclink removed!\00", align 1
@LINK_RESET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"zero ackers!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_remove_bc_peer(%struct.tipc_link* %0, %struct.tipc_link* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i64, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %8 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %9 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  store i64 %11, i64* %7, align 8
  %12 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %13 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %17 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i8*, i8** @LINK_ESTABLISHED, align 8
  %19 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %20 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %24 = call i32 @tipc_link_bc_ack_rcv(%struct.tipc_link* %21, i64 %22, %struct.sk_buff_head* %23)
  %25 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %26 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %27 = call i32 @trace_tipc_link_reset(%struct.tipc_link* %25, i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %29 = call i32 @tipc_link_reset(%struct.tipc_link* %28)
  %30 = load i8*, i8** @LINK_RESET, align 8
  %31 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %32 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %34 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %3
  %38 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %39 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %40 = call i32 @trace_tipc_link_reset(%struct.tipc_link* %38, i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %42 = call i32 @tipc_link_reset(%struct.tipc_link* %41)
  %43 = load i8*, i8** @LINK_RESET, align 8
  %44 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %45 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %47 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %46)
  br label %48

48:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @tipc_link_bc_ack_rcv(%struct.tipc_link*, i64, %struct.sk_buff_head*) #1

declare dso_local i32 @trace_tipc_link_reset(%struct.tipc_link*, i32, i8*) #1

declare dso_local i32 @tipc_link_reset(%struct.tipc_link*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
