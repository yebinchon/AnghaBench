; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_state_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_state_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@TIPC_LINK_SND_STATE = common dso_local global i32 0, align 4
@STATE_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_build_state_msg(%struct.tipc_link* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  %6 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %7 = icmp ne %struct.tipc_link* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

9:                                                ; preds = %2
  %10 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %11 = call i64 @link_is_bc_rcvlink(%struct.tipc_link* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %18 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @tipc_own_addr(i32 %19)
  %21 = xor i32 %16, %20
  %22 = and i32 %21, 15
  %23 = icmp ne i32 %22, 15
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %46

25:                                               ; preds = %13
  %26 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %27 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %29 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %32 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @TIPC_LINK_SND_STATE, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %9
  %35 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %36 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %38 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %43 = load i32, i32* @STATE_MSG, align 4
  %44 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %45 = call i32 @tipc_link_build_proto_msg(%struct.tipc_link* %42, i32 %43, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.sk_buff_head* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %34, %25, %24, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @link_is_bc_rcvlink(%struct.tipc_link*) #1

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local i32 @tipc_link_build_proto_msg(%struct.tipc_link*, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
