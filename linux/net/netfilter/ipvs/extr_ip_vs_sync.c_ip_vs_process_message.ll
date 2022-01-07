; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ip_vs_sync_mesg = type { i64, i64, i64, i64, i32, i32 }
%union.ip_vs_sync_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"BACKUP, message header too short\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"BACKUP, bogus message size\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"BACKUP, Ignoring syncid = %d\0A\00", align 1
@SYNC_PROTO_VER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"BACKUP, Dropping buffer, to small\0A\00", align 1
@SVER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"BACKUP, Dropping buffer, msg > buffer\0A\00", align 1
@SVER_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"BACKUP, Dropping buffer, Unknown version %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"BACKUP, Dropping buffer, Err: %d in decoding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, i32*, i64)* @ip_vs_process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_process_message(%struct.netns_ipvs* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ip_vs_sync_mesg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.ip_vs_sync_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.ip_vs_sync_mesg*
  store %struct.ip_vs_sync_mesg* %16, %struct.ip_vs_sync_mesg** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %152

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %24 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %152

31:                                               ; preds = %21
  %32 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %33 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %39 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %42 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %48 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %152

51:                                               ; preds = %37, %31
  %52 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %53 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SYNC_PROTO_VER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %147

57:                                               ; preds = %51
  %58 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %59 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %147

62:                                               ; preds = %57
  %63 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %64 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %147

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 40
  store i32* %69, i32** %9, align 8
  %70 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %71 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %143, %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %146

77:                                               ; preds = %73
  %78 = load i32*, i32** %9, align 8
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = icmp ugt i32* %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %152

87:                                               ; preds = %77
  %88 = load i32*, i32** %8, align 8
  %89 = bitcast i32* %88 to %union.ip_vs_sync_conn*
  store %union.ip_vs_sync_conn* %89, %union.ip_vs_sync_conn** %12, align 8
  %90 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %91 = bitcast %union.ip_vs_sync_conn* %90 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntohs(i32 %93)
  %95 = load i32, i32* @SVER_MASK, align 4
  %96 = and i32 %94, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = icmp ugt i32* %101, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %87
  %107 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %152

108:                                              ; preds = %87
  %109 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %110 = bitcast %union.ip_vs_sync_conn* %109 to %struct.TYPE_4__*
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ntohs(i32 %112)
  %114 = load i32, i32* @SVER_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %119 = bitcast %union.ip_vs_sync_conn* %118 to %struct.TYPE_4__*
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ntohs(i32 %121)
  %123 = load i32, i32* @SVER_SHIFT, align 4
  %124 = ashr i32 %122, %123
  %125 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  br label %152

126:                                              ; preds = %108
  %127 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @ip_vs_proc_sync_conn(%struct.netns_ipvs* %127, i32* %128, i32* %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %14, align 4
  %135 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  br label %152

136:                                              ; preds = %126
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %13, align 4
  %139 = add i32 %138, 3
  %140 = and i32 %139, -4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  store i32* %142, i32** %9, align 8
  br label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %73

146:                                              ; preds = %73
  br label %152

147:                                              ; preds = %62, %57, %51
  %148 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @ip_vs_process_message_v0(%struct.netns_ipvs* %148, i32* %149, i64 %150)
  br label %152

152:                                              ; preds = %19, %29, %46, %85, %106, %117, %133, %147, %146
  ret void
}

declare dso_local i32 @IP_VS_DBG(i32, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @IP_VS_ERR_RL(i8*, ...) #1

declare dso_local i32 @ip_vs_proc_sync_conn(%struct.netns_ipvs*, i32*, i32*) #1

declare dso_local i32 @ip_vs_process_message_v0(%struct.netns_ipvs*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
