; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_release_resources_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_sw_release_resources_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.tls_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tls_sw_context_rx = type { i64, i32, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_sw_release_resources_rx(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca %struct.tls_sw_context_rx*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %5)
  store %struct.tls_context* %6, %struct.tls_context** %3, align 8
  %7 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %8 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %7)
  store %struct.tls_sw_context_rx* %8, %struct.tls_sw_context_rx** %4, align 8
  %9 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %10 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kfree(i32 %12)
  %14 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %15 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kfree(i32 %17)
  %19 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %20 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %1
  %24 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %25 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree_skb(i32* %26)
  %28 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %29 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %31 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %30, i32 0, i32 3
  %32 = call i32 @skb_queue_purge(i32* %31)
  %33 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %34 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @crypto_free_aead(i64 %35)
  %37 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %38 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %37, i32 0, i32 1
  %39 = call i32 @strp_stop(i32* %38)
  %40 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %41 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %23
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = call i32 @write_lock_bh(i32* %46)
  %48 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %49 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.sock*, %struct.sock** %2, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = call i32 @write_unlock_bh(i32* %54)
  br label %56

56:                                               ; preds = %44, %23
  br label %57

57:                                               ; preds = %56, %1
  ret void
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @crypto_free_aead(i64) #1

declare dso_local i32 @strp_stop(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
