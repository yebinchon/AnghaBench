; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.h_msg_set_importance.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.h_msg_set_importance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }

@MSG_FRAGMENTER = common dso_local global i32 0, align 4
@MSG_BUNDLER = common dso_local global i32 0, align 4
@TIPC_SYSTEM_IMPORTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Trying to set illegal importance in message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_msg*, i64)* @msg_set_importance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_set_importance(%struct.tipc_msg* %0, i64 %1) #0 {
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tipc_msg* %0, %struct.tipc_msg** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %7 = call i32 @msg_user(%struct.tipc_msg* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MSG_FRAGMENTER, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MSG_BUNDLER, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @msg_set_bits(%struct.tipc_msg* %21, i32 9, i32 0, i32 7, i64 %22)
  br label %35

24:                                               ; preds = %15
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @TIPC_SYSTEM_IMPORTANCE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @msg_set_user(%struct.tipc_msg* %29, i64 %30)
  br label %34

32:                                               ; preds = %24
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %20
  ret void
}

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_set_bits(%struct.tipc_msg*, i32, i32, i32, i64) #1

declare dso_local i32 @msg_set_user(%struct.tipc_msg*, i64) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
