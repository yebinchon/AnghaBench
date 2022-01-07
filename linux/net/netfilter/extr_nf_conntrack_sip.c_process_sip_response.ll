; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sip_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sip_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sip_handler = type { i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"SIP/2.0 200\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SIP/2.0 \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cannot get code\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@SIP_HDR_CSEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot parse cseq\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cannot get cseq\00", align 1
@sip_handlers = common dso_local global %struct.sip_handler* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*)* @process_sip_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sip_response(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sip_handler*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %21, i32* %12)
  store %struct.nf_conn* %22, %struct.nf_conn** %13, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %28, i32* %6, align 4
  br label %141

29:                                               ; preds = %5
  %30 = load i8**, i8*** %10, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = call i32 @simple_strtoul(i8* %34, i32* null, i32 10)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %41 = call i32 @nf_ct_helper_log(%struct.sk_buff* %39, %struct.nf_conn* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @NF_DROP, align 4
  store i32 %42, i32* %6, align 4
  br label %141

43:                                               ; preds = %29
  %44 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SIP_HDR_CSEQ, align 4
  %50 = call i64 @ct_sip_get_header(%struct.nf_conn* %44, i8* %46, i32 0, i32 %48, i32 %49, i32* %14, i32* %15)
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %55 = call i32 @nf_ct_helper_log(%struct.sk_buff* %53, %struct.nf_conn* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @NF_DROP, align 4
  store i32 %56, i32* %6, align 4
  br label %141

57:                                               ; preds = %43
  %58 = load i8**, i8*** %10, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call i32 @simple_strtoul(i8* %62, i32* null, i32 10)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %57
  %67 = load i8**, i8*** %10, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 48
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %78 = call i32 @nf_ct_helper_log(%struct.sk_buff* %76, %struct.nf_conn* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @NF_DROP, align 4
  store i32 %79, i32* %6, align 4
  br label %141

80:                                               ; preds = %66, %57
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add i32 %81, %82
  %84 = add i32 %83, 1
  store i32 %84, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %136, %80
  %86 = load i32, i32* %19, align 4
  %87 = load %struct.sip_handler*, %struct.sip_handler** @sip_handlers, align 8
  %88 = call i32 @ARRAY_SIZE(%struct.sip_handler* %87)
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %90, label %139

90:                                               ; preds = %85
  %91 = load %struct.sip_handler*, %struct.sip_handler** @sip_handlers, align 8
  %92 = load i32, i32* %19, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %91, i64 %93
  store %struct.sip_handler* %94, %struct.sip_handler** %20, align 8
  %95 = load %struct.sip_handler*, %struct.sip_handler** %20, align 8
  %96 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %95, i32 0, i32 0
  %97 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)** %96, align 8
  %98 = icmp eq i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %136

100:                                              ; preds = %90
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.sip_handler*, %struct.sip_handler** %20, align 8
  %105 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add i32 %103, %106
  %108 = icmp ult i32 %102, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %100
  %110 = load i8**, i8*** %10, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load %struct.sip_handler*, %struct.sip_handler** %20, align 8
  %116 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sip_handler*, %struct.sip_handler** %20, align 8
  %119 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @strncasecmp(i8* %114, i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109, %100
  br label %136

124:                                              ; preds = %109
  %125 = load %struct.sip_handler*, %struct.sip_handler** %20, align 8
  %126 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %125, i32 0, i32 0
  %127 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32)** %126, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i8**, i8*** %10, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 %127(%struct.sk_buff* %128, i32 %129, i32 %130, i8** %131, i32* %132, i32 %133, i32 %134)
  store i32 %135, i32* %6, align 4
  br label %141

136:                                              ; preds = %123, %99
  %137 = load i32, i32* %19, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %85

139:                                              ; preds = %85
  %140 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %124, %75, %52, %38, %27
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sip_handler*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
