; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_is_mcast_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_is_mcast_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.inet_sock = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, i64, i64, i64, i64, i32, i32, i16)* @__udp_is_mcast_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udp_is_mcast_sock(%struct.net* %0, %struct.sock* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, i16 zeroext %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca %struct.inet_sock*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.sock* %1, %struct.sock** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i16 %8, i16* %19, align 2
  %21 = load %struct.sock*, %struct.sock** %12, align 8
  %22 = call %struct.inet_sock* @inet_sk(%struct.sock* %21)
  store %struct.inet_sock* %22, %struct.inet_sock** %20, align 8
  %23 = load %struct.sock*, %struct.sock** %12, align 8
  %24 = call i32 @sock_net(%struct.sock* %23)
  %25 = load %struct.net*, %struct.net** %11, align 8
  %26 = call i32 @net_eq(i32 %24, %struct.net* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %83

28:                                               ; preds = %9
  %29 = load %struct.sock*, %struct.sock** %12, align 8
  %30 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* %19, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %83, label %37

37:                                               ; preds = %28
  %38 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %39 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %44 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %83, label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %50 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %56 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %61 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %66 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %83, label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.sock*, %struct.sock** %12, align 8
  %72 = call i64 @ipv6_only_sock(%struct.sock* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load %struct.net*, %struct.net** %11, align 8
  %76 = load %struct.sock*, %struct.sock** %12, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @udp_sk_bound_dev_eq(%struct.net* %75, i32 %78, i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74, %70, %64, %54, %42, %28, %9
  store i32 0, i32* %10, align 4
  br label %94

84:                                               ; preds = %74
  %85 = load %struct.sock*, %struct.sock** %12, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @ip_mc_sf_allow(%struct.sock* %85, i64 %86, i64 %87, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %94

93:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %92, %83
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i64 @ipv6_only_sock(%struct.sock*) #1

declare dso_local i32 @udp_sk_bound_dev_eq(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @ip_mc_sf_allow(%struct.sock*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
