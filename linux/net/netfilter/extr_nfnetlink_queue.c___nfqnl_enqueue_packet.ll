; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c___nfqnl_enqueue_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c___nfqnl_enqueue_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfqnl_instance = type { i64, i64, i32, i32, i32, i32, i64, i32 }
%struct.nf_queue_entry = type { i64 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFQA_CFG_F_FAIL_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"nf_queue: full at %d entries, dropping packets(s)\0A\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nfqnl_instance*, %struct.nf_queue_entry*)* @__nfqnl_enqueue_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfqnl_enqueue_packet(%struct.net* %0, %struct.nfqnl_instance* %1, %struct.nf_queue_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nfqnl_instance*, align 8
  %7 = alloca %struct.nf_queue_entry*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nfqnl_instance* %1, %struct.nfqnl_instance** %6, align 8
  store %struct.nf_queue_entry* %2, %struct.nf_queue_entry** %7, align 8
  %12 = load i32, i32* @ENOBUFS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %16 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %7, align 8
  %17 = call %struct.sk_buff* @nfqnl_build_packet_message(%struct.net* %14, %struct.nfqnl_instance* %15, %struct.nf_queue_entry* %16, i32** %10)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = icmp eq %struct.sk_buff* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %113

23:                                               ; preds = %3
  %24 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %25 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %7, align 8
  %28 = call i64 @nf_ct_drop_unconfirmed(%struct.nf_queue_entry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %99

31:                                               ; preds = %23
  %32 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %33 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %36 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %41 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NFQA_CFG_F_FAIL_OPEN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %49 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %53 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %47, %46
  br label %99

57:                                               ; preds = %31
  %58 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %59 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %7, align 8
  %63 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %7, align 8
  %65 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @htonl(i64 %66)
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load %struct.net*, %struct.net** %5, align 8
  %71 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %72 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MSG_DONTWAIT, align 4
  %75 = call i32 @nfnetlink_unicast(%struct.sk_buff* %69, %struct.net* %70, i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %57
  %79 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %80 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NFQA_CFG_F_FAIL_OPEN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %91

86:                                               ; preds = %78
  %87 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %88 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %85
  br label %102

92:                                               ; preds = %57
  %93 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %94 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %7, align 8
  %95 = call i32 @__enqueue_entry(%struct.nfqnl_instance* %93, %struct.nf_queue_entry* %94)
  %96 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %97 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %96, i32 0, i32 3
  %98 = call i32 @spin_unlock_bh(i32* %97)
  store i32 0, i32* %4, align 4
  br label %115

99:                                               ; preds = %56, %30
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i32 @kfree_skb(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %6, align 8
  %104 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %103, i32 0, i32 3
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %7, align 8
  %110 = load i32, i32* @NF_ACCEPT, align 4
  %111 = call i32 @nfqnl_reinject(%struct.nf_queue_entry* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  br label %113

113:                                              ; preds = %112, %20
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %92
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.sk_buff* @nfqnl_build_packet_message(%struct.net*, %struct.nfqnl_instance*, %struct.nf_queue_entry*, i32**) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nf_ct_drop_unconfirmed(%struct.nf_queue_entry*) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i64) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @nfnetlink_unicast(%struct.sk_buff*, %struct.net*, i32, i32) #1

declare dso_local i32 @__enqueue_entry(%struct.nfqnl_instance*, %struct.nf_queue_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfqnl_reinject(%struct.nf_queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
