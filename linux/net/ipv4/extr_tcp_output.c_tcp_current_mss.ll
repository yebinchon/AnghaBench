; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_current_mss.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_current_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i32 }
%struct.dst_entry = type { i32 }
%struct.tcp_out_options = type { i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_current_mss(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_out_options, align 4
  %8 = alloca %struct.tcp_md5sig_key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %13)
  store %struct.dst_entry* %14, %struct.dst_entry** %4, align 8
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %19 = icmp ne %struct.dst_entry* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %22 = call i64 @dst_mtu(%struct.dst_entry* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @tcp_sync_mss(%struct.sock* %30, i64 %31)
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %29, %20
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = call i32 @tcp_established_options(%struct.sock* %35, i32* null, %struct.tcp_out_options* %7, %struct.tcp_md5sig_key** %8)
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %5, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %45, %34
  %56 = load i64, i64* %5, align 8
  %57 = trunc i64 %56 to i32
  ret i32 %57
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @tcp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @tcp_established_options(%struct.sock*, i32*, %struct.tcp_out_options*, %struct.tcp_md5sig_key**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
