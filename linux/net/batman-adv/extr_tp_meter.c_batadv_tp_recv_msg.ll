; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.batadv_icmp_tp_packet = type { i64, i32, i32, i32, i32 }
%struct.batadv_tp_vars = type { i64, i64, i32 }

@BATADV_TP_FIRST_SEQ = common dso_local global i64 0, align 8
@BATADV_DBG_TP_METER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Meter: seqno != BATADV_TP_FIRST_SEQ cannot initiate connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected packet from %pM!\0A\00", align 1
@BATADV_TP_RECEIVER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Meter: dropping packet: not expected (role=%u)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.sk_buff*)* @batadv_tp_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tp_recv_msg(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_icmp_tp_packet*, align 8
  %6 = alloca %struct.batadv_tp_vars*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.batadv_icmp_tp_packet*
  store %struct.batadv_icmp_tp_packet* %12, %struct.batadv_icmp_tp_packet** %5, align 8
  %13 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %14 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ntohl(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @BATADV_TP_FIRST_SEQ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %22 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %23 = call %struct.batadv_tp_vars* @batadv_tp_init_recv(%struct.batadv_priv* %21, %struct.batadv_icmp_tp_packet* %22)
  store %struct.batadv_tp_vars* %23, %struct.batadv_tp_vars** %6, align 8
  %24 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %25 = icmp ne %struct.batadv_tp_vars* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %29 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %27, %struct.batadv_priv* %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %124

30:                                               ; preds = %20
  br label %50

31:                                               ; preds = %2
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %33 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %34 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %37 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.batadv_tp_vars* @batadv_tp_list_find_session(%struct.batadv_priv* %32, i64 %35, i32 %38)
  store %struct.batadv_tp_vars* %39, %struct.batadv_tp_vars** %6, align 8
  %40 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %41 = icmp ne %struct.batadv_tp_vars* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %44 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %45 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %46 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %43, %struct.batadv_priv* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %124

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %52 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BATADV_TP_RECEIVER, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %61 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %62 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %63 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %60, %struct.batadv_priv* %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %124

66:                                               ; preds = %50
  %67 = load i32, i32* @jiffies, align 4
  %68 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %69 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %72 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @batadv_seq_before(i64 %70, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %106

77:                                               ; preds = %66
  %78 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %79 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ntohl(i32 %80)
  %82 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %83 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @batadv_tp_handle_out_of_order(%struct.batadv_tp_vars* %87, %struct.sk_buff* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %124

92:                                               ; preds = %86
  br label %106

93:                                               ; preds = %77
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = sub i64 %97, 4
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %101 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %105 = call i32 @batadv_tp_ack_unordered(%struct.batadv_tp_vars* %104)
  br label %106

106:                                              ; preds = %93, %92, %76
  %107 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %108 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %109 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %112 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %115 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %118 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %5, align 8
  %121 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @batadv_tp_send_ack(%struct.batadv_priv* %107, i64 %110, i64 %113, i32 %116, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %106, %91, %59, %42, %26
  %125 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %126 = call i64 @likely(%struct.batadv_tp_vars* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %6, align 8
  %130 = call i32 @batadv_tp_vars_put(%struct.batadv_tp_vars* %129)
  br label %131

131:                                              ; preds = %128, %124
  ret void
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.batadv_tp_vars* @batadv_tp_init_recv(%struct.batadv_priv*, %struct.batadv_icmp_tp_packet*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, ...) #1

declare dso_local %struct.batadv_tp_vars* @batadv_tp_list_find_session(%struct.batadv_priv*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @batadv_seq_before(i64, i64) #1

declare dso_local i32 @batadv_tp_handle_out_of_order(%struct.batadv_tp_vars*, %struct.sk_buff*) #1

declare dso_local i32 @batadv_tp_ack_unordered(%struct.batadv_tp_vars*) #1

declare dso_local i32 @batadv_tp_send_ack(%struct.batadv_priv*, i64, i64, i32, i32, i32) #1

declare dso_local i64 @likely(%struct.batadv_tp_vars*) #1

declare dso_local i32 @batadv_tp_vars_put(%struct.batadv_tp_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
