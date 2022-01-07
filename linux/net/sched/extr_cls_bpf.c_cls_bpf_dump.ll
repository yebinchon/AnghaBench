; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32 }
%struct.cls_bpf_prog = type { i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_BPF_CLASSID = common dso_local global i32 0, align 4
@TCA_BPF_FLAG_ACT_DIRECT = common dso_local global i64 0, align 8
@TCA_BPF_FLAGS = common dso_local global i32 0, align 4
@TCA_BPF_FLAGS_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i32)* @cls_bpf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_bpf_dump(%struct.net* %0, %struct.tcf_proto* %1, i8* %2, %struct.sk_buff* %3, %struct.tcmsg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcf_proto*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cls_bpf_prog*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store %struct.tcmsg* %4, %struct.tcmsg** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.cls_bpf_prog*
  store %struct.cls_bpf_prog* %19, %struct.cls_bpf_prog** %14, align 8
  store i64 0, i64* %16, align 8
  %20 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %21 = icmp eq %struct.cls_bpf_prog* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %131

26:                                               ; preds = %6
  %27 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %28 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %31 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tcf_proto*, %struct.tcf_proto** %9, align 8
  %33 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %34 = call i32 @cls_bpf_offload_update_stats(%struct.tcf_proto* %32, %struct.cls_bpf_prog* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = load i32, i32* @TCA_OPTIONS, align 4
  %37 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %35, i32 %36)
  store %struct.nlattr* %37, %struct.nlattr** %15, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %127

41:                                               ; preds = %26
  %42 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %43 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = load i32, i32* @TCA_BPF_CLASSID, align 4
  %50 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %51 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %127

57:                                               ; preds = %47, %41
  %58 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %59 = call i64 @cls_bpf_is_ebpf(%struct.cls_bpf_prog* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = call i32 @cls_bpf_dump_ebpf_info(%struct.cls_bpf_prog* %62, %struct.sk_buff* %63)
  store i32 %64, i32* %17, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = call i32 @cls_bpf_dump_bpf_info(%struct.cls_bpf_prog* %66, %struct.sk_buff* %67)
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %127

73:                                               ; preds = %69
  %74 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %75 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %76 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %75, i32 0, i32 0
  %77 = call i64 @tcf_exts_dump(%struct.sk_buff* %74, i32* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %127

80:                                               ; preds = %73
  %81 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %82 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i64, i64* @TCA_BPF_FLAG_ACT_DIRECT, align 8
  %87 = load i64, i64* %16, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %16, align 8
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i64, i64* %16, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = load i32, i32* @TCA_BPF_FLAGS, align 4
  %95 = load i64, i64* %16, align 8
  %96 = call i64 @nla_put_u32(%struct.sk_buff* %93, i32 %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %127

99:                                               ; preds = %92, %89
  %100 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %101 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = load i32, i32* @TCA_BPF_FLAGS_GEN, align 4
  %107 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %108 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @nla_put_u32(%struct.sk_buff* %105, i32 %106, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %127

113:                                              ; preds = %104, %99
  %114 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %116 = call i32 @nla_nest_end(%struct.sk_buff* %114, %struct.nlattr* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %14, align 8
  %119 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %118, i32 0, i32 0
  %120 = call i64 @tcf_exts_dump_stats(%struct.sk_buff* %117, i32* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %127

123:                                              ; preds = %113
  %124 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %7, align 4
  br label %131

127:                                              ; preds = %122, %112, %98, %79, %72, %56, %40
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %130 = call i32 @nla_nest_cancel(%struct.sk_buff* %128, %struct.nlattr* %129)
  store i32 -1, i32* %7, align 4
  br label %131

131:                                              ; preds = %127, %123, %22
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @cls_bpf_offload_update_stats(%struct.tcf_proto*, %struct.cls_bpf_prog*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @cls_bpf_is_ebpf(%struct.cls_bpf_prog*) #1

declare dso_local i32 @cls_bpf_dump_ebpf_info(%struct.cls_bpf_prog*, %struct.sk_buff*) #1

declare dso_local i32 @cls_bpf_dump_bpf_info(%struct.cls_bpf_prog*, %struct.sk_buff*) #1

declare dso_local i64 @tcf_exts_dump(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @tcf_exts_dump_stats(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
