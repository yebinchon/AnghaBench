; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_facility.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"nf_ct_q931: Facility\0A\00", align 1
@eFacilityReason_callForwarded = common dso_local global i64 0, align 8
@eFacility_UUIE_alternativeAddress = common dso_local global i32 0, align 4
@eFacility_UUIE_h245Address = common dso_local global i32 0, align 4
@eFacility_UUIE_fastStart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, %struct.TYPE_7__*)* @process_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_facility(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, %struct.TYPE_7__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %15, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @eFacilityReason_callForwarded, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %7
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @eFacility_UUIE_alternativeAddress, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i8**, i8*** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = call i32 @expect_callforwarding(%struct.sk_buff* %33, %struct.nf_conn* %34, i32 %35, i32 %36, i8** %37, i32 %38, i32* %40)
  store i32 %41, i32* %8, align 4
  br label %103

42:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %103

43:                                               ; preds = %7
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @eFacility_UUIE_h245Address, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i8**, i8*** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = call i32 @expect_h245(%struct.sk_buff* %51, %struct.nf_conn* %52, i32 %53, i32 %54, i8** %55, i32 %56, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 -1, i32* %8, align 4
  br label %103

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @eFacility_UUIE_fastStart, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %64
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i8**, i8*** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i32 @process_olc(%struct.sk_buff* %80, %struct.nf_conn* %81, i32 %82, i32 %83, i8** %84, i32 %85, i32* %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  store i32 -1, i32* %8, align 4
  br label %103

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %72

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %101, %64
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %96, %62, %42, %32
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @expect_callforwarding(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @expect_h245(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_olc(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
