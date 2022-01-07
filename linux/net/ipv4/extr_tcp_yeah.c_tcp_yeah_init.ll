; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_yeah.c_tcp_yeah_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_yeah.c_tcp_yeah_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.yeah = type { i32, i64, i64 }

@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_yeah_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_yeah_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.yeah*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.yeah* @inet_csk_ca(%struct.sock* %7)
  store %struct.yeah* %8, %struct.yeah** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i32 @tcp_vegas_init(%struct.sock* %9)
  %11 = load %struct.yeah*, %struct.yeah** %4, align 8
  %12 = getelementptr inbounds %struct.yeah, %struct.yeah* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.yeah*, %struct.yeah** %4, align 8
  %14 = getelementptr inbounds %struct.yeah, %struct.yeah* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.yeah*, %struct.yeah** %4, align 8
  %16 = getelementptr inbounds %struct.yeah, %struct.yeah* %15, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = load i32, i32* @u32, align 4
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @min_t(i32 %17, i32 %20, i32 33554431)
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.yeah* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_vegas_init(%struct.sock*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
