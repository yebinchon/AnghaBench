; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_map_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_map_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conn = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %union.nf_inet_addr }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %union.nf_inet_addr }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.nf_ct_sip_master = type { i64 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, %union.nf_inet_addr*, i64)* @map_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_addr(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5, i32 %6, %union.nf_inet_addr* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.nf_inet_addr*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.nf_conn*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.nf_ct_sip_master*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %union.nf_inet_addr, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8** %3, i8*** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %union.nf_inet_addr* %7, %union.nf_inet_addr** %18, align 8
  store i64 %8, i64* %19, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %30, i32* %20)
  store %struct.nf_conn* %31, %struct.nf_conn** %21, align 8
  %32 = load i32, i32* %20, align 4
  %33 = call i32 @CTINFO2DIR(i32 %32)
  store i32 %33, i32* %22, align 4
  %34 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %35 = call %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn* %34)
  store %struct.nf_ct_sip_master* %35, %struct.nf_ct_sip_master** %23, align 8
  %36 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 9
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %24, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %25, align 8
  %41 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %42 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = load i32, i32* %22, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %union.nf_inet_addr*, %union.nf_inet_addr** %18, align 8
  %51 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %49, %union.nf_inet_addr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %9
  %54 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %55 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load i32, i32* %22, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %19, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %53
  %69 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %70 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load i32, i32* %22, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = bitcast %union.nf_inet_addr* %27 to i8*
  %82 = bitcast %union.nf_inet_addr* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 8 %82, i64 4, i1 false)
  %83 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %84 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %28, align 8
  br label %166

98:                                               ; preds = %53, %9
  %99 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %100 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* %22, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %union.nf_inet_addr*, %union.nf_inet_addr** %18, align 8
  %109 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %107, %union.nf_inet_addr* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %164

111:                                              ; preds = %98
  %112 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %113 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load i32, i32* %22, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %19, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %111
  %127 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %128 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load i32, i32* %22, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = bitcast %union.nf_inet_addr* %27 to i8*
  %140 = bitcast %union.nf_inet_addr* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 8 %140, i64 4, i1 false)
  %141 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %23, align 8
  %142 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %126
  br label %162

146:                                              ; preds = %126
  %147 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %148 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %147, i32 0, i32 0
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = load i32, i32* %22, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  br label %162

162:                                              ; preds = %146, %145
  %163 = phi i64 [ %143, %145 ], [ %161, %146 ]
  store i64 %163, i64* %28, align 8
  br label %165

164:                                              ; preds = %111, %98
  store i32 1, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %189

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %165, %68
  %167 = load %union.nf_inet_addr*, %union.nf_inet_addr** %18, align 8
  %168 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %27, %union.nf_inet_addr* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i64, i64* %28, align 8
  %172 = load i64, i64* %19, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 1, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %189

175:                                              ; preds = %170, %166
  %176 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %177 = load i64, i64* %28, align 8
  %178 = call i32 @ntohs(i64 %177)
  %179 = call i32 @sip_sprintf_addr_port(%struct.nf_conn* %176, i8* %40, %union.nf_inet_addr* %27, i32 %178)
  store i32 %179, i32* %26, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i8**, i8*** %14, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %26, align 4
  %188 = call i32 @mangle_packet(%struct.sk_buff* %180, i32 %181, i32 %182, i8** %183, i32* %184, i32 %185, i32 %186, i8* %40, i32 %187)
  store i32 %188, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %189

189:                                              ; preds = %175, %174, %164
  %190 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %10, align 4
  ret i32 %191
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nf_inet_addr_cmp(%union.nf_inet_addr*, %union.nf_inet_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @sip_sprintf_addr_port(%struct.nf_conn*, i8*, %union.nf_inet_addr*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @mangle_packet(%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
