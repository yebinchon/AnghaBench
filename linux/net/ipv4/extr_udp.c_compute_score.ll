; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32, i32 }
%struct.net = type { i32 }
%struct.inet_sock = type { i64, i64 }
%struct.TYPE_2__ = type { i16 }

@PF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, i64, i64, i64, i16, i32, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, i64 %2, i64 %3, i64 %4, i16 zeroext %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.inet_sock*, align 8
  %20 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.net* %1, %struct.net** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i16 %5, i16* %15, align 2
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call i32 @sock_net(%struct.sock* %21)
  %23 = load %struct.net*, %struct.net** %11, align 8
  %24 = call i32 @net_eq(i32 %22, %struct.net* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %15, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = call i64 @ipv6_only_sock(%struct.sock* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %26, %8
  store i32 -1, i32* %9, align 4
  br label %111

40:                                               ; preds = %35
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %9, align 4
  br label %111

47:                                               ; preds = %40
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PF_INET, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 1
  store i32 %54, i32* %18, align 4
  %55 = load %struct.sock*, %struct.sock** %10, align 8
  %56 = call %struct.inet_sock* @inet_sk(%struct.sock* %55)
  store %struct.inet_sock* %56, %struct.inet_sock** %19, align 8
  %57 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %58 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %47
  %62 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %63 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %9, align 4
  br label %111

68:                                               ; preds = %61
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 4
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %68, %47
  %72 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %73 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %78 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 -1, i32* %9, align 4
  br label %111

83:                                               ; preds = %76
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 4
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %83, %71
  %87 = load %struct.net*, %struct.net** %11, align 8
  %88 = load %struct.sock*, %struct.sock** %10, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @udp_sk_bound_dev_eq(%struct.net* %87, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %86
  store i32 -1, i32* %9, align 4
  br label %111

97:                                               ; preds = %86
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %18, align 4
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @READ_ONCE(i32 %102)
  %104 = call i64 (...) @raw_smp_processor_id()
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %106, %97
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %96, %82, %67, %46, %39
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i64 @ipv6_only_sock(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @udp_sk_bound_dev_eq(%struct.net*, i32, i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
