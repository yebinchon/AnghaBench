; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_backlog_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_backlog_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_ep_common*, %struct.sctp_transport* }
%struct.sctp_ep_common = type { i64, %struct.sock*, i64, %struct.sctp_inq }
%struct.sctp_inq = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.TYPE_2__ = type { %struct.sctp_chunk* }

@SCTP_EP_TYPE_ASSOCIATION = common dso_local global i64 0, align 8
@SCTP_EP_TYPE_SOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_backlog_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_inq*, align 8
  %8 = alloca %struct.sctp_transport*, align 8
  %9 = alloca %struct.sctp_ep_common*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  store %struct.sctp_chunk* %14, %struct.sctp_chunk** %6, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %16 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %15, i32 0, i32 0
  %17 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %16, align 8
  %18 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %17, i32 0, i32 3
  store %struct.sctp_inq* %18, %struct.sctp_inq** %7, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 1
  %21 = load %struct.sctp_transport*, %struct.sctp_transport** %20, align 8
  store %struct.sctp_transport* %21, %struct.sctp_transport** %8, align 8
  store %struct.sctp_ep_common* null, %struct.sctp_ep_common** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 0
  %24 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %23, align 8
  store %struct.sctp_ep_common* %24, %struct.sctp_ep_common** %9, align 8
  %25 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %9, align 8
  %26 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %31 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %30)
  br label %104

32:                                               ; preds = %2
  %33 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %33, i32 0, i32 1
  %35 = load %struct.sock*, %struct.sock** %34, align 8
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = icmp ne %struct.sock* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %32
  %42 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %9, align 8
  %43 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %42, i32 0, i32 1
  %44 = load %struct.sock*, %struct.sock** %43, align 8
  store %struct.sock* %44, %struct.sock** %4, align 8
  %45 = call i32 (...) @local_bh_disable()
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = call i32 @bh_lock_sock(%struct.sock* %46)
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i64 @sock_owned_by_user(%struct.sock* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = call i32 @sctp_newsk_ready(%struct.sock* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %51, %41
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @READ_ONCE(i32 %60)
  %62 = call i64 @sk_add_backlog(%struct.sock* %56, %struct.sk_buff* %57, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %66 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %65)
  br label %68

67:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %64
  br label %73

69:                                               ; preds = %51
  %70 = load %struct.sctp_inq*, %struct.sctp_inq** %7, align 8
  %71 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %72 = call i32 @sctp_inq_push(%struct.sctp_inq* %70, %struct.sctp_chunk* %71)
  br label %73

73:                                               ; preds = %69, %68
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = call i32 @bh_unlock_sock(%struct.sock* %74)
  %76 = call i32 (...) @local_bh_enable()
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %127

80:                                               ; preds = %73
  br label %103

81:                                               ; preds = %32
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = call i32 @sctp_newsk_ready(%struct.sock* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %81
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @READ_ONCE(i32 %90)
  %92 = call i64 @sk_add_backlog(%struct.sock* %86, %struct.sk_buff* %87, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %127

95:                                               ; preds = %85
  %96 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %97 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %96)
  br label %102

98:                                               ; preds = %81
  %99 = load %struct.sctp_inq*, %struct.sctp_inq** %7, align 8
  %100 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %101 = call i32 @sctp_inq_push(%struct.sctp_inq* %99, %struct.sctp_chunk* %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103, %29
  %105 = load i64, i64* @SCTP_EP_TYPE_ASSOCIATION, align 8
  %106 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %9, align 8
  %107 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %112 = call i32 @sctp_transport_put(%struct.sctp_transport* %111)
  br label %126

113:                                              ; preds = %104
  %114 = load i64, i64* @SCTP_EP_TYPE_SOCKET, align 8
  %115 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %9, align 8
  %116 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %9, align 8
  %121 = call i32 @sctp_ep(%struct.sctp_ep_common* %120)
  %122 = call i32 @sctp_endpoint_put(i32 %121)
  br label %125

123:                                              ; preds = %113
  %124 = call i32 (...) @BUG()
  br label %125

125:                                              ; preds = %123, %119
  br label %126

126:                                              ; preds = %125, %110
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %94, %79
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sctp_newsk_ready(%struct.sock*) #1

declare dso_local i64 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @sctp_inq_push(%struct.sctp_inq*, %struct.sctp_chunk*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_endpoint_put(i32) #1

declare dso_local i32 @sctp_ep(%struct.sctp_ep_common*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
