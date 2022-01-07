; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.hhf_sched_data = type { i32, i32, i32, i32, i32, %struct.wdrr_bucket*, i32*, i32, i8**, i64, i64, i64, i32*, i32, i32, i32, i32 }
%struct.wdrr_bucket = type { i32 }

@HZ = common dso_local global i32 0, align 4
@HH_FLOWS_CNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HHF_ARRAYS_CNT = common dso_local global i32 0, align 4
@HHF_ARRAYS_LEN = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@WDRR_BUCKET_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @hhf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hhf_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.hhf_sched_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wdrr_bucket*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.hhf_sched_data* %13, %struct.hhf_sched_data** %8, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 0
  store i32 1000, i32* %15, align 4
  %16 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %17 = call i32 @qdisc_dev(%struct.Qdisc* %16)
  %18 = call i32 @psched_mtu(i32 %17)
  %19 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %20 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %19, i32 0, i32 16
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %22 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %21, i32 0, i32 15
  %23 = call i32 @get_random_bytes(i32* %22, i32 4)
  %24 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %25 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %24, i32 0, i32 14
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %28 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %27, i32 0, i32 13
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i32, i32* @HZ, align 4
  %31 = sdiv i32 %30, 25
  %32 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %33 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %35 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %34, i32 0, i32 1
  store i32 131072, i32* %35, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %38 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %39, i32 0, i32 3
  store i32 2, i32* %40, align 4
  %41 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %3
  %44 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %47 = call i32 @hhf_change(%struct.Qdisc* %44, %struct.nlattr* %45, %struct.netlink_ext_ack* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %183

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %55 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %54, i32 0, i32 12
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %182, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @HH_FLOWS_CNT, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kvcalloc(i32 %59, i32 4, i32 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %64 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %63, i32 0, i32 12
  store i32* %62, i32** %64, align 8
  %65 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %66 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %65, i32 0, i32 12
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %183

72:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %85, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @HH_FLOWS_CNT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %79 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %78, i32 0, i32 12
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %73

88:                                               ; preds = %73
  %89 = load i32, i32* @HH_FLOWS_CNT, align 4
  %90 = mul nsw i32 2, %89
  %91 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %92 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %94 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %93, i32 0, i32 11
  store i64 0, i64* %94, align 8
  %95 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %96 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %95, i32 0, i32 10
  store i64 0, i64* %96, align 8
  %97 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %98 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %97, i32 0, i32 9
  store i64 0, i64* %98, align 8
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %125, %88
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = load i32, i32* @HHF_ARRAYS_LEN, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @kvcalloc(i32 %104, i32 4, i32 %105)
  %107 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %108 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %107, i32 0, i32 8
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %106, i8** %112, align 8
  %113 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %114 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %113, i32 0, i32 8
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %103
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %183

124:                                              ; preds = %103
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %99

128:                                              ; preds = %99
  %129 = call i32 (...) @hhf_time_stamp()
  %130 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %131 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 8
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %160, %128
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %132
  %137 = load i32, i32* @HHF_ARRAYS_LEN, align 4
  %138 = load i32, i32* @BITS_PER_BYTE, align 4
  %139 = sdiv i32 %137, %138
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i32 @kvzalloc(i32 %139, i32 %140)
  %142 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %143 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  %148 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %149 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %136
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %183

159:                                              ; preds = %136
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %132

163:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %164

164:                                              ; preds = %178, %163
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @WDRR_BUCKET_CNT, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %8, align 8
  %170 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %169, i32 0, i32 5
  %171 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %171, i64 %173
  store %struct.wdrr_bucket* %174, %struct.wdrr_bucket** %11, align 8
  %175 = load %struct.wdrr_bucket*, %struct.wdrr_bucket** %11, align 8
  %176 = getelementptr inbounds %struct.wdrr_bucket, %struct.wdrr_bucket* %175, i32 0, i32 0
  %177 = call i32 @INIT_LIST_HEAD(i32* %176)
  br label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %164

181:                                              ; preds = %164
  br label %182

182:                                              ; preds = %181, %53
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %156, %121, %69, %50
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hhf_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i8* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @hhf_time_stamp(...) #1

declare dso_local i32 @kvzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
