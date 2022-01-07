; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sip_help_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sip_help_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.nf_conn = type { i32 }
%struct.tcphdr = type { i32 }
%struct.nf_nat_sip_hooks = type { i32 (%struct.sk_buff*, i32, i32)* }

@NF_ACCEPT = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED_REPLY = common dso_local global i32 0, align 4
@sip_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SIP/2.0 200\00", align 1
@SIP_HDR_CONTENT_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@nf_nat_sip_hooks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @sip_help_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sip_help_tcp(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.tcphdr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.nf_nat_sip_hooks*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %22, align 4
  %26 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %26, i32* %23, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IP_CT_ESTABLISHED_REPLY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %35, i32* %5, align 4
  br label %228

36:                                               ; preds = %30, %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %37, i32 %38, i32 4, %struct.tcphdr* %11)
  store %struct.tcphdr* %39, %struct.tcphdr** %10, align 8
  %40 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %41 = icmp eq %struct.tcphdr* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %43, i32* %5, align 4
  br label %228

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 4
  %50 = add i32 %45, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp uge i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %57, i32* %5, align 4
  br label %228

58:                                               ; preds = %44
  %59 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @sip_timeout, align 4
  %62 = load i32, i32* @HZ, align 4
  %63 = mul nsw i32 %61, %62
  %64 = call i32 @nf_ct_refresh(%struct.nf_conn* %59, %struct.sk_buff* %60, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @skb_linearize(%struct.sk_buff* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @NF_DROP, align 4
  store i32 %70, i32* %5, align 4
  br label %228

71:                                               ; preds = %58
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8* %77, i8** %19, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sub i32 %80, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %87, i32* %5, align 4
  br label %228

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %182
  %90 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @SIP_HDR_CONTENT_LENGTH, align 4
  %94 = call i64 @ct_sip_get_header(%struct.nf_conn* %90, i8* %91, i32 0, i32 %92, i32 %93, i32* %14, i32* %15)
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %201

97:                                               ; preds = %89
  %98 = load i8*, i8** %19, align 8
  %99 = load i32, i32* %14, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = call i32 @simple_strtoul(i8* %101, i8** %20, i32 10)
  store i32 %102, i32* %16, align 4
  %103 = load i8*, i8** %19, align 8
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8*, i8** %20, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %201

110:                                              ; preds = %97
  store i32 0, i32* %24, align 4
  br label %111

111:                                              ; preds = %147, %110
  %112 = load i8*, i8** %20, align 8
  %113 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8*, i8** %19, align 8
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = icmp ule i8* %115, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %111
  %122 = load i8*, i8** %20, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 13
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load i8*, i8** %20, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 10
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load i8*, i8** %20, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 13
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load i8*, i8** %20, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 10
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 1, i32* %24, align 4
  br label %150

146:                                              ; preds = %139, %133, %127, %121
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %20, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %20, align 8
  br label %111

150:                                              ; preds = %145, %111
  %151 = load i32, i32* %24, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  br label %201

154:                                              ; preds = %150
  %155 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %16, align 4
  %157 = add i32 %155, %156
  %158 = load i8*, i8** %20, align 8
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %20, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = load i8*, i8** %19, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %18, align 4
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ugt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %154
  %171 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %171, i32* %5, align 4
  br label %228

172:                                              ; preds = %154
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @process_sip_msg(%struct.sk_buff* %173, %struct.nf_conn* %174, i32 %175, i32 %176, i8** %19, i32* %17)
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* @NF_ACCEPT, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %201

182:                                              ; preds = %172
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %18, align 4
  %185 = sub i32 %183, %184
  store i32 %185, i32* %21, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %22, align 4
  %188 = add i32 %187, %186
  store i32 %188, i32* %22, align 4
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %12, align 4
  %191 = add i32 %190, %189
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i8*, i8** %19, align 8
  %194 = zext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %19, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %21, align 4
  %198 = add i32 %196, %197
  %199 = load i32, i32* %17, align 4
  %200 = sub i32 %198, %199
  store i32 %200, i32* %13, align 4
  br label %89

201:                                              ; preds = %181, %153, %109, %96
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* @NF_ACCEPT, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %226

205:                                              ; preds = %201
  %206 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %207 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @IPS_NAT_MASK, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %205
  %213 = load i32, i32* @nf_nat_sip_hooks, align 4
  %214 = call %struct.nf_nat_sip_hooks* @rcu_dereference(i32 %213)
  store %struct.nf_nat_sip_hooks* %214, %struct.nf_nat_sip_hooks** %25, align 8
  %215 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %25, align 8
  %216 = icmp ne %struct.nf_nat_sip_hooks* %215, null
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %25, align 8
  %219 = getelementptr inbounds %struct.nf_nat_sip_hooks, %struct.nf_nat_sip_hooks* %218, i32 0, i32 0
  %220 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %219, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %22, align 4
  %224 = call i32 %220(%struct.sk_buff* %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %217, %212
  br label %226

226:                                              ; preds = %225, %205, %201
  %227 = load i32, i32* %23, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %226, %170, %86, %69, %56, %42, %34
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @nf_ct_refresh(%struct.nf_conn*, %struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @process_sip_msg(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*) #1

declare dso_local %struct.nf_nat_sip_hooks* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
