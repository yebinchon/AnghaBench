; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_sctp.c_sctp_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_sctp.c_sctp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i64, i32, i64, %struct.xt_sctp_info* }
%struct.xt_sctp_info = type { i64*, i64*, i32, i32 }
%struct.sctphdr = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Dropping non-first fragment.. FIXME\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Dropping evil TCP offset=0 tinygram.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"spt: %d\09dpt: %d\0A\00", align 1
@XT_SCTP_SRC_PORTS = common dso_local global i32 0, align 4
@XT_SCTP_DEST_PORTS = common dso_local global i32 0, align 4
@XT_SCTP_CHUNK_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @sctp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_sctp_info*, align 8
  %7 = alloca %struct.sctphdr*, align 8
  %8 = alloca %struct.sctphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 3
  %11 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %10, align 8
  store %struct.xt_sctp_info* %11, %struct.xt_sctp_info** %6, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %129

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %21 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.sctphdr* @skb_header_pointer(%struct.sk_buff* %19, i64 %22, i32 8, %struct.sctphdr* %8)
  store %struct.sctphdr* %23, %struct.sctphdr** %7, align 8
  %24 = load %struct.sctphdr*, %struct.sctphdr** %7, align 8
  %25 = icmp eq %struct.sctphdr* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %29 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %129

30:                                               ; preds = %18
  %31 = load %struct.sctphdr*, %struct.sctphdr** %7, align 8
  %32 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ntohs(i32 %33)
  %35 = load %struct.sctphdr*, %struct.sctphdr** %7, align 8
  %36 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ntohs(i32 %37)
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %34, i64 %38)
  %40 = load %struct.sctphdr*, %struct.sctphdr** %7, align 8
  %41 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohs(i32 %42)
  %44 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %45 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %43, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %30
  %51 = load %struct.sctphdr*, %struct.sctphdr** %7, align 8
  %52 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  %55 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %56 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %54, %59
  br label %61

61:                                               ; preds = %50, %30
  %62 = phi i1 [ false, %30 ], [ %60, %50 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @XT_SCTP_SRC_PORTS, align 4
  %65 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %66 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %69 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @SCCHECK(i32 %63, i32 %64, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %61
  %74 = load %struct.sctphdr*, %struct.sctphdr** %7, align 8
  %75 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ntohs(i32 %76)
  %78 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %79 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %77, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.sctphdr*, %struct.sctphdr** %7, align 8
  %86 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ntohs(i32 %87)
  %89 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %90 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %88, %93
  br label %95

95:                                               ; preds = %84, %73
  %96 = phi i1 [ false, %73 ], [ %94, %84 ]
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* @XT_SCTP_DEST_PORTS, align 4
  %99 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %100 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %103 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @SCCHECK(i32 %97, i32 %98, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %95
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %110 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 8
  %113 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %114 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %115 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %114, i32 0, i32 1
  %116 = call i32 @match_packet(%struct.sk_buff* %108, i64 %112, %struct.xt_sctp_info* %113, i32* %115)
  %117 = load i32, i32* @XT_SCTP_CHUNK_TYPES, align 4
  %118 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %119 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %122 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @SCCHECK(i32 %116, i32 %117, i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %107, %95, %61
  %127 = phi i1 [ false, %95 ], [ false, %61 ], [ %125, %107 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %126, %26, %16
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.sctphdr* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.sctphdr*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @SCCHECK(i32, i32, i32, i32) #1

declare dso_local i32 @match_packet(%struct.sk_buff*, i64, %struct.xt_sctp_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
