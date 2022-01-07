; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_rx_call_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_rx_call_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock*, i64, i64 }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.rose_neigh = type { i32 }
%struct.rose_sock = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, %struct.rose_neigh*, %struct.rose_facilities_struct, %struct.net_device*, i32*, i32, i32, i32*, i32, i32 }
%struct.rose_facilities_struct = type { i32, i32, i32*, i32, i32, i32*, i32, i32 }

@ROSE_CALL_REQ_FACILITIES_OFF = common dso_local global i64 0, align 8
@ROSE_INVALID_FACILITY = common dso_local global i32 0, align 4
@ROSE_NETWORK_CONGESTION = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@ROSE_STATE_5 = common dso_local global i32 0, align 4
@ROSE_CALL_ACCEPTED = common dso_local global i32 0, align 4
@ROSE_STATE_3 = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rose_rx_call_request(%struct.sk_buff* %0, %struct.net_device* %1, %struct.rose_neigh* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.rose_neigh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.rose_sock*, align 8
  %13 = alloca %struct.rose_facilities_struct, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.rose_neigh* %2, %struct.rose_neigh** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %16, align 8
  %17 = call i32 @memset(%struct.rose_facilities_struct* %13, i32 0, i32 40)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ROSE_CALL_REQ_FACILITIES_OFF, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ROSE_CALL_REQ_FACILITIES_OFF, align 8
  %27 = sub nsw i64 %25, %26
  %28 = call i32 @rose_parse_facilities(i64 %22, i64 %27, %struct.rose_facilities_struct* %13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load %struct.rose_neigh*, %struct.rose_neigh** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ROSE_INVALID_FACILITY, align 4
  %34 = call i32 @rose_transmit_clear_request(%struct.rose_neigh* %31, i32 %32, i32 %33, i32 76)
  store i32 0, i32* %5, align 4
  br label %202

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 4
  %37 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 3
  %38 = call %struct.sock* @rose_find_listener(i32* %36, i32* %37)
  store %struct.sock* %38, %struct.sock** %10, align 8
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = icmp eq %struct.sock* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call i64 @sk_acceptq_is_full(%struct.sock* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = call %struct.sock* @rose_make_new(%struct.sock* %46)
  store %struct.sock* %47, %struct.sock** %11, align 8
  %48 = icmp eq %struct.sock* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %41, %35
  %50 = load %struct.rose_neigh*, %struct.rose_neigh** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ROSE_NETWORK_CONGESTION, align 4
  %53 = call i32 @rose_transmit_clear_request(%struct.rose_neigh* %50, i32 %51, i32 %52, i32 120)
  store i32 0, i32* %5, align 4
  br label %202

54:                                               ; preds = %45
  %55 = load %struct.sock*, %struct.sock** %11, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  store %struct.sock* %55, %struct.sock** %57, align 8
  %58 = load i32, i32* @TCP_ESTABLISHED, align 4
  %59 = load %struct.sock*, %struct.sock** %11, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sock*, %struct.sock** %11, align 8
  %62 = call %struct.rose_sock* @rose_sk(%struct.sock* %61)
  store %struct.rose_sock* %62, %struct.rose_sock** %12, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %65 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %69 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %68, i32 0, i32 18
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %73 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %72, i32 0, i32 17
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %77 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %96, %54
  %79 = load i32, i32* %14, align 4
  %80 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %91 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %90, i32 0, i32 16
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %78

99:                                               ; preds = %78
  %100 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %103 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %102, i32 0, i32 15
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %107 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 8
  %108 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %111 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %130, %99
  %113 = load i32, i32* %14, align 4
  %114 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %13, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %125 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %124, i32 0, i32 13
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  br label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %112

133:                                              ; preds = %112
  %134 = load %struct.rose_neigh*, %struct.rose_neigh** %8, align 8
  %135 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %136 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %135, i32 0, i32 10
  store %struct.rose_neigh* %134, %struct.rose_neigh** %136, align 8
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %139 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %138, i32 0, i32 12
  store %struct.net_device* %137, %struct.net_device** %139, align 8
  %140 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %141 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %140, i32 0, i32 11
  %142 = bitcast %struct.rose_facilities_struct* %141 to i8*
  %143 = bitcast %struct.rose_facilities_struct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 40, i1 false)
  %144 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %145 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %144, i32 0, i32 10
  %146 = load %struct.rose_neigh*, %struct.rose_neigh** %145, align 8
  %147 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.sock*, %struct.sock** %10, align 8
  %151 = call %struct.rose_sock* @rose_sk(%struct.sock* %150)
  %152 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %151, i32 0, i32 9
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %133
  %156 = load i32, i32* @ROSE_STATE_5, align 4
  %157 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %158 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 8
  br label %168

159:                                              ; preds = %133
  %160 = load %struct.sock*, %struct.sock** %11, align 8
  %161 = load i32, i32* @ROSE_CALL_ACCEPTED, align 4
  %162 = call i32 @rose_write_internal(%struct.sock* %160, i32 %161)
  %163 = load i32, i32* @ROSE_STATE_3, align 4
  %164 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %165 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 8
  %166 = load %struct.sock*, %struct.sock** %11, align 8
  %167 = call i32 @rose_start_idletimer(%struct.sock* %166)
  br label %168

168:                                              ; preds = %159, %155
  %169 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %170 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %169, i32 0, i32 3
  store i32 0, i32* %170, align 4
  %171 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %172 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %171, i32 0, i32 7
  store i64 0, i64* %172, align 8
  %173 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %174 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %173, i32 0, i32 6
  store i64 0, i64* %174, align 8
  %175 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %176 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %175, i32 0, i32 5
  store i64 0, i64* %176, align 8
  %177 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %178 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %177, i32 0, i32 4
  store i64 0, i64* %178, align 8
  %179 = load %struct.sock*, %struct.sock** %10, align 8
  %180 = getelementptr inbounds %struct.sock, %struct.sock* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.sock*, %struct.sock** %11, align 8
  %184 = call i32 @rose_insert_socket(%struct.sock* %183)
  %185 = load %struct.sock*, %struct.sock** %10, align 8
  %186 = getelementptr inbounds %struct.sock, %struct.sock* %185, i32 0, i32 1
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = call i32 @skb_queue_head(i32* %186, %struct.sk_buff* %187)
  %189 = load %struct.sock*, %struct.sock** %11, align 8
  %190 = call i32 @rose_start_heartbeat(%struct.sock* %189)
  %191 = load %struct.sock*, %struct.sock** %10, align 8
  %192 = load i32, i32* @SOCK_DEAD, align 4
  %193 = call i32 @sock_flag(%struct.sock* %191, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %168
  %196 = load %struct.sock*, %struct.sock** %10, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 0
  %198 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %197, align 8
  %199 = load %struct.sock*, %struct.sock** %10, align 8
  %200 = call i32 %198(%struct.sock* %199)
  br label %201

201:                                              ; preds = %195, %168
  store i32 1, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %49, %30
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @memset(%struct.rose_facilities_struct*, i32, i32) #1

declare dso_local i32 @rose_parse_facilities(i64, i64, %struct.rose_facilities_struct*) #1

declare dso_local i32 @rose_transmit_clear_request(%struct.rose_neigh*, i32, i32, i32) #1

declare dso_local %struct.sock* @rose_find_listener(i32*, i32*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @rose_make_new(%struct.sock*) #1

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_idletimer(%struct.sock*) #1

declare dso_local i32 @rose_insert_socket(%struct.sock*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rose_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
