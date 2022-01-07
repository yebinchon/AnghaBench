; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sacktag_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sacktag_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sacktag_state = type { i64, i32, i8*, i8* }
%struct.tcp_sock = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i8* }

@TCPCB_RETRANS = common dso_local global i32 0, align 4
@TCPCB_SACKED_ACKED = common dso_local global i32 0, align 4
@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4
@TCPCB_LOST = common dso_local global i32 0, align 4
@FLAG_ORIG_SACK_ACKED = common dso_local global i32 0, align 4
@FLAG_DATA_SACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tcp_sacktag_state*, i32, i8*, i8*, i32, i32, i8*)* @tcp_sacktag_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sacktag_one(%struct.sock* %0, %struct.tcp_sacktag_state* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.tcp_sacktag_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.tcp_sacktag_state* %1, %struct.tcp_sacktag_state** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load %struct.sock*, %struct.sock** %10, align 8
  %20 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %19)
  store %struct.tcp_sock* %20, %struct.tcp_sock** %18, align 8
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @TCPCB_RETRANS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i8*, i8** %14, align 8
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @after(i8* %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %38, %33, %28
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %58 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @before(i8* %56, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %65 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %55, %50
  br label %67

67:                                               ; preds = %66, %23, %8
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %70 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @after(i8* %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %9, align 4
  br label %239

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %219, label %81

81:                                               ; preds = %76
  %82 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @tcp_rack_advance(%struct.tcp_sock* %82, i32 %83, i8* %84, i8* %85)
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @TCPCB_LOST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load i32, i32* @TCPCB_LOST, align 4
  %98 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %96, %91
  br label %179

114:                                              ; preds = %81
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @TCPCB_RETRANS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %163, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %13, align 8
  %121 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %122 = call i8* @tcp_highest_sack_seq(%struct.tcp_sock* %121)
  %123 = call i64 @before(i8* %120, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %128 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @before(i8* %126, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load i8*, i8** %13, align 8
  %134 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %135 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %125, %119
  %137 = load i8*, i8** %14, align 8
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @after(i8* %137, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* @FLAG_ORIG_SACK_ACKED, align 4
  %145 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %146 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %136
  %150 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %151 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i8*, i8** %17, align 8
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %158 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i8*, i8** %17, align 8
  %161 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %162 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %159, %114
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @TCPCB_LOST, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load i32, i32* @TCPCB_LOST, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %12, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %175 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %168, %163
  br label %179

179:                                              ; preds = %178, %113
  %180 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* @FLAG_DATA_SACKED, align 4
  %184 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %185 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %190 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %16, align 4
  %194 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %195 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %199 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %179
  %203 = load i8*, i8** %13, align 8
  %204 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %205 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = call %struct.TYPE_2__* @TCP_SKB_CB(i64 %206)
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @before(i8* %203, i8* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %202
  %213 = load i32, i32* %16, align 4
  %214 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %215 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %202, %179
  br label %219

219:                                              ; preds = %218, %76
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %219
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %222
  %228 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %12, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %16, align 4
  %233 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %234 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, %232
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %227, %222, %219
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %237, %74
  %240 = load i32, i32* %9, align 4
  ret i32 %240
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @after(i8*, i64) #1

declare dso_local i64 @before(i8*, i8*) #1

declare dso_local i32 @tcp_rack_advance(%struct.tcp_sock*, i32, i8*, i8*) #1

declare dso_local i8* @tcp_highest_sack_seq(%struct.tcp_sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
