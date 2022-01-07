; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_num_comp_pkts_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_num_comp_pkts_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_ev_num_comp_pkts = type { i32, %struct.hci_comp_pkts_info* }
%struct.hci_comp_pkts_info = type { i32, i32 }
%struct.hci_conn = type { i32, i32 }

@HCI_FLOW_CTL_MODE_PACKET_BASED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"wrong event for mode %d\00", align 1
@handles = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s bad parameters\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s num_hndl %d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown type %d conn %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_num_comp_pkts_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_num_comp_pkts_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_num_comp_pkts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_comp_pkts_info*, align 8
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hci_ev_num_comp_pkts*
  store %struct.hci_ev_num_comp_pkts* %15, %struct.hci_ev_num_comp_pkts** %5, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HCI_FLOW_CTL_MODE_PACKET_BASED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (%struct.hci_dev*, i8*, i32, ...) @bt_dev_err(%struct.hci_dev* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %208

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 16
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %39 = load i32, i32* @handles, align 4
  %40 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %41 = getelementptr inbounds %struct.hci_ev_num_comp_pkts, %struct.hci_ev_num_comp_pkts* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @struct_size(%struct.hci_ev_num_comp_pkts* %38, i32 %39, i32 %42)
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %34, %28
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %208

50:                                               ; preds = %34
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %55 = getelementptr inbounds %struct.hci_ev_num_comp_pkts, %struct.hci_ev_num_comp_pkts* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %198, %50
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %61 = getelementptr inbounds %struct.hci_ev_num_comp_pkts, %struct.hci_ev_num_comp_pkts* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %201

64:                                               ; preds = %58
  %65 = load %struct.hci_ev_num_comp_pkts*, %struct.hci_ev_num_comp_pkts** %5, align 8
  %66 = getelementptr inbounds %struct.hci_ev_num_comp_pkts, %struct.hci_ev_num_comp_pkts* %65, i32 0, i32 1
  %67 = load %struct.hci_comp_pkts_info*, %struct.hci_comp_pkts_info** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.hci_comp_pkts_info, %struct.hci_comp_pkts_info* %67, i64 %69
  store %struct.hci_comp_pkts_info* %70, %struct.hci_comp_pkts_info** %7, align 8
  %71 = load %struct.hci_comp_pkts_info*, %struct.hci_comp_pkts_info** %7, align 8
  %72 = getelementptr inbounds %struct.hci_comp_pkts_info, %struct.hci_comp_pkts_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @__le16_to_cpu(i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.hci_comp_pkts_info*, %struct.hci_comp_pkts_info** %7, align 8
  %76 = getelementptr inbounds %struct.hci_comp_pkts_info, %struct.hci_comp_pkts_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @__le16_to_cpu(i32 %77)
  store i64 %78, i64* %10, align 8
  %79 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %79, i64 %80)
  store %struct.hci_conn* %81, %struct.hci_conn** %8, align 8
  %82 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %83 = icmp ne %struct.hci_conn* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %64
  br label %198

85:                                               ; preds = %64
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %88 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %94 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %190 [
    i32 130, label %96
    i32 129, label %118
    i32 128, label %168
  ]

96:                                               ; preds = %85
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %99 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %97
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %105 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %108 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %96
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %116 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %96
  br label %197

118:                                              ; preds = %85
  %119 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %118
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %126 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %132 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %135 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %123
  %139 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %140 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %143 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %138, %123
  br label %167

145:                                              ; preds = %118
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %148 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %157 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %145
  %161 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %162 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %165 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %145
  br label %167

167:                                              ; preds = %166, %144
  br label %197

168:                                              ; preds = %85
  %169 = load i64, i64* %10, align 8
  %170 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %171 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %169
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 4
  %176 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %177 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %180 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %168
  %184 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %185 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %188 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %183, %168
  br label %197

190:                                              ; preds = %85
  %191 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %192 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %193 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %196 = call i32 (%struct.hci_dev*, i8*, i32, ...) @bt_dev_err(%struct.hci_dev* %191, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %194, %struct.hci_conn* %195)
  br label %197

197:                                              ; preds = %190, %189, %167, %117
  br label %198

198:                                              ; preds = %197, %84
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %58

201:                                              ; preds = %58
  %202 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %203 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %206 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %205, i32 0, i32 1
  %207 = call i32 @queue_work(i32 %204, i32* %206)
  br label %208

208:                                              ; preds = %201, %45, %21
  ret void
}

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32, ...) #1

declare dso_local i32 @struct_size(%struct.hci_ev_num_comp_pkts*, i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
