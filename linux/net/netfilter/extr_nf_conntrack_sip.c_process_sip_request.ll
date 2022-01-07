; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sip_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sip_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sip_handler = type { i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nf_ct_sip_master = type { i64 }
%union.nf_inet_addr = type { i32 }

@SIP_HDR_VIA_UDP = common dso_local global i32 0, align 4
@sip_handlers = common dso_local global %struct.sip_handler* null, align 8
@SIP_HDR_CSEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot parse cseq\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cannot get cseq\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*)* @process_sip_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sip_request(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca %struct.nf_ct_sip_master*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.nf_inet_addr, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.sip_handler*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %23, i32* %12)
  store %struct.nf_conn* %24, %struct.nf_conn** %13, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %26 = call %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn* %25)
  store %struct.nf_ct_sip_master* %26, %struct.nf_ct_sip_master** %14, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @CTINFO2DIR(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SIP_HDR_VIA_UDP, align 4
  %35 = call i64 @ct_sip_parse_header_uri(%struct.nf_conn* %29, i8* %31, i32* null, i32 %33, i32 %34, i32* null, i32* %16, i32* %17, %union.nf_inet_addr* %20, i64* %21)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %5
  %38 = load i64, i64* %21, align 8
  %39 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %38, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %37
  %53 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %54 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %20, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load i64, i64* %21, align 8
  %66 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %14, align 8
  %67 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %52, %37, %5
  store i32 0, i32* %19, align 4
  br label %69

69:                                               ; preds = %176, %68
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.sip_handler*, %struct.sip_handler** @sip_handlers, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.sip_handler* %71)
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %74, label %179

74:                                               ; preds = %69
  %75 = load %struct.sip_handler*, %struct.sip_handler** @sip_handlers, align 8
  %76 = load i32, i32* %19, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %75, i64 %77
  store %struct.sip_handler* %78, %struct.sip_handler** %22, align 8
  %79 = load %struct.sip_handler*, %struct.sip_handler** %22, align 8
  %80 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %79, i32 0, i32 0
  %81 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)** %80, align 8
  %82 = icmp eq i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %176

84:                                               ; preds = %74
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sip_handler*, %struct.sip_handler** %22, align 8
  %88 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 2
  %91 = icmp ult i32 %86, %90
  br i1 %91, label %103, label %92

92:                                               ; preds = %84
  %93 = load i8**, i8*** %10, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.sip_handler*, %struct.sip_handler** %22, align 8
  %96 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sip_handler*, %struct.sip_handler** %22, align 8
  %99 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @strncasecmp(i8* %94, i32 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92, %84
  br label %176

104:                                              ; preds = %92
  %105 = load i8**, i8*** %10, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.sip_handler*, %struct.sip_handler** %22, align 8
  %108 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 32
  br i1 %114, label %127, label %115

115:                                              ; preds = %104
  %116 = load i8**, i8*** %10, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.sip_handler*, %struct.sip_handler** %22, align 8
  %119 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %117, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = call i32 @isalpha(i8 signext %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %115, %104
  br label %176

128:                                              ; preds = %115
  %129 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %130 = load i8**, i8*** %10, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SIP_HDR_CSEQ, align 4
  %135 = call i64 @ct_sip_get_header(%struct.nf_conn* %129, i8* %131, i32 0, i32 %133, i32 %134, i32* %16, i32* %17)
  %136 = icmp sle i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %140 = call i32 @nf_ct_helper_log(%struct.sk_buff* %138, %struct.nf_conn* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %141 = load i32, i32* @NF_DROP, align 4
  store i32 %141, i32* %6, align 4
  br label %181

142:                                              ; preds = %128
  %143 = load i8**, i8*** %10, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = call i32 @simple_strtoul(i8* %147, i32* null, i32 10)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %165, label %151

151:                                              ; preds = %142
  %152 = load i8**, i8*** %10, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 48
  br i1 %159, label %160, label %165

160:                                              ; preds = %151
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %163 = call i32 @nf_ct_helper_log(%struct.sk_buff* %161, %struct.nf_conn* %162, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32, i32* @NF_DROP, align 4
  store i32 %164, i32* %6, align 4
  br label %181

165:                                              ; preds = %151, %142
  %166 = load %struct.sip_handler*, %struct.sip_handler** %22, align 8
  %167 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %166, i32 0, i32 0
  %168 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)** %167, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i8**, i8*** %10, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %18, align 4
  %175 = call i32 %168(%struct.sk_buff* %169, i32 %170, i32 %171, i8** %172, i32* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  br label %181

176:                                              ; preds = %127, %103, %83
  %177 = load i32, i32* %19, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %19, align 4
  br label %69

179:                                              ; preds = %69
  %180 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %179, %165, %160, %137
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ct_sip_parse_header_uri(%struct.nf_conn*, i8*, i32*, i32, i32, i32*, i32*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i64 @nf_inet_addr_cmp(%union.nf_inet_addr*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sip_handler*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
