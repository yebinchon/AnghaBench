; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_new_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_new_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_seq = type { i64 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32 }
%struct.dccp_sock = type { i32, i32, i32 }

@CCID2_WIN_CHANGE_FACTOR = common dso_local global i32 0, align 4
@ccid2_jiffies32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ccid2_seq*, i32*)* @ccid2_new_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_new_ack(%struct.sock* %0, %struct.ccid2_seq* %1, i32* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.ccid2_seq*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %8 = alloca %struct.dccp_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.ccid2_seq* %1, %struct.ccid2_seq** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %10)
  store %struct.ccid2_hc_tx_sock* %11, %struct.ccid2_hc_tx_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %12)
  store %struct.dccp_sock* %13, %struct.dccp_sock** %8, align 8
  %14 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %15 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %18 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %22 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %25 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %28
  %35 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %36 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %39 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ugt i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %48 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %54 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %61 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %46, %42
  br label %80

63:                                               ; preds = %34
  %64 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %65 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %69 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %74 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %78 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %63
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %28, %3
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @CCID2_WIN_CHANGE_FACTOR, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %86 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load %struct.sock*, %struct.sock** %4, align 8
  %91 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %92 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 2
  %95 = call i32 @ccid2_change_l_ack_ratio(%struct.sock* %90, i32 %94)
  br label %118

96:                                               ; preds = %81
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @CCID2_WIN_CHANGE_FACTOR, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %101 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 2
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %96
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %108 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %114

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %112
  %115 = phi i32 [ %110, %112 ], [ 1, %113 ]
  %116 = call i32 @ccid2_change_l_ack_ratio(%struct.sock* %106, i32 %115)
  br label %117

117:                                              ; preds = %114, %96
  br label %118

118:                                              ; preds = %117, %89
  %119 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %120 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CCID2_WIN_CHANGE_FACTOR, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %125 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %118
  %129 = load %struct.sock*, %struct.sock** %4, align 8
  %130 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %131 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 2
  %134 = call i32 @ccid2_change_l_seq_window(%struct.sock* %129, i32 %133)
  br label %154

135:                                              ; preds = %118
  %136 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %137 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @CCID2_WIN_CHANGE_FACTOR, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %142 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, 2
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %135
  %147 = load %struct.sock*, %struct.sock** %4, align 8
  %148 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %149 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %150, 2
  %152 = call i32 @ccid2_change_l_seq_window(%struct.sock* %147, i32 %151)
  br label %153

153:                                              ; preds = %146, %135
  br label %154

154:                                              ; preds = %153, %128
  %155 = load %struct.sock*, %struct.sock** %4, align 8
  %156 = load i64, i64* @ccid2_jiffies32, align 8
  %157 = load %struct.ccid2_seq*, %struct.ccid2_seq** %5, align 8
  %158 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  %161 = call i32 @ccid2_rtt_estimator(%struct.sock* %155, i64 %160)
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @ccid2_change_l_ack_ratio(%struct.sock*, i32) #1

declare dso_local i32 @ccid2_change_l_seq_window(%struct.sock*, i32) #1

declare dso_local i32 @ccid2_rtt_estimator(%struct.sock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
