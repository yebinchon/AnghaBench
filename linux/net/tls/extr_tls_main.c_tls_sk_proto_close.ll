; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_sk_proto_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_sk_proto_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, i64)* }
%struct.inet_connection_sock = type { i32 }
%struct.tls_context = type { i64, i64, i64, %struct.TYPE_2__* }

@TLS_SW = common dso_local global i64 0, align 8
@TLS_HW = common dso_local global i64 0, align 8
@TLS_BASE = common dso_local global i64 0, align 8
@tls_write_space = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @tls_sk_proto_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_sk_proto_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.tls_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %11)
  store %struct.tls_context* %12, %struct.tls_context** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i64 @sock_sndtimeo(%struct.sock* %13, i32 0)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %16 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TLS_SW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %22 = call i32 @tls_sw_cancel_work_tx(%struct.tls_context* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @lock_sock(%struct.sock* %24)
  %26 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %27 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TLS_HW, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %33 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TLS_HW, align 8
  %36 = icmp ne i64 %34, %35
  br label %37

37:                                               ; preds = %31, %23
  %38 = phi i1 [ false, %23 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %41 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TLS_BASE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %47 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TLS_BASE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %37
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @tls_sk_proto_cleanup(%struct.sock* %52, %struct.tls_context* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  %59 = call i32 @write_lock_bh(i32* %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %64 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rcu_assign_pointer(i32 %65, i32* null)
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %69 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 2
  store %struct.TYPE_2__* %70, %struct.TYPE_2__** %72, align 8
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @tls_write_space, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %80 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %67
  %85 = load %struct.sock*, %struct.sock** %3, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 1
  %87 = call i32 @write_unlock_bh(i32* %86)
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = call i32 @release_sock(%struct.sock* %88)
  %90 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %91 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TLS_SW, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %97 = call i32 @tls_sw_free_ctx_tx(%struct.tls_context* %96)
  br label %98

98:                                               ; preds = %95, %84
  %99 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %100 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TLS_SW, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %106 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TLS_HW, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %98
  %111 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %112 = call i32 @tls_sw_strparser_done(%struct.tls_context* %111)
  br label %113

113:                                              ; preds = %110, %104
  %114 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %115 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TLS_SW, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %121 = call i32 @tls_sw_free_ctx_rx(%struct.tls_context* %120)
  br label %122

122:                                              ; preds = %119, %113
  %123 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %124 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32 (%struct.sock*, i64)*, i32 (%struct.sock*, i64)** %126, align 8
  %128 = load %struct.sock*, %struct.sock** %3, align 8
  %129 = load i64, i64* %4, align 8
  %130 = call i32 %127(%struct.sock* %128, i64 %129)
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load %struct.sock*, %struct.sock** %3, align 8
  %135 = load %struct.tls_context*, %struct.tls_context** %6, align 8
  %136 = call i32 @tls_ctx_free(%struct.sock* %134, %struct.tls_context* %135)
  br label %137

137:                                              ; preds = %133, %122
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @tls_sw_cancel_work_tx(%struct.tls_context*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @tls_sk_proto_cleanup(%struct.sock*, %struct.tls_context*, i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @tls_sw_free_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @tls_sw_strparser_done(%struct.tls_context*) #1

declare dso_local i32 @tls_sw_free_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @tls_ctx_free(%struct.sock*, %struct.tls_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
