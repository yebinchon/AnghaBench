; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_register_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_register_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nf_ct_sip_master = type { i32 }
%union.nf_inet_addr = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@SIP_HDR_EXPIRES = common dso_local global i32 0, align 4
@SIP_HDR_CONTACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot parse contact\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"expires=\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot parse expires\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)* @process_register_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_register_response(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_conn*, align 8
  %18 = alloca %struct.nf_ct_sip_master*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %union.nf_inet_addr, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %30, i32* %16)
  store %struct.nf_conn* %31, %struct.nf_conn** %17, align 8
  %32 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %33 = call %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn* %32)
  store %struct.nf_ct_sip_master* %33, %struct.nf_ct_sip_master** %18, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @CTINFO2DIR(i32 %34)
  store i32 %35, i32* %19, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %36 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %18, align 8
  %37 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %42, i32* %8, align 4
  br label %157

43:                                               ; preds = %7
  %44 = load i32, i32* %15, align 4
  %45 = icmp uge i32 %44, 100
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = icmp ule i32 %47, 199
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %50, i32* %8, align 4
  br label %157

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %15, align 4
  %53 = icmp ult i32 %52, 200
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp ugt i32 %55, 299
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  br label %153

58:                                               ; preds = %54
  %59 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %60 = load i8**, i8*** %12, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SIP_HDR_EXPIRES, align 4
  %65 = call i64 @ct_sip_get_header(%struct.nf_conn* %59, i8* %61, i32 0, i32 %63, i32 %64, i32* %23, i32* %24)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i8**, i8*** %12, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %23, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 @simple_strtoul(i8* %72, i32* null, i32 10)
  store i32 %73, i32* %26, align 4
  br label %74

74:                                               ; preds = %67, %58
  br label %75

75:                                               ; preds = %74, %108, %120, %151
  %76 = load i32, i32* %26, align 4
  store i32 %76, i32* %29, align 4
  %77 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %78 = load i8**, i8*** %12, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SIP_HDR_CONTACT, align 4
  %83 = call i32 @ct_sip_parse_header_uri(%struct.nf_conn* %77, i8* %79, i32* %25, i32 %81, i32 %82, i32* %27, i32* %23, i32* %24, %union.nf_inet_addr* %20, i32* %21)
  store i32 %83, i32* %28, align 4
  %84 = load i32, i32* %28, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %88 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %89 = call i32 @nf_ct_helper_log(%struct.sk_buff* %87, %struct.nf_conn* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @NF_DROP, align 4
  store i32 %90, i32* %8, align 4
  br label %157

91:                                               ; preds = %75
  %92 = load i32, i32* %28, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %152

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %98 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %19, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @nf_inet_addr_cmp(i32* %105, %union.nf_inet_addr* %20)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  br label %75

109:                                              ; preds = %96
  %110 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %111 = load i8**, i8*** %12, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %24, align 4
  %115 = add i32 %113, %114
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ct_sip_parse_transport(%struct.nf_conn* %110, i8* %112, i32 %115, i32 %117, i32* %22)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %75

121:                                              ; preds = %109
  %122 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %123 = load i8**, i8*** %12, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %24, align 4
  %127 = add i32 %125, %126
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ct_sip_parse_numerical_param(%struct.nf_conn* %122, i8* %124, i32 %127, i32 %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* %29)
  store i32 %130, i32* %28, align 4
  %131 = load i32, i32* %28, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %136 = call i32 @nf_ct_helper_log(%struct.sk_buff* %134, %struct.nf_conn* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* @NF_DROP, align 4
  store i32 %137, i32* %8, align 4
  br label %157

138:                                              ; preds = %121
  %139 = load i32, i32* %29, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %152

142:                                              ; preds = %138
  %143 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %29, align 4
  %147 = call i64 @refresh_signalling_expectation(%struct.nf_conn* %143, %union.nf_inet_addr* %20, i32 %144, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %150, i32* %8, align 4
  br label %157

151:                                              ; preds = %142
  br label %75

152:                                              ; preds = %141, %94
  br label %153

153:                                              ; preds = %152, %57
  %154 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %155 = call i32 @flush_expectations(%struct.nf_conn* %154, i32 0)
  %156 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %153, %149, %133, %86, %49, %41
  %158 = load i32, i32* %8, align 4
  ret i32 %158
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @ct_sip_parse_header_uri(%struct.nf_conn*, i8*, i32*, i32, i32, i32*, i32*, i32*, %union.nf_inet_addr*, i32*) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i32 @nf_inet_addr_cmp(i32*, %union.nf_inet_addr*) #1

declare dso_local i64 @ct_sip_parse_transport(%struct.nf_conn*, i8*, i32, i32, i32*) #1

declare dso_local i32 @ct_sip_parse_numerical_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @refresh_signalling_expectation(%struct.nf_conn*, %union.nf_inet_addr*, i32, i32, i32) #1

declare dso_local i32 @flush_expectations(%struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
