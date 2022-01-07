; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_tcindex.c_tcindex_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tcf_result = type { i32, i64 }
%struct.tcindex_data = type { i32, i32, i32 }
%struct.tcindex_filter_result = type { i32, %struct.tcf_result }
%struct.Qdisc = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"tcindex_classify(skb %p,tp %p,res %p),p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alg 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"map 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @tcindex_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcindex_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcindex_data*, align 8
  %9 = alloca %struct.tcindex_filter_result*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.Qdisc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.tcindex_data* @rcu_dereference_bh(i32 %14)
  store %struct.tcindex_data* %15, %struct.tcindex_data** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %20 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %24 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %29 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %30 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %31 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %27, %struct.tcf_proto* %28, %struct.tcf_result* %29, %struct.tcindex_data* %30)
  %32 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.tcindex_filter_result* @tcindex_lookup(%struct.tcindex_data* %32, i32 %33)
  store %struct.tcindex_filter_result* %34, %struct.tcindex_filter_result** %9, align 8
  %35 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %36 = icmp ne %struct.tcindex_filter_result* %35, null
  br i1 %36, label %66, label %37

37:                                               ; preds = %3
  %38 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %39 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.Qdisc* @tcf_block_q(i32 %42)
  store %struct.Qdisc* %43, %struct.Qdisc** %11, align 8
  %44 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %45 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %83

49:                                               ; preds = %37
  %50 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %51 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TC_H_MAJ(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @TC_H_MAKE(i32 %53, i32 %54)
  %56 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %57 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %59 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %61 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.sk_buff*
  %65 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %64)
  store i32 0, i32* %4, align 4
  br label %83

66:                                               ; preds = %3
  %67 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %68 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %69 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %68, i32 0, i32 1
  %70 = bitcast %struct.tcf_result* %67 to i8*
  %71 = bitcast %struct.tcf_result* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %73 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.sk_buff*
  %77 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %80 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %79, i32 0, i32 0
  %81 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %82 = call i32 @tcf_exts_exec(%struct.sk_buff* %78, i32* %80, %struct.tcf_result* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %66, %49, %48
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.tcindex_data* @rcu_dereference_bh(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.sk_buff*, ...) #1

declare dso_local %struct.tcindex_filter_result* @tcindex_lookup(%struct.tcindex_data*, i32) #1

declare dso_local %struct.Qdisc* @tcf_block_q(i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
