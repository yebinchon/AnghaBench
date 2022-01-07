; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_parse_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tc_mqprio_qopt = type { i32, i32*, i64, i32*, i32* }

@TC_MAX_QUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TC_BITMASK = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.tc_mqprio_qopt*)* @mqprio_parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_parse_opt(%struct.net_device* %0, %struct.tc_mqprio_qopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tc_mqprio_qopt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tc_mqprio_qopt* %1, %struct.tc_mqprio_qopt** %5, align 8
  %9 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %10 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TC_MAX_QUEUE, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %153

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TC_BITMASK, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %25 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %32 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %153

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %44 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TC_MQPRIO_HW_OFFLOAD_MAX, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* @TC_MQPRIO_HW_OFFLOAD_MAX, align 8
  %50 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %51 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %54 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i32 [ 0, %64 ], [ %67, %65 ]
  store i32 %69, i32* %3, align 4
  br label %153

70:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %149, %70
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %74 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %152

77:                                               ; preds = %71
  %78 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %79 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %86 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %84, %91
  store i32 %92, i32* %8, align 4
  %93 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %94 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp uge i32 %99, %102
  br i1 %103, label %119, label %104

104:                                              ; preds = %77
  %105 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %106 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113, %104, %77
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %153

122:                                              ; preds = %113
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %145, %122
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %128 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %125
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %5, align 8
  %134 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ugt i32 %132, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %153

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %125

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %71

152:                                              ; preds = %71
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %141, %119, %68, %35, %14
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
