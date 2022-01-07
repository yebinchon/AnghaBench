; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet_sock = type { i64 }
%struct.TYPE_2__ = type { i16 }

@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, %struct.in6_addr*, i64, %struct.in6_addr*, i16, i32, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, %struct.in6_addr* %2, i64 %3, %struct.in6_addr* %4, i16 zeroext %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.inet_sock*, align 8
  %20 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.net* %1, %struct.net** %11, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %14, align 8
  store i16 %5, i16* %15, align 2
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call i32 @sock_net(%struct.sock* %21)
  %23 = load %struct.net*, %struct.net** %11, align 8
  %24 = call i32 @net_eq(i32 %22, %struct.net* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %15, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PF_INET6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %26, %8
  store i32 -1, i32* %9, align 4
  br label %106

42:                                               ; preds = %35
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 4
  %45 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %46 = call i32 @ipv6_addr_equal(i32* %44, %struct.in6_addr* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 -1, i32* %9, align 4
  br label %106

49:                                               ; preds = %42
  store i32 0, i32* %18, align 4
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = call %struct.inet_sock* @inet_sk(%struct.sock* %50)
  store %struct.inet_sock* %51, %struct.inet_sock** %19, align 8
  %52 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %53 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %58 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -1, i32* %9, align 4
  br label %106

63:                                               ; preds = %56
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %63, %49
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 3
  %69 = call i32 @ipv6_addr_any(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load %struct.sock*, %struct.sock** %10, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 3
  %74 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %75 = call i32 @ipv6_addr_equal(i32* %73, %struct.in6_addr* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 -1, i32* %9, align 4
  br label %106

78:                                               ; preds = %71
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %78, %66
  %82 = load %struct.net*, %struct.net** %11, align 8
  %83 = load %struct.sock*, %struct.sock** %10, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @udp_sk_bound_dev_eq(%struct.net* %82, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %81
  store i32 -1, i32* %9, align 4
  br label %106

92:                                               ; preds = %81
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %18, align 4
  %95 = load %struct.sock*, %struct.sock** %10, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @READ_ONCE(i32 %97)
  %99 = call i64 (...) @raw_smp_processor_id()
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %101, %92
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %91, %77, %62, %48, %41
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @udp_sk_bound_dev_eq(%struct.net*, i32, i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
