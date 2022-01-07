; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_openreq_init_rwin.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_openreq_init_rwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32, i32 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_request_sock = type { i32, i32, i64 }
%struct.tcp_sock = type { i32 }

@RTAX_WINDOW = common dso_local global i32 0, align 4
@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4
@RTAX_INITRWND = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_openreq_init_rwin(%struct.request_sock* %0, %struct.sock* %1, %struct.dst_entry* %2) #0 {
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.inet_request_sock*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.request_sock* %0, %struct.request_sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.dst_entry* %2, %struct.dst_entry** %6, align 8
  %14 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %15 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %14)
  store %struct.inet_request_sock* %15, %struct.inet_request_sock** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %16)
  store %struct.tcp_sock* %17, %struct.tcp_sock** %8, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call i32 @tcp_full_space(%struct.sock* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %22 = call i32 @dst_metric_advmss(%struct.dst_entry* %21)
  %23 = call i32 @tcp_mss_clamp(%struct.tcp_sock* %20, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @READ_ONCE(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = sext i32 %28 to i64
  %32 = inttoptr i64 %31 to i8*
  br label %37

33:                                               ; preds = %3
  %34 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %35 = load i32, i32* @RTAX_WINDOW, align 4
  %36 = call i8* @dst_metric(%struct.dst_entry* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i8* [ %32, %30 ], [ %36, %33 ]
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %41 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %50 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %56 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %48
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %62 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %54, %37
  %64 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %65 = bitcast %struct.request_sock* %64 to %struct.sock*
  %66 = call i32 @tcp_rwnd_init_bpf(%struct.sock* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %71 = load i32, i32* @RTAX_INITRWND, align 4
  %72 = call i8* @dst_metric(%struct.dst_entry* %70, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %12, align 4
  br label %85

74:                                               ; preds = %63
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %76, %77
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %69
  %86 = load %struct.sock*, %struct.sock** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %90 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  br label %96

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = sub nsw i32 %88, %97
  %99 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %100 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %99, i32 0, i32 1
  %101 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %102 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %101, i32 0, i32 0
  %103 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %104 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @tcp_select_initial_window(%struct.sock* %86, i32 %87, i32 %98, i32* %100, i32* %102, i32 %105, i32* %11, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %110 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  ret void
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_full_space(%struct.sock*) #1

declare dso_local i32 @tcp_mss_clamp(%struct.tcp_sock*, i32) #1

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i8* @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_rwnd_init_bpf(%struct.sock*) #1

declare dso_local i32 @tcp_select_initial_window(%struct.sock*, i32, i32, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
