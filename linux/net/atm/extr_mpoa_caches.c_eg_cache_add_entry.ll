; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.k_message = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.mpoa_client = type { i32, i32, %struct.TYPE_8__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"adding an egress entry, ip = %pI4, this should be our IP\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"new_eg_cache_entry: about to lock\0A\00", align 1
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@EGRESS_RESOLVED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"new_eg_cache_entry cache_id %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"mps_ip = %pI4\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"new_eg_cache_entry: unlocked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.k_message*, %struct.mpoa_client*)* @eg_cache_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @eg_cache_add_entry(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.k_message*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.k_message* %0, %struct.k_message** %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.TYPE_8__* @kzalloc(i32 48, i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %86

13:                                               ; preds = %2
  %14 = load %struct.k_message*, %struct.k_message** %4, align 8
  %15 = getelementptr inbounds %struct.k_message, %struct.k_message* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i32 @refcount_set(i32* %20, i32 1)
  %22 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %24 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %23, i32 0, i32 0
  %25 = call i32 @write_lock_irq(i32* %24)
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %34 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %13
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %40 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %42, align 8
  br label %43

43:                                               ; preds = %37, %13
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %46 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %45, i32 0, i32 2
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %51 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ATM_ESA_LEN, align 4
  %54 = call i32 @memcpy(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.k_message*, %struct.k_message** %4, align 8
  %58 = getelementptr inbounds %struct.k_message, %struct.k_message* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = bitcast %struct.TYPE_7__* %56 to i8*
  %61 = bitcast %struct.TYPE_7__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = call i32 (...) @ktime_get_seconds()
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @EGRESS_RESOLVED, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @refcount_inc(i32* %79)
  %81 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %82 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %81, i32 0, i32 0
  %83 = call i32 @write_unlock_irq(i32* %82)
  %84 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %3, align 8
  br label %86

86:                                               ; preds = %43, %11
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %87
}

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
