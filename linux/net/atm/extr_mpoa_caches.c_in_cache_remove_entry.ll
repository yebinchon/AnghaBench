; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_in_cache_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_in_cache_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_9__, %struct.atm_vcc* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_13__*, i32*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 (i32*)*, i32* (%struct.atm_vcc*, %struct.mpoa_client*)* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*)* }
%struct.k_message = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"removing an ingress entry, ip = %pI4\0A\00", align 1
@STOP_KEEP_ALIVE_SM = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.mpoa_client*)* @in_cache_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_cache_remove_entry(%struct.TYPE_14__* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.k_message, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  store %struct.atm_vcc* %10, %struct.atm_vcc** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %26, align 8
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %32 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %31, i32 0, i32 2
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %32, align 8
  br label %33

33:                                               ; preds = %27, %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %45, align 8
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %48 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %47, i32 0, i32 3
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = call i32 %51(%struct.TYPE_14__* %52)
  %54 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %55 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = icmp eq %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %46
  %59 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %60 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @STOP_KEEP_ALIVE_SM, align 4
  %65 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %67 = call i32 @msg_to_mpoad(%struct.k_message* %6, %struct.mpoa_client* %66)
  br label %68

68:                                               ; preds = %63, %58, %46
  %69 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %70 = icmp ne %struct.atm_vcc* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %73 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32* (%struct.atm_vcc*, %struct.mpoa_client*)*, i32* (%struct.atm_vcc*, %struct.mpoa_client*)** %75, align 8
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %78 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %79 = call i32* %76(%struct.atm_vcc* %77, %struct.mpoa_client* %78)
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %84 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32 (i32*)*, i32 (i32*)** %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 %87(i32* %88)
  br label %95

90:                                               ; preds = %71
  %91 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %92 = load i32, i32* @EPIPE, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 @vcc_release_async(%struct.atm_vcc* %91, i32 %93)
  br label %95

95:                                               ; preds = %82, %90, %68
  ret void
}

declare dso_local i32 @dprintk(i8*, i32*) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @vcc_release_async(%struct.atm_vcc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
