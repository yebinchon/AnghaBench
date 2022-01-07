; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_frag_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_frag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ip6_frag_state = type { i32, i32, i32, i32, i16, i64, i64, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_frag_init(%struct.sk_buff* %0, i32 %1, i32 %2, i16 zeroext %3, i32 %4, i32* %5, i32 %6, i32 %7, %struct.ip6_frag_state* %8) #0 {
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ip6_frag_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i16 %3, i16* %13, align 2
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.ip6_frag_state* %8, %struct.ip6_frag_state** %18, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %21 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %20, i32 0, i32 9
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* %16, align 4
  %23 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %24 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %27 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %30 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %33 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %41 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %40, i32 0, i32 6
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %44 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %47 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i16, i16* %13, align 2
  %49 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %50 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %49, i32 0, i32 4
  store i16 %48, i16* %50, align 8
  %51 = load %struct.ip6_frag_state*, %struct.ip6_frag_state** %18, align 8
  %52 = getelementptr inbounds %struct.ip6_frag_state, %struct.ip6_frag_state* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
