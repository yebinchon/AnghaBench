; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_get_slot.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_get_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netem_sched_data = type { %struct.TYPE_2__, %struct.tc_netem_slot }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tc_netem_slot = type { i64, i64, i32, i32, i32 }
%struct.nlattr = type { i32 }

@INT_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netem_sched_data*, %struct.nlattr*)* @get_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_slot(%struct.netem_sched_data* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.netem_sched_data*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.tc_netem_slot*, align 8
  store %struct.netem_sched_data* %0, %struct.netem_sched_data** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %7 = call %struct.tc_netem_slot* @nla_data(%struct.nlattr* %6)
  store %struct.tc_netem_slot* %7, %struct.tc_netem_slot** %5, align 8
  %8 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %8, i32 0, i32 1
  %10 = load %struct.tc_netem_slot*, %struct.tc_netem_slot** %5, align 8
  %11 = bitcast %struct.tc_netem_slot* %9 to i8*
  %12 = bitcast %struct.tc_netem_slot* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %14 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i8*, i8** @INT_MAX, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %26 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** @INT_MAX, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %34 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %38 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %42 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %45 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %49 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %52 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %56 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %54, %58
  %60 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %61 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %59, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %36
  %67 = call i64 (...) @ktime_get_ns()
  %68 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %69 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i64 %67, i64* %70, align 8
  br label %75

71:                                               ; preds = %36
  %72 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %73 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %66
  ret void
}

declare dso_local %struct.tc_netem_slot* @nla_data(%struct.nlattr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ktime_get_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
