; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c___sctp_v6_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c___sctp_v6_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %union.sctp_addr*)* @__sctp_v6_cmp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sctp_v6_cmp_addr(%union.sctp_addr* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  %6 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %7 = bitcast %union.sctp_addr* %6 to %struct.TYPE_9__*
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %11 = bitcast %union.sctp_addr* %10 to %struct.TYPE_9__*
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %2
  %16 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %17 = bitcast %union.sctp_addr* %16 to %struct.TYPE_9__*
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %24 = bitcast %union.sctp_addr* %23 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_INET6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %31 = bitcast %union.sctp_addr* %30 to %struct.TYPE_12__*
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = call i64 @ipv6_addr_v4mapped(%struct.TYPE_13__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %37 = bitcast %union.sctp_addr* %36 to %struct.TYPE_12__*
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  %42 = load i64, i64* %41, align 8
  %43 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %44 = bitcast %union.sctp_addr* %43 to %struct.TYPE_11__*
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %128

50:                                               ; preds = %35, %29, %22, %15
  %51 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %52 = bitcast %union.sctp_addr* %51 to %struct.TYPE_9__*
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AF_INET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %50
  %58 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %59 = bitcast %union.sctp_addr* %58 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AF_INET6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %57
  %65 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %66 = bitcast %union.sctp_addr* %65 to %struct.TYPE_12__*
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = call i64 @ipv6_addr_v4mapped(%struct.TYPE_13__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %72 = bitcast %union.sctp_addr* %71 to %struct.TYPE_12__*
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  %77 = load i64, i64* %76, align 8
  %78 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %79 = bitcast %union.sctp_addr* %78 to %struct.TYPE_11__*
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %128

85:                                               ; preds = %70, %64, %57, %50
  store i32 0, i32* %3, align 4
  br label %128

86:                                               ; preds = %2
  %87 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %88 = bitcast %union.sctp_addr* %87 to %struct.TYPE_12__*
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %91 = bitcast %union.sctp_addr* %90 to %struct.TYPE_12__*
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = call i32 @ipv6_addr_equal(%struct.TYPE_13__* %89, %struct.TYPE_13__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %128

96:                                               ; preds = %86
  %97 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %98 = bitcast %union.sctp_addr* %97 to %struct.TYPE_12__*
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = call i32 @ipv6_addr_type(%struct.TYPE_13__* %99)
  %101 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %96
  %105 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %106 = bitcast %union.sctp_addr* %105 to %struct.TYPE_12__*
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %104
  %111 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %112 = bitcast %union.sctp_addr* %111 to %struct.TYPE_12__*
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %110
  %117 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %118 = bitcast %union.sctp_addr* %117 to %struct.TYPE_12__*
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %122 = bitcast %union.sctp_addr* %121 to %struct.TYPE_12__*
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %128

127:                                              ; preds = %116, %110, %104, %96
  store i32 1, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %126, %95, %85, %84, %49
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @ipv6_addr_v4mapped(%struct.TYPE_13__*) #1

declare dso_local i32 @ipv6_addr_equal(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ipv6_addr_type(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
