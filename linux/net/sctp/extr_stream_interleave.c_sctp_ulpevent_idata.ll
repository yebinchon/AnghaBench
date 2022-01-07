; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_ulpevent_idata.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_ulpevent_idata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sctp_ulpevent = type { i32, i8*, i32, i8* }
%struct.sk_buff_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SCTP_DATA_FIRST_FRAG = common dso_local global i32 0, align 4
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_ulpq*, %struct.sctp_chunk*, i32)* @sctp_ulpevent_idata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_ulpevent_idata(%struct.sctp_ulpq* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpq*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sk_buff_head, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(i32 %13, %struct.sctp_chunk* %14, i32 %15)
  store %struct.sctp_ulpevent* %16, %struct.sctp_ulpevent** %8, align 8
  %17 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %18 = icmp ne %struct.sctp_ulpevent* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %115

22:                                               ; preds = %3
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @ntohl(i32 %28)
  %30 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %31 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %33 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SCTP_DATA_FIRST_FRAG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %40 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %46 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %57

47:                                               ; preds = %22
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ntohl(i32 %53)
  %55 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %56 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %47, %38
  %58 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %59 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %57
  %65 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %66 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %67 = call %struct.sctp_ulpevent* @sctp_intl_reasm(%struct.sctp_ulpq* %65, %struct.sctp_ulpevent* %66)
  store %struct.sctp_ulpevent* %67, %struct.sctp_ulpevent** %8, align 8
  %68 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %69 = icmp ne %struct.sctp_ulpevent* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %9)
  %72 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %73 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %72)
  %74 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %9, i32 %73)
  %75 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %76 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MSG_EOR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %83 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %84 = call %struct.sctp_ulpevent* @sctp_intl_order(%struct.sctp_ulpq* %82, %struct.sctp_ulpevent* %83)
  store %struct.sctp_ulpevent* %84, %struct.sctp_ulpevent** %8, align 8
  br label %85

85:                                               ; preds = %81, %70
  br label %86

86:                                               ; preds = %85, %64
  br label %99

87:                                               ; preds = %57
  %88 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %89 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %90 = call %struct.sctp_ulpevent* @sctp_intl_reasm_uo(%struct.sctp_ulpq* %88, %struct.sctp_ulpevent* %89)
  store %struct.sctp_ulpevent* %90, %struct.sctp_ulpevent** %8, align 8
  %91 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %92 = icmp ne %struct.sctp_ulpevent* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %9)
  %95 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %96 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %95)
  %97 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %9, i32 %96)
  br label %98

98:                                               ; preds = %93, %87
  br label %99

99:                                               ; preds = %98, %86
  %100 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %101 = icmp ne %struct.sctp_ulpevent* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %104 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MSG_EOR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  store i32 %110, i32* %10, align 4
  %111 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %112 = call i32 @sctp_enqueue_event(%struct.sctp_ulpq* %111, %struct.sk_buff_head* %9)
  br label %113

113:                                              ; preds = %102, %99
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %19
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(i32, %struct.sctp_chunk*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_intl_reasm(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_intl_order(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_intl_reasm_uo(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_enqueue_event(%struct.sctp_ulpq*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
