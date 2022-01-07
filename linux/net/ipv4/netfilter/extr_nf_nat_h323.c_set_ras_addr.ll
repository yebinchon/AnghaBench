; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_set_ras_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_set_ras_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%union.nf_inet_addr = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"nf_nat_ras: set rasAddress %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*, i32)* @set_ras_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ras_addr(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %union.nf_inet_addr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @CTINFO2DIR(i32 %20)
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %136, %7
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %139

26:                                               ; preds = %22
  %27 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %28 = load i8**, i8*** %13, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i64 @get_h225_addr(%struct.nf_conn* %27, i8* %29, i32* %33, %union.nf_inet_addr* %19, i64* %18)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %135

36:                                               ; preds = %26
  %37 = bitcast %union.nf_inet_addr* %19 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %38, %49
  br i1 %50, label %51, label %135

51:                                               ; preds = %36
  %52 = load i64, i64* %18, align 8
  %53 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %54 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %53, i32 0, i32 0
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %52, %64
  br i1 %65, label %66, label %135

66:                                               ; preds = %51
  %67 = bitcast %union.nf_inet_addr* %19 to i64*
  %68 = load i64, i64* %18, align 8
  %69 = call i32 @ntohs(i64 %68)
  %70 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %71 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %84 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %83, i32 0, i32 0
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ntohs(i64 %97)
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64* %67, i32 %69, i32* %82, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i8**, i8*** %13, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %108 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %107, i32 0, i32 0
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %120 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %119, i32 0, i32 0
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @set_h225_addr(%struct.sk_buff* %100, i32 %101, i8** %102, i32 0, i32* %106, %struct.TYPE_11__* %118, i64 %133)
  store i32 %134, i32* %8, align 4
  br label %140

135:                                              ; preds = %51, %36, %26
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %22

139:                                              ; preds = %22
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %66
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i32 @pr_debug(i8*, i64*, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @set_h225_addr(%struct.sk_buff*, i32, i8**, i32, i32*, %struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
