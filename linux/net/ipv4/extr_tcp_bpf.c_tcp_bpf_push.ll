; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_push.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.scatterlist = type { i32, i32 }
%struct.page = type { i32 }

@MSG_SENDPAGE_NOPOLICY = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_msg*, i32, i32, i32)* @tcp_bpf_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_bpf_push(%struct.sock* %0, %struct.sk_msg* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %20

20:                                               ; preds = %5, %149
  %21 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %22 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %23 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %21, i64 %25)
  store %struct.scatterlist* %26, %struct.scatterlist** %13, align 8
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  br label %41

37:                                               ; preds = %29, %20
  %38 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %37 ]
  store i32 %42, i32* %15, align 4
  %43 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %44 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %47 = call %struct.page* @sg_page(%struct.scatterlist* %46)
  store %struct.page* %47, %struct.page** %14, align 8
  %48 = load %struct.sock*, %struct.sock** %7, align 8
  %49 = call i32 @tcp_rate_check_app_limited(%struct.sock* %48)
  br label %50

50:                                               ; preds = %111, %41
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = call i32 @tls_sw_has_ctx_tx(%struct.sock* %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* @MSG_SENDPAGE_NOPOLICY, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.sock*, %struct.sock** %7, align 8
  %60 = load %struct.page*, %struct.page** %14, align 8
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @kernel_sendpage_locked(%struct.sock* %59, %struct.page* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  br label %72

65:                                               ; preds = %50
  %66 = load %struct.sock*, %struct.sock** %7, align 8
  %67 = load %struct.page*, %struct.page** %14, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @do_tcp_sendpages(%struct.sock* %66, %struct.page* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %65, %55
  %73 = load i32, i32* %16, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %6, align 4
  br label %151

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %87 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, %85
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %93 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %98 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %84
  %104 = load %struct.sock*, %struct.sock** %7, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @sk_mem_uncharge(%struct.sock* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %84
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %17, align 4
  br label %50

118:                                              ; preds = %107
  %119 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %120 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %142, label %123

123:                                              ; preds = %118
  %124 = load %struct.page*, %struct.page** %14, align 8
  %125 = call i32 @put_page(%struct.page* %124)
  %126 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %127 = load i32, i32* @start, align 4
  %128 = call i32 @sk_msg_iter_next(%struct.sk_msg* %126, i32 %127)
  %129 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %130 = call i32 @sg_init_table(%struct.scatterlist* %129, i32 1)
  %131 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %132 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %136 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %123
  br label %150

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141, %118
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %150

149:                                              ; preds = %145, %142
  br label %20

150:                                              ; preds = %148, %140
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %75
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i64) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @tcp_rate_check_app_limited(%struct.sock*) #1

declare dso_local i32 @tls_sw_has_ctx_tx(%struct.sock*) #1

declare dso_local i32 @kernel_sendpage_locked(%struct.sock*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @do_tcp_sendpages(%struct.sock*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @sk_msg_iter_next(%struct.sk_msg*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
