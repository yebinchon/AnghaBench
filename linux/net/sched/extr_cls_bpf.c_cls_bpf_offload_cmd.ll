; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_offload_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_offload_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.cls_bpf_prog = type { i32, i32, i32, i32, i32*, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_cls_bpf_offload = type { i32, i32, i32*, i32*, i32*, i32, i32 }

@TC_CLSBPF_OFFLOAD = common dso_local global i32 0, align 4
@TC_SETUP_CLSBPF = common dso_local global i32 0, align 4
@TCA_CLS_FLAGS_IN_HW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.cls_bpf_prog*, %struct.cls_bpf_prog*, %struct.netlink_ext_ack*)* @cls_bpf_offload_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_bpf_offload_cmd(%struct.tcf_proto* %0, %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.cls_bpf_prog*, align 8
  %8 = alloca %struct.cls_bpf_prog*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.tcf_block*, align 8
  %11 = alloca %struct.tc_cls_bpf_offload, align 8
  %12 = alloca %struct.cls_bpf_prog*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog** %7, align 8
  store %struct.cls_bpf_prog* %2, %struct.cls_bpf_prog** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %16 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.tcf_block*, %struct.tcf_block** %18, align 8
  store %struct.tcf_block* %19, %struct.tcf_block** %10, align 8
  %20 = bitcast %struct.tc_cls_bpf_offload* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false)
  %21 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %22 = icmp ne %struct.cls_bpf_prog* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %25 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @tc_skip_sw(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %23, %4
  %30 = phi i1 [ false, %4 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %33 = icmp ne %struct.cls_bpf_prog* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %29
  %36 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi %struct.cls_bpf_prog* [ %32, %34 ], [ %36, %35 ]
  store %struct.cls_bpf_prog* %38, %struct.cls_bpf_prog** %12, align 8
  %39 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %11, i32 0, i32 6
  %40 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %41 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %12, align 8
  %42 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %45 = call i32 @tc_cls_common_offload_init(i32* %39, %struct.tcf_proto* %40, i32 %43, %struct.netlink_ext_ack* %44)
  %46 = load i32, i32* @TC_CLSBPF_OFFLOAD, align 4
  %47 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %11, i32 0, i32 5
  store i32 %46, i32* %47, align 8
  %48 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %12, align 8
  %49 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %11, i32 0, i32 4
  store i32* %49, i32** %50, align 8
  %51 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %52 = icmp ne %struct.cls_bpf_prog* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %55 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  br label %58

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32* [ %56, %53 ], [ null, %57 ]
  %60 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %11, i32 0, i32 3
  store i32* %59, i32** %60, align 8
  %61 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %62 = icmp ne %struct.cls_bpf_prog* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %65 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32* [ %66, %63 ], [ null, %67 ]
  %70 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %11, i32 0, i32 2
  store i32* %69, i32** %70, align 8
  %71 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %12, align 8
  %72 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %11, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %12, align 8
  %76 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %11, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %80 = icmp ne %struct.cls_bpf_prog* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %68
  %82 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %83 = icmp ne %struct.cls_bpf_prog* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %86 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %87 = load i32, i32* @TC_SETUP_CLSBPF, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %90 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %89, i32 0, i32 0
  %91 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %92 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %91, i32 0, i32 1
  %93 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %94 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %93, i32 0, i32 0
  %95 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %96 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %95, i32 0, i32 1
  %97 = call i32 @tc_setup_cb_replace(%struct.tcf_block* %85, %struct.tcf_proto* %86, i32 %87, %struct.tc_cls_bpf_offload* %11, i32 %88, i32* %90, i32* %92, i32* %94, i32* %96, i32 1)
  store i32 %97, i32* %14, align 4
  br label %122

98:                                               ; preds = %81, %68
  %99 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %100 = icmp ne %struct.cls_bpf_prog* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %103 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %104 = load i32, i32* @TC_SETUP_CLSBPF, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %107 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %106, i32 0, i32 0
  %108 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %109 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %108, i32 0, i32 1
  %110 = call i32 @tc_setup_cb_add(%struct.tcf_block* %102, %struct.tcf_proto* %103, i32 %104, %struct.tc_cls_bpf_offload* %11, i32 %105, i32* %107, i32* %109, i32 1)
  store i32 %110, i32* %14, align 4
  br label %121

111:                                              ; preds = %98
  %112 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %113 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %114 = load i32, i32* @TC_SETUP_CLSBPF, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %117 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %116, i32 0, i32 0
  %118 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %119 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %118, i32 0, i32 1
  %120 = call i32 @tc_setup_cb_destroy(%struct.tcf_block* %112, %struct.tcf_proto* %113, i32 %114, %struct.tc_cls_bpf_offload* %11, i32 %115, i32* %117, i32* %119, i32 1)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %111, %101
  br label %122

122:                                              ; preds = %121, %84
  %123 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %124 = icmp ne %struct.cls_bpf_prog* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %130 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %8, align 8
  %131 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %132 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %133 = call i32 @cls_bpf_offload_cmd(%struct.tcf_proto* %129, %struct.cls_bpf_prog* %130, %struct.cls_bpf_prog* %131, %struct.netlink_ext_ack* %132)
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %5, align 4
  br label %152

135:                                              ; preds = %125, %122
  %136 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %137 = icmp ne %struct.cls_bpf_prog* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %7, align 8
  %143 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @TCA_CLS_FLAGS_IN_HW, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %152

151:                                              ; preds = %141, %138, %135
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %148, %128
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @tc_skip_sw(i32) #2

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_cb_replace(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.tc_cls_bpf_offload*, i32, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @tc_setup_cb_add(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.tc_cls_bpf_offload*, i32, i32*, i32*, i32) #2

declare dso_local i32 @tc_setup_cb_destroy(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.tc_cls_bpf_offload*, i32, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
