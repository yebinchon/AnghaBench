; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_tcp_westwood_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_tcp_westwood_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i8*, i8* }
%struct.westwood = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_westwood_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_westwood_event(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.westwood*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.westwood* @inet_csk_ca(%struct.sock* %9)
  store %struct.westwood* %10, %struct.westwood** %6, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %26 [
    i32 129, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i8* @tcp_westwood_bw_rttmin(%struct.sock* %13)
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 1
  store i8* %14, i8** %18, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i8* @tcp_westwood_bw_rttmin(%struct.sock* %20)
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.westwood*, %struct.westwood** %6, align 8
  %25 = getelementptr inbounds %struct.westwood, %struct.westwood* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %19, %12
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.westwood* @inet_csk_ca(%struct.sock*) #1

declare dso_local i8* @tcp_westwood_bw_rttmin(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
