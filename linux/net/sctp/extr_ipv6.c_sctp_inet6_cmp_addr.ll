; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_inet6_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_sock = type { i32 }
%struct.sock = type { i32 }
%struct.sctp_af = type { i32 }
%struct.TYPE_4__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %union.sctp_addr*, %struct.sctp_sock*)* @sctp_inet6_cmp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_inet6_cmp_addr(%union.sctp_addr* %0, %union.sctp_addr* %1, %struct.sctp_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sctp_af*, align 8
  %10 = alloca %struct.sctp_af*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %struct.sctp_sock* %2, %struct.sctp_sock** %7, align 8
  %11 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %12 = call %struct.sock* @sctp_opt2sk(%struct.sctp_sock* %11)
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %14 = bitcast %union.sctp_addr* %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.sctp_af* @sctp_get_af_specific(i64 %16)
  store %struct.sctp_af* %17, %struct.sctp_af** %9, align 8
  %18 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %19 = bitcast %union.sctp_addr* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.sctp_af* @sctp_get_af_specific(i64 %21)
  store %struct.sctp_af* %22, %struct.sctp_af** %10, align 8
  %23 = load %struct.sctp_af*, %struct.sctp_af** %9, align 8
  %24 = icmp ne %struct.sctp_af* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.sctp_af*, %struct.sctp_af** %10, align 8
  %27 = icmp ne %struct.sctp_af* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %80

29:                                               ; preds = %25
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = call i64 @__ipv6_only_sock(%struct.sock* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.sctp_af*, %struct.sctp_af** %9, align 8
  %35 = load %struct.sctp_af*, %struct.sctp_af** %10, align 8
  %36 = icmp ne %struct.sctp_af* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %80

38:                                               ; preds = %33, %29
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %41 = call i64 @sctp_is_any(%struct.sock* %39, %union.sctp_addr* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %46 = call i64 @sctp_is_any(%struct.sock* %44, %union.sctp_addr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  store i32 1, i32* %4, align 4
  br label %80

49:                                               ; preds = %43
  %50 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %51 = bitcast %union.sctp_addr* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AF_INET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %58 = bitcast %union.sctp_addr* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AF_INET, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %65 = bitcast %union.sctp_addr* %64 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %70 = bitcast %union.sctp_addr* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %68, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %56, %49
  %77 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %78 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %79 = call i32 @__sctp_v6_cmp_addr(%union.sctp_addr* %77, %union.sctp_addr* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %63, %48, %37, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.sock* @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i64) #1

declare dso_local i64 @__ipv6_only_sock(%struct.sock*) #1

declare dso_local i64 @sctp_is_any(%struct.sock*, %union.sctp_addr*) #1

declare dso_local i32 @__sctp_v6_cmp_addr(%union.sctp_addr*, %union.sctp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
