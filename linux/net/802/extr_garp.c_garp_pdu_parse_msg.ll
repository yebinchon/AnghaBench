; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_parse_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_parse_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garp_applicant = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.garp_msg_hdr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.garp_applicant*, %struct.sk_buff*)* @garp_pdu_parse_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garp_pdu_parse_msg(%struct.garp_applicant* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.garp_applicant*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.garp_msg_hdr*, align 8
  store %struct.garp_applicant* %0, %struct.garp_applicant** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = call i32 @pskb_may_pull(%struct.sk_buff* %7, i32 8)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.garp_msg_hdr*
  store %struct.garp_msg_hdr* %15, %struct.garp_msg_hdr** %6, align 8
  %16 = load %struct.garp_msg_hdr*, %struct.garp_msg_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.garp_msg_hdr, %struct.garp_msg_hdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %45

21:                                               ; preds = %11
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @skb_pull(%struct.sk_buff* %22, i32 8)
  br label %24

24:                                               ; preds = %43, %21
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.garp_applicant*, %struct.garp_applicant** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.garp_msg_hdr*, %struct.garp_msg_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.garp_msg_hdr, %struct.garp_msg_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @garp_pdu_parse_attr(%struct.garp_applicant* %30, %struct.sk_buff* %31, i64 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %45

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i64 @garp_pdu_parse_end_mark(%struct.sk_buff* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %44

43:                                               ; preds = %38
  br label %24

44:                                               ; preds = %42, %24
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37, %20, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @garp_pdu_parse_attr(%struct.garp_applicant*, %struct.sk_buff*, i64) #1

declare dso_local i64 @garp_pdu_parse_end_mark(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
