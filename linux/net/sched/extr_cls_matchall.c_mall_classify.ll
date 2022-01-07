; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.tcf_result = type { i32 }
%struct.cls_mall_head = type { i32, %struct.TYPE_2__*, %struct.tcf_result, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @mall_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mall_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.cls_mall_head*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %10 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cls_mall_head* @rcu_dereference_bh(i32 %11)
  store %struct.cls_mall_head* %12, %struct.cls_mall_head** %8, align 8
  %13 = load %struct.cls_mall_head*, %struct.cls_mall_head** %8, align 8
  %14 = icmp ne %struct.cls_mall_head* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.cls_mall_head*, %struct.cls_mall_head** %8, align 8
  %22 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @tc_skip_sw(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %44

27:                                               ; preds = %20
  %28 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %29 = load %struct.cls_mall_head*, %struct.cls_mall_head** %8, align 8
  %30 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %29, i32 0, i32 2
  %31 = bitcast %struct.tcf_result* %28 to i8*
  %32 = bitcast %struct.tcf_result* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 8 %32, i64 4, i1 false)
  %33 = load %struct.cls_mall_head*, %struct.cls_mall_head** %8, align 8
  %34 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__this_cpu_inc(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.cls_mall_head*, %struct.cls_mall_head** %8, align 8
  %41 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %40, i32 0, i32 0
  %42 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %43 = call i32 @tcf_exts_exec(%struct.sk_buff* %39, i32* %41, %struct.tcf_result* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %27, %26, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.cls_mall_head* @rcu_dereference_bh(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tc_skip_sw(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
