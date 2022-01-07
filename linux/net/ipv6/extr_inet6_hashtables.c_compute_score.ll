; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_hashtables.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_hashtables.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_2__ = type { i16 }

@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, i16, %struct.in6_addr*, i32, i32, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, i16 zeroext %2, %struct.in6_addr* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.net* %1, %struct.net** %10, align 8
  store i16 %2, i16* %11, align 2
  store %struct.in6_addr* %3, %struct.in6_addr** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call i32 @sock_net(%struct.sock* %17)
  %19 = load %struct.net*, %struct.net** %10, align 8
  %20 = call i64 @net_eq(i32 %18, %struct.net* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %7
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %11, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %22
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PF_INET6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 3
  %40 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %41 = call i32 @ipv6_addr_equal(i32* %39, %struct.in6_addr* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %67

44:                                               ; preds = %37
  %45 = load %struct.net*, %struct.net** %10, align 8
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @inet_sk_bound_dev_eq(%struct.net* %45, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 -1, i32* %8, align 4
  br label %67

54:                                               ; preds = %44
  store i32 1, i32* %16, align 4
  %55 = load %struct.sock*, %struct.sock** %9, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @READ_ONCE(i32 %57)
  %59 = call i64 (...) @raw_smp_processor_id()
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %31, %22, %7
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %53, %43
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @inet_sk_bound_dev_eq(%struct.net*, i32, i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
