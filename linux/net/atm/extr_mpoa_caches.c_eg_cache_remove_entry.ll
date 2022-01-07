; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.atm_vcc* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.atm_vcc = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 (i32*)*, i32* (%struct.atm_vcc*, %struct.mpoa_client*)* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_12__*)* }
%struct.k_message = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"removing an egress entry.\0A\00", align 1
@STOP_KEEP_ALIVE_SM = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.mpoa_client*)* @eg_cache_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eg_cache_remove_entry(%struct.TYPE_12__* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.k_message, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  store %struct.atm_vcc* %10, %struct.atm_vcc** %5, align 8
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %23, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %29 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %28, i32 0, i32 1
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %29, align 8
  br label %30

30:                                               ; preds = %24, %16
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %42, align 8
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %45 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %44, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = call i32 %48(%struct.TYPE_12__* %49)
  %51 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %52 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %57 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = icmp eq %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @STOP_KEEP_ALIVE_SM, align 4
  %62 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %64 = call i32 @msg_to_mpoad(%struct.k_message* %6, %struct.mpoa_client* %63)
  br label %65

65:                                               ; preds = %60, %55, %43
  %66 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %67 = icmp ne %struct.atm_vcc* %66, null
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  %69 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %70 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32* (%struct.atm_vcc*, %struct.mpoa_client*)*, i32* (%struct.atm_vcc*, %struct.mpoa_client*)** %72, align 8
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %75 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %76 = call i32* %73(%struct.atm_vcc* %74, %struct.mpoa_client* %75)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %81 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32 (i32*)*, i32 (i32*)** %83, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 %84(i32* %85)
  br label %92

87:                                               ; preds = %68
  %88 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %89 = load i32, i32* @EPIPE, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @vcc_release_async(%struct.atm_vcc* %88, i32 %90)
  br label %92

92:                                               ; preds = %79, %87, %65
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @vcc_release_async(%struct.atm_vcc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
