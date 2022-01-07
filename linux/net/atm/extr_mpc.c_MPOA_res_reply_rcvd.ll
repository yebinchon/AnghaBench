; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_MPOA_res_reply_rcvd.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_MPOA_res_reply_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*)*, %struct.TYPE_17__* (i32, %struct.mpoa_client*)* }
%struct.TYPE_17__ = type { i64, i64, i64, i8*, i8*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(%s) ip %pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(%s) entry = %p\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"(%s) ARGH, received res. reply for an entry that doesn't exist.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" entry_state = %d \00", align 1
@INGRESS_RESOLVED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"(%s) RESOLVED entry!\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"entry->shortcut = %p\0A\00", align 1
@INGRESS_RESOLVING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"(%s) entry->shortcut != NULL, impossible!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @MPOA_res_reply_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MPOA_res_reply_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %7 = load %struct.k_message*, %struct.k_message** %3, align 8
  %8 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_17__* (i32, %struct.mpoa_client*)*, %struct.TYPE_17__* (i32, %struct.mpoa_client*)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %19 = call %struct.TYPE_17__* %16(i32 %17, %struct.mpoa_client* %18)
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %6, align 8
  %20 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %21 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24, i32* %5)
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = call i32 @ddprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30, %struct.TYPE_17__* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = icmp eq %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %37 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %143

42:                                               ; preds = %2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ddprintk_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @INGRESS_RESOLVED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %54 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %60 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = call i32 %63(%struct.TYPE_17__* %64)
  br label %143

66:                                               ; preds = %42
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  %69 = load %struct.k_message*, %struct.k_message** %3, align 8
  %70 = getelementptr inbounds %struct.k_message, %struct.k_message* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = bitcast %struct.TYPE_13__* %68 to i8*
  %73 = bitcast %struct.TYPE_13__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = call i8* (...) @ktime_get_seconds()
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = call i8* (...) @ktime_get_seconds()
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ddprintk_cont(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @INGRESS_RESOLVING, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %66
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load i64, i64* @INGRESS_RESOLVED, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %102 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = call i32 %105(%struct.TYPE_17__* %106)
  br label %143

108:                                              ; preds = %91, %66
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %116 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %122 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %121, i32 0, i32 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = call i32 %125(%struct.TYPE_17__* %126)
  br label %143

128:                                              ; preds = %108
  %129 = load %struct.k_message*, %struct.k_message** %3, align 8
  %130 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = call i32 @check_qos_and_open_shortcut(%struct.k_message* %129, %struct.mpoa_client* %130, %struct.TYPE_17__* %131)
  %133 = load i64, i64* @INGRESS_RESOLVED, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %137 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %136, i32 0, i32 0
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = call i32 %140(%struct.TYPE_17__* %141)
  br label %143

143:                                              ; preds = %128, %114, %97, %52, %35
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32*) #1

declare dso_local i32 @ddprintk(i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @ddprintk_cont(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ktime_get_seconds(...) #1

declare dso_local i32 @check_qos_and_open_shortcut(%struct.k_message*, %struct.mpoa_client*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
