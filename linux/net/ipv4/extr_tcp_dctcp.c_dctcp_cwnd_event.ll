; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_cwnd_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_cwnd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dctcp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @dctcp_cwnd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_cwnd_event(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dctcp*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.dctcp* @inet_csk_ca(%struct.sock* %6)
  store %struct.dctcp* %7, %struct.dctcp** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %20 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %17
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %13 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %12, i32 0, i32 1
  %14 = load %struct.dctcp*, %struct.dctcp** %5, align 8
  %15 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %14, i32 0, i32 0
  %16 = call i32 @dctcp_ece_ack_update(%struct.sock* %10, i32 %11, i32* %13, i32* %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 @dctcp_react_to_loss(%struct.sock* %18)
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %17, %9
  ret void
}

declare dso_local %struct.dctcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @dctcp_ece_ack_update(%struct.sock*, i32, i32*, i32*) #1

declare dso_local i32 @dctcp_react_to_loss(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
