; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_push_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_push_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i32, i32, %struct.tls_prot_info }
%struct.tls_prot_info = type { i32 }
%struct.tls_offload_context_tx = type { i32*, i32*, i32 }
%struct.tls_record_info = type { i32, i32*, i32, i64, i64 }
%struct.tcp_sock = type { i64 }

@TLS_TX_SYNC_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tls_context*, %struct.tls_offload_context_tx*, %struct.tls_record_info*, i32)* @tls_push_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_push_record(%struct.sock* %0, %struct.tls_context* %1, %struct.tls_offload_context_tx* %2, %struct.tls_record_info* %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.tls_context*, align 8
  %8 = alloca %struct.tls_offload_context_tx*, align 8
  %9 = alloca %struct.tls_record_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tls_prot_info*, align 8
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.tls_context* %1, %struct.tls_context** %7, align 8
  store %struct.tls_offload_context_tx* %2, %struct.tls_offload_context_tx** %8, align 8
  store %struct.tls_record_info* %3, %struct.tls_record_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %16 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %15, i32 0, i32 2
  store %struct.tls_prot_info* %16, %struct.tls_prot_info** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %17)
  store %struct.tcp_sock* %18, %struct.tcp_sock** %12, align 8
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %23 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %27 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %29 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %28, i32 0, i32 2
  %30 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %8, align 8
  %31 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %30, i32 0, i32 2
  %32 = call i32 @list_add_tail_rcu(i32* %29, i32* %31)
  %33 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %8, align 8
  %34 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @TLS_TX_SYNC_SCHED, align 4
  %36 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %37 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %36, i32 0, i32 1
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %5
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @tls_device_resync_tx(%struct.sock* %41, %struct.tls_context* %42, i64 %45)
  br label %47

47:                                               ; preds = %40, %5
  %48 = load %struct.sock*, %struct.sock** %6, align 8
  %49 = load %struct.tls_prot_info*, %struct.tls_prot_info** %11, align 8
  %50 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %51 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %50, i32 0, i32 0
  %52 = call i32 @tls_advance_record_sn(%struct.sock* %48, %struct.tls_prot_info* %49, i32* %51)
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %93, %47
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %56 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %53
  %60 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %61 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %13, align 8
  %66 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %8, align 8
  %67 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @sg_unmark_end(i32* %71)
  %73 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %8, align 8
  %74 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @skb_frag_page(i32* %79)
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @skb_frag_size(i32* %81)
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @skb_frag_off(i32* %83)
  %85 = call i32 @sg_set_page(i32* %78, i32 %80, i32 %82, i32 %84)
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @skb_frag_size(i32* %87)
  %89 = call i32 @sk_mem_charge(%struct.sock* %86, i32 %88)
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @skb_frag_page(i32* %90)
  %92 = call i32 @get_page(i32 %91)
  br label %93

93:                                               ; preds = %59
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %53

96:                                               ; preds = %53
  %97 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %8, align 8
  %98 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %101 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  %106 = call i32 @sg_mark_end(i32* %105)
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %109 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %8, align 8
  %110 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @tls_push_sg(%struct.sock* %107, %struct.tls_context* %108, i32* %111, i32 0, i32 %112)
  ret i32 %113
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tls_device_resync_tx(%struct.sock*, %struct.tls_context*, i64) #1

declare dso_local i32 @tls_advance_record_sn(%struct.sock*, %struct.tls_prot_info*, i32*) #1

declare dso_local i32 @sg_unmark_end(i32*) #1

declare dso_local i32 @sg_set_page(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @sg_mark_end(i32*) #1

declare dso_local i32 @tls_push_sg(%struct.sock*, %struct.tls_context*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
