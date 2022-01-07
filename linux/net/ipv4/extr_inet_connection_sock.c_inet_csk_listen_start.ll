; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)*, {}* }
%struct.inet_connection_sock = type { i32 }
%struct.inet_sock = type { i32, i32 }

@EADDRINUSE = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_csk_listen_start(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.inet_sock* @inet_sk(%struct.sock* %11)
  store %struct.inet_sock* %12, %struct.inet_sock** %7, align 8
  %13 = load i32, i32* @EADDRINUSE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %16 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %15, i32 0, i32 0
  %17 = call i32 @reqsk_queue_alloc(i32* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call i32 @inet_csk_delack_init(%struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = load i32, i32* @TCP_LISTEN, align 4
  %24 = call i32 @inet_sk_state_store(%struct.sock* %22, i32 %23)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = bitcast {}** %28 to i32 (%struct.sock*, i32)**
  %30 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %29, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %33 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %30(%struct.sock* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %2
  %38 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %39 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %43 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @sk_dst_reset(%struct.sock* %44)
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %49, align 8
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 %50(%struct.sock* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %66

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = load i32, i32* @TCP_CLOSE, align 4
  %64 = call i32 @inet_sk_set_state(%struct.sock* %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %59
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @reqsk_queue_alloc(i32*) #1

declare dso_local i32 @inet_csk_delack_init(%struct.sock*) #1

declare dso_local i32 @inet_sk_state_store(%struct.sock*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @inet_sk_set_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
