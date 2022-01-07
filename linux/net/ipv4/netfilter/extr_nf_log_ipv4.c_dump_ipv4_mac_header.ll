; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_log_ipv4.c_dump_ipv4_mac_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_log_ipv4.c_dump_ipv4_mac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_log_buf = type { i32 }
%struct.nf_loginfo = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i64, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@NF_LOG_TYPE_LOG = common dso_local global i64 0, align 8
@NF_LOG_MACDECODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MACSRC=%pM MACDST=%pM MACPROTO=%04x \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MAC=\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c":%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_log_buf*, %struct.nf_loginfo*, %struct.sk_buff*)* @dump_ipv4_mac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ipv4_mac_header(%struct.nf_log_buf* %0, %struct.nf_loginfo* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nf_log_buf*, align 8
  %5 = alloca %struct.nf_loginfo*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nf_log_buf* %0, %struct.nf_log_buf** %4, align 8
  store %struct.nf_loginfo* %1, %struct.nf_loginfo** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.nf_loginfo*, %struct.nf_loginfo** %5, align 8
  %15 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NF_LOG_TYPE_LOG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.nf_loginfo*, %struct.nf_loginfo** %5, align 8
  %21 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NF_LOG_MACDECODE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %53

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %51 [
    i32 128, label %35
  ]

35:                                               ; preds = %31
  %36 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44, i32 %49)
  br label %98

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %55 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %60
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i8* @skb_mac_header(%struct.sk_buff* %69)
  store i8* %70, i8** %9, align 8
  %71 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %89, %68
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  br label %77

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %94, %60, %53
  %96 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %97 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %35
  ret void
}

declare dso_local i32 @nf_log_buf_add(%struct.nf_log_buf*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
