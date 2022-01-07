; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_set_tcp_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_set_tcp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_proto_data = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ip_vs_conn = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i32, i32 }
%struct.tcphdr = type { i64, i64, i64, i64 }

@IP_VS_TCP_S_CLOSE = common dso_local global i32 0, align 4
@tcp_state_off = common dso_local global i32* null, align 8
@IP_VS_CONN_F_NOOUTPUT = common dso_local global i32 0, align 4
@TCP_DIR_OUTPUT = common dso_local global i32 0, align 4
@TCP_DIR_INPUT_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tcp_state_idx=%d!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s %s [%c%c%c%c] %s:%d->%s:%d state: %s->%s conn->refcnt:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"output \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"input \00", align 1
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_TCP_S_ESTABLISHED = common dso_local global i32 0, align 4
@tcp_timeouts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_proto_data*, %struct.ip_vs_conn*, i32, %struct.tcphdr*)* @set_tcp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tcp_state(%struct.ip_vs_proto_data* %0, %struct.ip_vs_conn* %1, i32 %2, %struct.tcphdr* %3) #0 {
  %5 = alloca %struct.ip_vs_proto_data*, align 8
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_proto_data* %0, %struct.ip_vs_proto_data** %5, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tcphdr* %3, %struct.tcphdr** %8, align 8
  %13 = load i32, i32* @IP_VS_TCP_S_CLOSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** @tcp_state_off, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %20 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @TCP_DIR_OUTPUT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @TCP_DIR_INPUT_ONLY, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %36, %29
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %41 = call i32 @tcp_state_idx(%struct.tcphdr* %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @IP_VS_DBG(i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %62

46:                                               ; preds = %39
  %47 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %48 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %58 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %46, %43
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %66 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %201

69:                                               ; preds = %62
  %70 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %71 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %70, i32 0, i32 10
  %72 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %71, align 8
  store %struct.ip_vs_dest* %72, %struct.ip_vs_dest** %12, align 8
  %73 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %74 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @TCP_DIR_OUTPUT, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %83 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %84 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 83, i32 46
  %89 = trunc i32 %88 to i8
  %90 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %91 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 70, i32 46
  %96 = sitofp i32 %95 to float
  %97 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %98 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 65, i32 46
  %103 = trunc i32 %102 to i8
  %104 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %105 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 82, i32 46
  %110 = trunc i32 %109 to i8
  %111 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %112 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %115 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %114, i32 0, i32 8
  %116 = call i32 @IP_VS_DBG_ADDR(i32 %113, i32* %115)
  %117 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %118 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ntohs(i32 %119)
  %121 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %122 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %125 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %124, i32 0, i32 5
  %126 = call i32 @IP_VS_DBG_ADDR(i32 %123, i32* %125)
  %127 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %128 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ntohs(i32 %129)
  %131 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %132 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @tcp_state_name(i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @tcp_state_name(i32 %136)
  %138 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %139 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %138, i32 0, i32 3
  %140 = call i32 @refcount_read(i32* %139)
  %141 = call i32 @IP_VS_DBG_BUF(i32 8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %77, i8* %82, i8 signext %89, float %96, i8 signext %103, i8 signext %110, i32 %116, i32 %120, i32 %126, i32 %130, i32 %135, i32 %137, i32 %140)
  %142 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %143 = icmp ne %struct.ip_vs_dest* %142, null
  br i1 %143, label %144, label %193

144:                                              ; preds = %69
  %145 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %146 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %144
  %152 = load i32, i32* %10, align 4
  %153 = call i64 @tcp_state_active(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %151
  %156 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %157 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %156, i32 0, i32 1
  %158 = call i32 @atomic_dec(i32* %157)
  %159 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %160 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %159, i32 0, i32 0
  %161 = call i32 @atomic_inc(i32* %160)
  %162 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %163 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %164 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %192

167:                                              ; preds = %151, %144
  %168 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %169 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = call i64 @tcp_state_active(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %180 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %179, i32 0, i32 1
  %181 = call i32 @atomic_inc(i32* %180)
  %182 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %183 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %182, i32 0, i32 0
  %184 = call i32 @atomic_dec(i32* %183)
  %185 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %188 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %178, %174, %167
  br label %192

192:                                              ; preds = %191, %155
  br label %193

193:                                              ; preds = %192, %69
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @IP_VS_TCP_S_ESTABLISHED, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %199 = call i32 @ip_vs_control_assure_ct(%struct.ip_vs_conn* %198)
  br label %200

200:                                              ; preds = %197, %193
  br label %201

201:                                              ; preds = %200, %62
  %202 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %203 = call i64 @likely(%struct.ip_vs_proto_data* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %207 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %212 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %211, i32 0, i32 1
  store i64 %210, i64* %212, align 8
  %213 = getelementptr inbounds i32, i32* %208, i64 %210
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %216 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  br label %227

217:                                              ; preds = %201
  %218 = load i32*, i32** @tcp_timeouts, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %222 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = getelementptr inbounds i32, i32* %218, i64 %220
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %226 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %217, %205
  ret void
}

declare dso_local i32 @tcp_state_idx(%struct.tcphdr*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i8*, i8 signext, float, i8 signext, i8 signext, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tcp_state_name(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i64 @tcp_state_active(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ip_vs_control_assure_ct(%struct.ip_vs_conn*) #1

declare dso_local i64 @likely(%struct.ip_vs_proto_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
