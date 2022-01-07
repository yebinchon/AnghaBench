; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sock* }
%struct.sock = type { i32, i32 (%struct.sock*)*, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sctp_sock = type { i32, %struct.sk_buff_head, i64, i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff = type { i32 }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_DATA_NOT_FRAG = common dso_local global i32 0, align 4
@SCTP_DATA_FRAG_MASK = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sctp_sock*, align 8
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  %12 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %6, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %18)
  store %struct.sctp_sock* %19, %struct.sctp_sock** %7, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %21 = call %struct.sk_buff* @__skb_peek(%struct.sk_buff_head* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %22)
  store %struct.sctp_ulpevent* %23, %struct.sctp_ulpevent** %8, align 8
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RCV_SHUTDOWN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SEND_SHUTDOWN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %39 = call i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %30
  br label %148

42:                                               ; preds = %37, %2
  %43 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %44 = call i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.sock*, %struct.sock** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = call i32 @sk_mark_napi_id(%struct.sock* %47, %struct.sk_buff* %48)
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 @sk_incoming_cpu_update(%struct.sock* %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %54 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %55 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sctp_ulpevent_is_enabled(%struct.sctp_ulpevent* %53, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %148

62:                                               ; preds = %52
  %63 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %63, i32 0, i32 3
  %65 = call i64 @atomic_read(i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 2
  store %struct.sk_buff_head* %69, %struct.sk_buff_head** %9, align 8
  br label %115

70:                                               ; preds = %62
  %71 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %72 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %70
  %76 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %77 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MSG_NOTIFICATION, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @SCTP_DATA_NOT_FRAG, align 4
  %84 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %85 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SCTP_DATA_FRAG_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %75
  %91 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %92 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %91, i32 0, i32 1
  store %struct.sk_buff_head* %92, %struct.sk_buff_head** %9, align 8
  br label %101

93:                                               ; preds = %82
  %94 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %95 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MSG_EOR, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %11, align 4
  %99 = load %struct.sock*, %struct.sock** %6, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 2
  store %struct.sk_buff_head* %100, %struct.sk_buff_head** %9, align 8
  br label %101

101:                                              ; preds = %93, %90
  br label %114

102:                                              ; preds = %70
  %103 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %104 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.sock*, %struct.sock** %6, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 2
  store %struct.sk_buff_head* %109, %struct.sk_buff_head** %9, align 8
  br label %113

110:                                              ; preds = %102
  %111 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %112 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %111, i32 0, i32 1
  store %struct.sk_buff_head* %112, %struct.sk_buff_head** %9, align 8
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %101
  br label %115

115:                                              ; preds = %114, %67
  %116 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %117 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %118 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %116, %struct.sk_buff_head* %117)
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %123 = call i32 @sctp_ulpq_clear_pd(%struct.sctp_ulpq* %122)
  br label %124

124:                                              ; preds = %121, %115
  %125 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %126 = load %struct.sock*, %struct.sock** %6, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 2
  %128 = icmp eq %struct.sk_buff_head* %125, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %124
  %130 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %131 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %129
  %135 = load %struct.sock*, %struct.sock** %6, align 8
  %136 = call i32 @sock_owned_by_user(%struct.sock* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %140 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %138, %134
  %142 = load %struct.sock*, %struct.sock** %6, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 1
  %144 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %143, align 8
  %145 = load %struct.sock*, %struct.sock** %6, align 8
  %146 = call i32 %144(%struct.sock* %145)
  br label %147

147:                                              ; preds = %141, %129, %124
  store i32 1, i32* %3, align 4
  br label %158

148:                                              ; preds = %61, %41
  %149 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %150 = icmp ne %struct.sk_buff_head* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %153 = call i32 @sctp_queue_purge_ulpevents(%struct.sk_buff_head* %152)
  br label %157

154:                                              ; preds = %148
  %155 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %156 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %155)
  br label %157

157:                                              ; preds = %154, %151
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %147
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_peek(%struct.sk_buff_head*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sk_mark_napi_id(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_incoming_cpu_update(%struct.sock*) #1

declare dso_local i32 @sctp_ulpevent_is_enabled(%struct.sctp_ulpevent*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @sctp_ulpq_clear_pd(%struct.sctp_ulpq*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sctp_queue_purge_ulpevents(%struct.sk_buff_head*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
