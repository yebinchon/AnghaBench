; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sock_pending_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sock_pending_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.j1939_sock = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j1939_sock_pending_del(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.j1939_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.j1939_sock* @j1939_sk(%struct.sock* %4)
  store %struct.j1939_sock* %5, %struct.j1939_sock** %3, align 8
  %6 = load %struct.j1939_sock*, %struct.j1939_sock** %3, align 8
  %7 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %6, i32 0, i32 1
  %8 = call i32 @atomic_dec_return(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.j1939_sock*, %struct.j1939_sock** %3, align 8
  %12 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %11, i32 0, i32 0
  %13 = call i32 @wake_up(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.j1939_sock* @j1939_sk(%struct.sock*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
