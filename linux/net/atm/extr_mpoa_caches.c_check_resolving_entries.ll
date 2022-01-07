; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_check_resolving_entries.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_check_resolving_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.atm_mpoa_qos = type { i32 }
%struct.k_message = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }

@INGRESS_RESOLVING = common dso_local global i64 0, align 8
@MPC_C1 = common dso_local global i32 0, align 4
@SND_MPOA_RES_RTRY = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*)* @check_resolving_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_resolving_entries(%struct.mpoa_client* %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = alloca %struct.atm_mpoa_qos*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.k_message, align 4
  store %struct.mpoa_client* %0, %struct.mpoa_client** %2, align 8
  %7 = call i64 (...) @ktime_get_seconds()
  store i64 %7, i64* %5, align 8
  %8 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %9 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %8, i32 0, i32 0
  %10 = call i32 @read_lock_bh(i32* %9)
  %11 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %12 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  br label %14

14:                                               ; preds = %118, %66, %34, %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %122

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INGRESS_RESOLVING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %118

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %30 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %4, align 8
  br label %14

38:                                               ; preds = %23
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %117

48:                                               ; preds = %38
  %49 = load i32, i32* @MPC_C1, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = mul nsw i64 %50, %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %61 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp sgt i64 %59, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %48
  %67 = call i64 (...) @ktime_get_seconds()
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %71 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %4, align 8
  br label %14

80:                                               ; preds = %48
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = call i32 @memset(i64* %82, i32 0, i32 8)
  %84 = load i32, i32* @SND_MPOA_RES_RTRY, align 4
  %85 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %89 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ATM_ESA_LEN, align 4
  %92 = call i32 @memcpy(i32 %87, i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 5
  %97 = bitcast %struct.TYPE_7__* %94 to i8*
  %98 = bitcast %struct.TYPE_7__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 8 %98, i64 4, i1 false)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32 %102)
  store %struct.atm_mpoa_qos* %103, %struct.atm_mpoa_qos** %3, align 8
  %104 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %105 = icmp ne %struct.atm_mpoa_qos* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %80
  %107 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %108 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %80
  %112 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %113 = call i32 @msg_to_mpoad(%struct.k_message* %6, %struct.mpoa_client* %112)
  %114 = call i64 (...) @ktime_get_seconds()
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %38
  br label %118

118:                                              ; preds = %117, %17
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %4, align 8
  br label %14

122:                                              ; preds = %14
  %123 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %124 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %123, i32 0, i32 0
  %125 = call i32 @read_unlock_bh(i32* %124)
  ret void
}

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
