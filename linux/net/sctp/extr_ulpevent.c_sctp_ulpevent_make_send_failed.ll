; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_send_failed.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_send_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sctp_send_failed = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_SEND_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_send_failed(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_ulpevent*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_ulpevent*, align 8
  %13 = alloca %struct.sctp_send_failed*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.sk_buff* @skb_copy_expand(i32 %24, i32 24, i32 0, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %14, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  br label %94

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 0
  %34 = call i64 @sctp_datachk_len(i32* %33)
  %35 = call i32 @skb_pull(%struct.sk_buff* %31, i64 %34)
  %36 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %36, i32 0, i32 0
  %38 = call i64 @sctp_datachk_len(i32* %37)
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %44 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %43)
  store %struct.sctp_ulpevent* %44, %struct.sctp_ulpevent** %12, align 8
  %45 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %46 = load i32, i32* @MSG_NOTIFICATION, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sctp_ulpevent_init(%struct.sctp_ulpevent* %45, i32 %46, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %52 = call %struct.sctp_send_failed* @skb_push(%struct.sk_buff* %51, i32 24)
  store %struct.sctp_send_failed* %52, %struct.sctp_send_failed** %13, align 8
  %53 = load i32, i32* @SCTP_SEND_FAILED, align 4
  %54 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %55 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %58 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 24, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %64 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %66 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %67 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @skb_trim(%struct.sk_buff* %65, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %72 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %74 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %73, i32 0, i32 2
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %76 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %75, i32 0, i32 1
  %77 = call i32 @memcpy(%struct.TYPE_4__* %74, i32* %76, i32 4)
  %78 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %79 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %84 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %87 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %88 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %86, %struct.sctp_association* %87)
  %89 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %90 = call i32 @sctp_assoc2id(%struct.sctp_association* %89)
  %91 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %92 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  store %struct.sctp_ulpevent* %93, %struct.sctp_ulpevent** %6, align 8
  br label %95

94:                                               ; preds = %29
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %6, align 8
  br label %95

95:                                               ; preds = %94, %30
  %96 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  ret %struct.sctp_ulpevent* %96
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(i32, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @sctp_datachk_len(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_init(%struct.sctp_ulpevent*, i32, i32) #1

declare dso_local %struct.sctp_send_failed* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
