; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tsk_set_importance.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tsk_set_importance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32 }

@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_sock*, i32)* @tsk_set_importance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsk_set_importance(%struct.tipc_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.tipc_sock* %0, %struct.tipc_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %14 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @msg_set_importance(i32* %14, i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @msg_set_importance(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
