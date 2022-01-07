; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_hashtables.c_inet6_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_hashtables.c_inet6_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.inet_hashinfo = type { i32 }
%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @inet6_lookup(%struct.net* %0, %struct.inet_hashinfo* %1, %struct.sk_buff* %2, i32 %3, %struct.in6_addr* %4, i32 %5, %struct.in6_addr* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.inet_hashinfo*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.in6_addr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sock*, align 8
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.inet_hashinfo* %1, %struct.inet_hashinfo** %11, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.in6_addr* %4, %struct.in6_addr** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.in6_addr* %6, %struct.in6_addr** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load %struct.net*, %struct.net** %10, align 8
  %22 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @ntohs(i32 %28)
  %30 = load i32, i32* %18, align 4
  %31 = call %struct.sock* @__inet6_lookup(%struct.net* %21, %struct.inet_hashinfo* %22, %struct.sk_buff* %23, i32 %24, %struct.in6_addr* %25, i32 %26, %struct.in6_addr* %27, i32 %29, i32 %30, i32 0, i32* %20)
  store %struct.sock* %31, %struct.sock** %19, align 8
  %32 = load %struct.sock*, %struct.sock** %19, align 8
  %33 = icmp ne %struct.sock* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %9
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.sock*, %struct.sock** %19, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = call i32 @refcount_inc_not_zero(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store %struct.sock* null, %struct.sock** %19, align 8
  br label %43

43:                                               ; preds = %42, %37, %34, %9
  %44 = load %struct.sock*, %struct.sock** %19, align 8
  ret %struct.sock* %44
}

declare dso_local %struct.sock* @__inet6_lookup(%struct.net*, %struct.inet_hashinfo*, %struct.sk_buff*, i32, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32, i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
