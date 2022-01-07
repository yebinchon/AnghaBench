; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_set_sig_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_set_sig_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.nf_ct_h323_master = type { i64* }
%union.nf_inet_addr = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"nf_nat_ras: set signal address %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*, i32)* @set_sig_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sig_addr(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nf_ct_h323_master*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %union.nf_inet_addr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %22 = call %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn* %21)
  store %struct.nf_ct_h323_master* %22, %struct.nf_ct_h323_master** %16, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @CTINFO2DIR(i32 %23)
  store i32 %24, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %25

25:                                               ; preds = %224, %7
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %227

29:                                               ; preds = %25
  %30 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %31 = load i8**, i8*** %13, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @get_h225_addr(%struct.nf_conn* %30, i8* %32, i32* %36, %union.nf_inet_addr* %20, i64* %19)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %223

39:                                               ; preds = %29
  %40 = bitcast %union.nf_inet_addr* %20 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %43 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %41, %52
  br i1 %53, label %54, label %139

54:                                               ; preds = %39
  %55 = load i64, i64* %19, align 8
  %56 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %57 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %55, %62
  br i1 %63, label %64, label %139

64:                                               ; preds = %54
  %65 = load i32, i32* %18, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %69 = load i8**, i8*** %13, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i64 @get_h225_addr(%struct.nf_conn* %68, i8* %70, i32* %72, %union.nf_inet_addr* %20, i64* %19)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = bitcast %union.nf_inet_addr* %20 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ntohl(i64 %77)
  %79 = and i32 %78, -16777216
  %80 = icmp eq i32 %79, 2130706432
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %18, align 4
  br label %82

82:                                               ; preds = %81, %75, %67, %64
  %83 = bitcast %union.nf_inet_addr* %20 to i64*
  %84 = load i64, i64* %19, align 8
  %85 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %86 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %99 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %100, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64* %83, i64 %84, i64* %97, i64 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i8**, i8*** %13, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %117 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %129 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %130, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @set_h225_addr(%struct.sk_buff* %109, i32 %110, i8** %111, i32 0, i32* %115, %struct.TYPE_10__* %127, i64 %137)
  store i32 %138, i32* %8, align 4
  br label %228

139:                                              ; preds = %54, %39
  %140 = bitcast %union.nf_inet_addr* %20 to i64*
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %143 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %141, %152
  br i1 %153, label %154, label %221

154:                                              ; preds = %139
  %155 = load i64, i64* %19, align 8
  %156 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %157 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %155, %162
  br i1 %163, label %164, label %221

164:                                              ; preds = %154
  %165 = bitcast %union.nf_inet_addr* %20 to i64*
  %166 = load i64, i64* %19, align 8
  %167 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %168 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %181 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %182, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64* %165, i64 %166, i64* %179, i64 %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i8**, i8*** %13, align 8
  %194 = load i32*, i32** %14, align 8
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %199 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %198, i32 0, i32 0
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %211 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %212, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @set_h225_addr(%struct.sk_buff* %191, i32 %192, i8** %193, i32 0, i32* %197, %struct.TYPE_10__* %209, i64 %219)
  store i32 %220, i32* %8, align 4
  br label %228

221:                                              ; preds = %154, %139
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222, %29
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %18, align 4
  br label %25

227:                                              ; preds = %25
  store i32 0, i32* %8, align 4
  br label %228

228:                                              ; preds = %227, %164, %82
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @pr_debug(i8*, i64*, i64, i64*, i64) #1

declare dso_local i32 @set_h225_addr(%struct.sk_buff*, i32, i8**, i32, i32*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
