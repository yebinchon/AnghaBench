; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_change_rsc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_change_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsc_class = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.tc_service_curve = type { i32 }

@HFSC_RSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfsc_class*, %struct.tc_service_curve*, i32)* @hfsc_change_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsc_change_rsc(%struct.hfsc_class* %0, %struct.tc_service_curve* %1, i32 %2) #0 {
  %4 = alloca %struct.hfsc_class*, align 8
  %5 = alloca %struct.tc_service_curve*, align 8
  %6 = alloca i32, align 4
  store %struct.hfsc_class* %0, %struct.hfsc_class** %4, align 8
  store %struct.tc_service_curve* %1, %struct.tc_service_curve** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tc_service_curve*, %struct.tc_service_curve** %5, align 8
  %8 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %9 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %8, i32 0, i32 2
  %10 = call i32 @sc2isc(%struct.tc_service_curve* %7, %struct.TYPE_4__* %9)
  %11 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %12 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %11, i32 0, i32 3
  %13 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %14 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %13, i32 0, i32 2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %17 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rtsc_init(%struct.TYPE_5__* %12, %struct.TYPE_4__* %14, i32 %15, i32 %18)
  %20 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %21 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %20, i32 0, i32 1
  %22 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %23 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %22, i32 0, i32 3
  %24 = bitcast %struct.TYPE_5__* %21 to i8*
  %25 = bitcast %struct.TYPE_5__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %27 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %31 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %29, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %37 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %40 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %3
  %43 = load i32, i32* @HFSC_RSC, align 4
  %44 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %45 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  ret void
}

declare dso_local i32 @sc2isc(%struct.tc_service_curve*, %struct.TYPE_4__*) #1

declare dso_local i32 @rtsc_init(%struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
