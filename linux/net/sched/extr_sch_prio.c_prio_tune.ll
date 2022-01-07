; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_tune.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.prio_sched_data = type { i32, %struct.Qdisc**, i32 }
%struct.tc_prio_qopt = type { i32, i32* }

@TCQ_PRIO_BANDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TC_PRIO_MAX = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @prio_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_tune(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.prio_sched_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tc_prio_qopt*, align 8
  %14 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.prio_sched_data* %16, %struct.prio_sched_data** %8, align 8
  %17 = load i32, i32* @TCQ_PRIO_BANDS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.Qdisc*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %22 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %25 = call i32 @nla_len(%struct.nlattr* %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %220

31:                                               ; preds = %3
  %32 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %33 = call %struct.tc_prio_qopt* @nla_data(%struct.nlattr* %32)
  store %struct.tc_prio_qopt* %33, %struct.tc_prio_qopt** %13, align 8
  %34 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %35 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TCQ_PRIO_BANDS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %41 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %220

47:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @TC_PRIO_MAX, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %54 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %61 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %220

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %115, %71
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %76 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %118

79:                                               ; preds = %73
  %80 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %81 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %84 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @TC_H_MAKE(i32 %85, i32 %87)
  %89 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %90 = call %struct.Qdisc* @qdisc_create_dflt(i32 %82, i32* @pfifo_qdisc_ops, i32 %88, %struct.netlink_ext_ack* %89)
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %20, i64 %92
  store %struct.Qdisc* %90, %struct.Qdisc** %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %20, i64 %95
  %97 = load %struct.Qdisc*, %struct.Qdisc** %96, align 8
  %98 = icmp ne %struct.Qdisc* %97, null
  br i1 %98, label %114, label %99

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %20, i64 %107
  %109 = load %struct.Qdisc*, %struct.Qdisc** %108, align 8
  %110 = call i32 @qdisc_put(%struct.Qdisc* %109)
  br label %100

111:                                              ; preds = %100
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %220

114:                                              ; preds = %79
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %73

118:                                              ; preds = %73
  %119 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %120 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %121 = call i32 @prio_offload(%struct.Qdisc* %119, %struct.tc_prio_qopt* %120)
  %122 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %123 = call i32 @sch_tree_lock(%struct.Qdisc* %122)
  %124 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %125 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %128 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %130 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %13, align 8
  %133 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @TC_PRIO_MAX, align 4
  %136 = add nsw i32 %135, 1
  %137 = call i32 @memcpy(i32 %131, i32* %134, i32 %136)
  %138 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %139 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %154, %118
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %147 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %146, i32 0, i32 1
  %148 = load %struct.Qdisc**, %struct.Qdisc*** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %148, i64 %150
  %152 = load %struct.Qdisc*, %struct.Qdisc** %151, align 8
  %153 = call i32 @qdisc_tree_flush_backlog(%struct.Qdisc* %152)
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %141

157:                                              ; preds = %141
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %194, %157
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %162 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %197

165:                                              ; preds = %159
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %20, i64 %167
  %169 = load %struct.Qdisc*, %struct.Qdisc** %168, align 8
  %170 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %171 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %170, i32 0, i32 1
  %172 = load %struct.Qdisc**, %struct.Qdisc*** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %172, i64 %174
  store %struct.Qdisc* %169, %struct.Qdisc** %175, align 8
  %176 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %177 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %176, i32 0, i32 1
  %178 = load %struct.Qdisc**, %struct.Qdisc*** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %178, i64 %180
  %182 = load %struct.Qdisc*, %struct.Qdisc** %181, align 8
  %183 = icmp ne %struct.Qdisc* %182, @noop_qdisc
  br i1 %183, label %184, label %193

184:                                              ; preds = %165
  %185 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %186 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %185, i32 0, i32 1
  %187 = load %struct.Qdisc**, %struct.Qdisc*** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %187, i64 %189
  %191 = load %struct.Qdisc*, %struct.Qdisc** %190, align 8
  %192 = call i32 @qdisc_hash_add(%struct.Qdisc* %191, i32 1)
  br label %193

193:                                              ; preds = %184, %165
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %159

197:                                              ; preds = %159
  %198 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %199 = call i32 @sch_tree_unlock(%struct.Qdisc* %198)
  %200 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %201 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %12, align 4
  br label %203

203:                                              ; preds = %216, %197
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %219

207:                                              ; preds = %203
  %208 = load %struct.prio_sched_data*, %struct.prio_sched_data** %8, align 8
  %209 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %208, i32 0, i32 1
  %210 = load %struct.Qdisc**, %struct.Qdisc*** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %210, i64 %212
  %214 = load %struct.Qdisc*, %struct.Qdisc** %213, align 8
  %215 = call i32 @qdisc_put(%struct.Qdisc* %214)
  br label %216

216:                                              ; preds = %207
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %203

219:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %220

220:                                              ; preds = %219, %111, %64, %44, %28
  %221 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_prio_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local i32 @prio_offload(%struct.Qdisc*, %struct.tc_prio_qopt*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qdisc_tree_flush_backlog(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_hash_add(%struct.Qdisc*, i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
