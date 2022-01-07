; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_rtt_estimator.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_rtt_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DCCP_RTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @ccid2_rtt_estimator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_rtt_estimator(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %7)
  store %struct.ccid2_hc_tx_sock* %8, %struct.ccid2_hc_tx_sock** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i64 [ %9, %11 ], [ 1, %12 ]
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %16 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = shl i64 %20, 3
  %22 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %23 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = shl i64 %24, 1
  %26 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %27 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %29 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @tcp_rto_min(%struct.sock* %31)
  %33 = call i64 @max(i64 %30, i32 %32)
  %34 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %35 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %37 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %40 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %46 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  br label %160

47:                                               ; preds = %13
  %48 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %49 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = ashr i64 %50, 3
  %52 = load i64, i64* %6, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %56 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %47
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %6, align 8
  %64 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %65 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = ashr i64 %66, 2
  %68 = load i64, i64* %6, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i64, i64* %6, align 8
  %74 = ashr i64 %73, 3
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %72, %61
  br label %83

76:                                               ; preds = %47
  %77 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %78 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = ashr i64 %79, 2
  %81 = load i64, i64* %6, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %76, %75
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %86 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %90 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %93 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %83
  %97 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %98 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %101 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %103 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %106 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %104, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %96
  %110 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %111 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %114 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %109, %96
  br label %116

116:                                              ; preds = %115, %83
  %117 = load %struct.sock*, %struct.sock** %3, align 8
  %118 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %122 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @after48(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %116
  %127 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %128 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %131 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %126
  %135 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %136 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %139 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = ashr i64 %141, 2
  %143 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %144 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %134, %126
  %148 = load %struct.sock*, %struct.sock** %3, align 8
  %149 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %148)
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %153 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.sock*, %struct.sock** %3, align 8
  %155 = call i32 @tcp_rto_min(%struct.sock* %154)
  %156 = sext i32 %155 to i64
  %157 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %158 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %147, %116
  br label %160

160:                                              ; preds = %159, %19
  %161 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %162 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = ashr i64 %163, 3
  %165 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %166 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %164, %167
  %169 = trunc i64 %168 to i32
  %170 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %171 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %173 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @DCCP_RTO_MAX, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %160
  %178 = load i32, i32* @DCCP_RTO_MAX, align 4
  %179 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %180 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %177, %160
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @tcp_rto_min(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @after48(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
