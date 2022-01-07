; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_xdp_fd.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_xdp_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@XDP_FLAGS_HW_MODE = common dso_local global i64 0, align 8
@XDP_QUERY_PROG_HW = common dso_local global i32 0, align 4
@XDP_QUERY_PROG = common dso_local global i32 0, align 4
@XDP_FLAGS_DRV_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"underlying driver does not support XDP in native mode\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XDP_FLAGS_SKB_MODE = common dso_local global i64 0, align 8
@generic_xdp_install = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"native and generic XDP can't be active at the same time\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"XDP program already attached\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"using device-bound program without HW_MODE flag is not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_change_xdp_fd(%struct.net_device* %0, %struct.netlink_ext_ack* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_prog*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.net_device_ops*, %struct.net_device_ops** %19, align 8
  store %struct.net_device_ops* %20, %struct.net_device_ops** %10, align 8
  store %struct.bpf_prog* null, %struct.bpf_prog** %12, align 8
  %21 = call i32 (...) @ASSERT_RTNL()
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @XDP_FLAGS_HW_MODE, align 8
  %24 = and i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @XDP_QUERY_PROG_HW, align 4
  br label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @XDP_QUERY_PROG, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %11, align 4
  %34 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %35 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @XDP_FLAGS_DRV_MODE, align 8
  %42 = load i64, i64* @XDP_FLAGS_HW_MODE, align 8
  %43 = or i64 %41, %42
  %44 = and i64 %40, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %48 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %177

51:                                               ; preds = %39, %32
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @XDP_FLAGS_SKB_MODE, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %51
  %60 = load i64, i64* @generic_xdp_install, align 8
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* @generic_xdp_install, align 8
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %152

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %70
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* @XDP_QUERY_PROG, align 4
  %77 = call i64 @__dev_xdp_query(%struct.net_device* %74, i64 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %81 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %80, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EEXIST, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %177

84:                                               ; preds = %73, %70
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @__dev_xdp_query(%struct.net_device* %85, i64 %86, i32 %87)
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load i64, i64* %17, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %98 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %177

101:                                              ; preds = %93, %84
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %106 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  %109 = zext i1 %108 to i32
  %110 = call %struct.bpf_prog* @bpf_prog_get_type_dev(i32 %102, i32 %103, i32 %109)
  store %struct.bpf_prog* %110, %struct.bpf_prog** %12, align 8
  %111 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %112 = call i64 @IS_ERR(%struct.bpf_prog* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %116 = call i32 @PTR_ERR(%struct.bpf_prog* %115)
  store i32 %116, i32* %5, align 4
  br label %177

117:                                              ; preds = %101
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %122 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = call i64 @bpf_prog_is_dev_bound(%struct.TYPE_2__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %128 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %127, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %130 = call i32 @bpf_prog_put(%struct.bpf_prog* %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %177

133:                                              ; preds = %120, %117
  %134 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %135 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %142 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %17, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %150 = call i32 @bpf_prog_put(%struct.bpf_prog* %149)
  store i32 0, i32* %5, align 4
  br label %177

151:                                              ; preds = %140, %133
  br label %160

152:                                              ; preds = %67
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = load i64, i64* %13, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i64 @__dev_xdp_query(%struct.net_device* %153, i64 %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %177

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %151
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = load i64, i64* %13, align 8
  %163 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %166 = call i32 @dev_xdp_install(%struct.net_device* %161, i64 %162, %struct.netlink_ext_ack* %163, i64 %164, %struct.bpf_prog* %165)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %160
  %170 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %171 = icmp ne %struct.bpf_prog* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %174 = call i32 @bpf_prog_put(%struct.bpf_prog* %173)
  br label %175

175:                                              ; preds = %172, %169, %160
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %158, %148, %126, %114, %96, %79, %46
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @__dev_xdp_query(%struct.net_device*, i64, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get_type_dev(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i64 @bpf_prog_is_dev_bound(%struct.TYPE_2__*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @dev_xdp_install(%struct.net_device*, i64, %struct.netlink_ext_ack*, i64, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
