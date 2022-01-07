; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tcf_result = type { i32, i64 }
%struct.fw_head = type { i32, i32* }
%struct.fw_filter = type { i32, i32, i32, %struct.tcf_result, i32 }
%struct.Qdisc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @fw_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.fw_head*, align 8
  %9 = alloca %struct.fw_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.Qdisc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %14 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @rcu_dereference_bh(i32 %15)
  %17 = bitcast i8* %16 to %struct.fw_head*
  store %struct.fw_head* %17, %struct.fw_head** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.fw_head*, %struct.fw_head** %8, align 8
  %22 = icmp ne %struct.fw_head* %21, null
  br i1 %22, label %23, label %79

23:                                               ; preds = %3
  %24 = load %struct.fw_head*, %struct.fw_head** %8, align 8
  %25 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load %struct.fw_head*, %struct.fw_head** %8, align 8
  %30 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @fw_hash(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @rcu_dereference_bh(i32 %35)
  %37 = bitcast i8* %36 to %struct.fw_filter*
  store %struct.fw_filter* %37, %struct.fw_filter** %9, align 8
  br label %38

38:                                               ; preds = %72, %23
  %39 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %40 = icmp ne %struct.fw_filter* %39, null
  br i1 %40, label %41, label %78

41:                                               ; preds = %38
  %42 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %43 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %49 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %50 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %49, i32 0, i32 3
  %51 = bitcast %struct.tcf_result* %48 to i8*
  %52 = bitcast %struct.tcf_result* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %55 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @tcf_match_indev(%struct.sk_buff* %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %72

60:                                               ; preds = %47
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %63 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %62, i32 0, i32 1
  %64 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %65 = call i32 @tcf_exts_exec(%struct.sk_buff* %61, i32* %63, %struct.tcf_result* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %108

71:                                               ; preds = %41
  br label %72

72:                                               ; preds = %71, %68, %59
  %73 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %74 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @rcu_dereference_bh(i32 %75)
  %77 = bitcast i8* %76 to %struct.fw_filter*
  store %struct.fw_filter* %77, %struct.fw_filter** %9, align 8
  br label %38

78:                                               ; preds = %38
  br label %107

79:                                               ; preds = %3
  %80 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %81 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.Qdisc* @tcf_block_q(i32 %84)
  store %struct.Qdisc* %85, %struct.Qdisc** %12, align 8
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %79
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @TC_H_MAJ(i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %95 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %93, %96
  %98 = call i64 @TC_H_MAJ(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %92, %88
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %103 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %105 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  store i32 0, i32* %4, align 4
  br label %108

106:                                              ; preds = %92, %79
  br label %107

107:                                              ; preds = %106, %78
  store i32 -1, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %100, %69
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i8* @rcu_dereference_bh(i32) #1

declare dso_local i64 @fw_hash(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcf_match_indev(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #1

declare dso_local %struct.Qdisc* @tcf_block_q(i32) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
