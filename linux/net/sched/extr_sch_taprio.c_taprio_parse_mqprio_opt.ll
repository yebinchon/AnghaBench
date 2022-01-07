; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_parse_mqprio_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_parse_mqprio_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64 }
%struct.tc_mqprio_qopt = type { i32, i32*, i32*, i32* }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"'mqprio' configuration is necessary\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TC_MAX_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Number of traffic classes is outside valid range\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Number of traffic classes is greater than number of HW queues\00", align 1
@TC_BITMASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Invalid traffic class in priority to traffic class mapping\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Invalid queue in traffic class to queue mapping\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Detected overlap in the traffic class to queue mapping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.tc_mqprio_qopt*, %struct.netlink_ext_ack*, i32)* @taprio_parse_mqprio_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_parse_mqprio_opt(%struct.net_device* %0, %struct.tc_mqprio_qopt* %1, %struct.netlink_ext_ack* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.tc_mqprio_qopt*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.tc_mqprio_qopt* %1, %struct.tc_mqprio_qopt** %7, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %14 = icmp ne %struct.tc_mqprio_qopt* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %22 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %174

25:                                               ; preds = %15, %4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %174

31:                                               ; preds = %25
  %32 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %33 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TC_MAX_QUEUE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %39 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %174

42:                                               ; preds = %31
  %43 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %44 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %52 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %51, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %174

55:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @TC_BITMASK, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %63 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %70 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %75 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %74, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %174

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %56

82:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %170, %82
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %86 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %173

89:                                               ; preds = %83
  %90 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %91 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %98 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %96, %103
  store i32 %104, i32* %12, align 4
  %105 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %106 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp uge i32 %111, %114
  br i1 %115, label %131, label %116

116:                                              ; preds = %89
  %117 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %118 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ugt i32 %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125, %116, %89
  %132 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %133 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %132, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %174

136:                                              ; preds = %125
  %137 = load i32, i32* %9, align 4
  %138 = call i64 @TXTIME_ASSIST_IS_ENABLED(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %170

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %166, %141
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %147 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %144
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %7, align 8
  %153 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ugt i32 %151, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %150
  %161 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %162 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %161, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %174

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %144

169:                                              ; preds = %144
  br label %170

170:                                              ; preds = %169, %140
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %83

173:                                              ; preds = %83
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %160, %131, %73, %50, %37, %30, %20
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @TXTIME_ASSIST_IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
