; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_lp.c_tcp_lp_remote_hz_estimator.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_lp.c_tcp_lp_remote_hz_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.lp = type { i32, i64, i64, i32 }

@TCP_TS_HZ = common dso_local global i32 0, align 4
@LP_VALID_RHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_lp_remote_hz_estimator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_lp_remote_hz_estimator(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.lp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.lp* @inet_csk_ca(%struct.sock* %9)
  store %struct.lp* %10, %struct.lp** %4, align 8
  %11 = load %struct.lp*, %struct.lp** %4, align 8
  %12 = getelementptr inbounds %struct.lp, %struct.lp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %13, 6
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.lp*, %struct.lp** %4, align 8
  %16 = getelementptr inbounds %struct.lp, %struct.lp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.lp*, %struct.lp** %4, align 8
  %21 = getelementptr inbounds %struct.lp, %struct.lp* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %1
  br label %86

25:                                               ; preds = %19
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lp*, %struct.lp** %4, align 8
  %31 = getelementptr inbounds %struct.lp, %struct.lp* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.lp*, %struct.lp** %4, align 8
  %40 = getelementptr inbounds %struct.lp, %struct.lp* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %25
  br label %86

44:                                               ; preds = %34
  %45 = load i32, i32* @TCP_TS_HZ, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lp*, %struct.lp** %4, align 8
  %52 = getelementptr inbounds %struct.lp, %struct.lp* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = mul nsw i64 %46, %54
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.lp*, %struct.lp** %4, align 8
  %61 = getelementptr inbounds %struct.lp, %struct.lp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = sdiv i64 %55, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %44
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %44
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = ashr i32 %75, 6
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 %83, 6
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %74
  br label %86

86:                                               ; preds = %85, %43, %24
  %87 = load i32, i32* %5, align 4
  %88 = ashr i32 %87, 6
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @LP_VALID_RHZ, align 4
  %92 = load %struct.lp*, %struct.lp** %4, align 8
  %93 = getelementptr inbounds %struct.lp, %struct.lp* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %103

96:                                               ; preds = %86
  %97 = load i32, i32* @LP_VALID_RHZ, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.lp*, %struct.lp** %4, align 8
  %100 = getelementptr inbounds %struct.lp, %struct.lp* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %90
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.lp*, %struct.lp** %4, align 8
  %109 = getelementptr inbounds %struct.lp, %struct.lp* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %111 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.lp*, %struct.lp** %4, align 8
  %115 = getelementptr inbounds %struct.lp, %struct.lp* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %5, align 4
  %117 = ashr i32 %116, 6
  ret i32 %117
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.lp* @inet_csk_ca(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
