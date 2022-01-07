; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_init_mask_hashtable.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_init_mask_hashtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.fl_flow_mask = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@fl_ht_params = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fl_flow_mask*)* @fl_init_mask_hashtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_init_mask_hashtable(%struct.fl_flow_mask* %0) #0 {
  %2 = alloca %struct.fl_flow_mask*, align 8
  store %struct.fl_flow_mask* %0, %struct.fl_flow_mask** %2, align 8
  %3 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %4 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %3, i32 0, i32 0
  %5 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 4 bitcast (%struct.TYPE_5__* @fl_ht_params to i8*), i64 8, i1 false)
  %6 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %7 = call i32 @fl_mask_range(%struct.fl_flow_mask* %6)
  %8 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %9 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %12 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %16 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %14
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 8
  %22 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %23 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %22, i32 0, i32 1
  %24 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %2, align 8
  %25 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %24, i32 0, i32 0
  %26 = call i32 @rhashtable_init(i32* %23, %struct.TYPE_5__* %25)
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fl_mask_range(%struct.fl_flow_mask*) #2

declare dso_local i32 @rhashtable_init(i32*, %struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
