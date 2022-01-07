; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.h_msg_importance.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.h_msg_importance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }

@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@MSG_FRAGMENTER = common dso_local global i32 0, align 4
@MSG_BUNDLER = common dso_local global i32 0, align 4
@TIPC_SYSTEM_IMPORTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_msg*)* @msg_importance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_importance(%struct.tipc_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.tipc_msg* %0, %struct.tipc_msg** %3, align 8
  %5 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %6 = call i32 @msg_user(%struct.tipc_msg* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %12 = call i32 @msg_errcode(%struct.tipc_msg* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MSG_FRAGMENTER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MSG_BUNDLER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %22
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %32 = call i32 @msg_bits(%struct.tipc_msg* %31, i32 9, i32 0, i32 7)
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @TIPC_SYSTEM_IMPORTANCE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %30, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_bits(%struct.tipc_msg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
