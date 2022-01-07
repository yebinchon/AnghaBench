; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_change_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_change_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.drr_sched = type { i32 }
%struct.drr_class = type { %struct.TYPE_2__, i32*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_DRR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"DRR options are required for this operation\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@drr_policy = common dso_local global i32 0, align 4
@TCA_DRR_QUANTUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Specified DRR quantum cannot be zero\00", align 1
@TCA_RATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to replace estimator\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, i64, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)* @drr_change_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_change_class(%struct.Qdisc* %0, i64 %1, i64 %2, %struct.nlattr** %3, i64* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.drr_sched*, align 8
  %15 = alloca %struct.drr_class*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %23 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %22)
  store %struct.drr_sched* %23, %struct.drr_sched** %14, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.drr_class*
  store %struct.drr_class* %26, %struct.drr_class** %15, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %28 = load i64, i64* @TCA_OPTIONS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  store %struct.nlattr* %30, %struct.nlattr** %16, align 8
  %31 = load i32, i32* @TCA_DRR_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %17, align 8
  %35 = alloca %struct.nlattr*, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %6
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %40 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

43:                                               ; preds = %6
  %44 = load i32, i32* @TCA_DRR_MAX, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %46 = load i32, i32* @drr_policy, align 4
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %48 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %35, i32 %44, %struct.nlattr* %45, i32 %46, %struct.netlink_ext_ack* %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

53:                                               ; preds = %43
  %54 = load i64, i64* @TCA_DRR_QUANTUM, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp ne %struct.nlattr* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i64, i64* @TCA_DRR_QUANTUM, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i64 @nla_get_u32(%struct.nlattr* %61)
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %19, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %67 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

70:                                               ; preds = %58
  br label %75

71:                                               ; preds = %53
  %72 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %73 = call i32 @qdisc_dev(%struct.Qdisc* %72)
  %74 = call i64 @psched_mtu(i32 %73)
  store i64 %74, i64* %19, align 8
  br label %75

75:                                               ; preds = %71, %70
  %76 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %77 = icmp ne %struct.drr_class* %76, null
  br i1 %77, label %78, label %117

78:                                               ; preds = %75
  %79 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %80 = load i64, i64* @TCA_RATE, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %86 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %85, i32 0, i32 3
  %87 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %88 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %87, i32 0, i32 2
  %89 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %90 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %89)
  %91 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %92 = load i64, i64* @TCA_RATE, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %91, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @gen_replace_estimator(i32* %86, i32* null, i32* %88, i32* null, i32 %90, %struct.nlattr* %94)
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %100 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* %20, align 4
  store i32 %101, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102, %78
  %104 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %105 = call i32 @sch_tree_lock(%struct.Qdisc* %104)
  %106 = load i64, i64* @TCA_DRR_QUANTUM, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = icmp ne %struct.nlattr* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i64, i64* %19, align 8
  %112 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %113 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %116 = call i32 @sch_tree_unlock(%struct.Qdisc* %115)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

117:                                              ; preds = %75
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call %struct.drr_class* @kzalloc(i32 32, i32 %118)
  store %struct.drr_class* %119, %struct.drr_class** %15, align 8
  %120 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %121 = icmp eq %struct.drr_class* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @ENOBUFS, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

125:                                              ; preds = %117
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %128 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %132 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %134 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %9, align 8
  %137 = call i32* @qdisc_create_dflt(i32 %135, i32* @pfifo_qdisc_ops, i64 %136, i32* null)
  %138 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %139 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %141 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %125
  %145 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %146 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %145, i32 0, i32 1
  store i32* @noop_qdisc, i32** %146, align 8
  br label %152

147:                                              ; preds = %125
  %148 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %149 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @qdisc_hash_add(i32* %150, i32 1)
  br label %152

152:                                              ; preds = %147, %144
  %153 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %154 = load i64, i64* @TCA_RATE, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %153, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %183

158:                                              ; preds = %152
  %159 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %160 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %159, i32 0, i32 3
  %161 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %162 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %161, i32 0, i32 2
  %163 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %164 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %163)
  %165 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %166 = load i64, i64* @TCA_RATE, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i32 @gen_replace_estimator(i32* %160, i32* null, i32* %162, i32* null, i32 %164, %struct.nlattr* %168)
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %158
  %173 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %174 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %175 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %176 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @qdisc_put(i32* %177)
  %179 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %180 = call i32 @kfree(%struct.drr_class* %179)
  %181 = load i32, i32* %20, align 4
  store i32 %181, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

182:                                              ; preds = %158
  br label %183

183:                                              ; preds = %182, %152
  %184 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %185 = call i32 @sch_tree_lock(%struct.Qdisc* %184)
  %186 = load %struct.drr_sched*, %struct.drr_sched** %14, align 8
  %187 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %186, i32 0, i32 0
  %188 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %189 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %188, i32 0, i32 0
  %190 = call i32 @qdisc_class_hash_insert(i32* %187, %struct.TYPE_2__* %189)
  %191 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %192 = call i32 @sch_tree_unlock(%struct.Qdisc* %191)
  %193 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %194 = load %struct.drr_sched*, %struct.drr_sched** %14, align 8
  %195 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %194, i32 0, i32 0
  %196 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %193, i32* %195)
  %197 = load %struct.drr_class*, %struct.drr_class** %15, align 8
  %198 = ptrtoint %struct.drr_class* %197 to i64
  %199 = load i64*, i64** %12, align 8
  store i64 %198, i64* %199, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %200

200:                                              ; preds = %183, %172, %122, %114, %98, %65, %51, %38
  %201 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %7, align 4
  ret i32 %202
}

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local %struct.drr_class* @kzalloc(i32, i32) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32*, i64, i32*) #1

declare dso_local i32 @qdisc_hash_add(i32*, i32) #1

declare dso_local i32 @qdisc_put(i32*) #1

declare dso_local i32 @kfree(%struct.drr_class*) #1

declare dso_local i32 @qdisc_class_hash_insert(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @qdisc_class_hash_grow(%struct.Qdisc*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
