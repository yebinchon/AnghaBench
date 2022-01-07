; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_append_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_append_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garp_applicant = type { i32 }
%struct.garp_msg_hdr = type { i8* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.garp_applicant*, i8*)* @garp_pdu_append_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garp_pdu_append_msg(%struct.garp_applicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.garp_applicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.garp_msg_hdr*, align 8
  store %struct.garp_applicant* %0, %struct.garp_applicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.garp_applicant*, %struct.garp_applicant** %4, align 8
  %8 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @skb_tailroom(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.garp_applicant*, %struct.garp_applicant** %4, align 8
  %16 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.garp_msg_hdr* @__skb_put(i32 %17, i32 8)
  store %struct.garp_msg_hdr* %18, %struct.garp_msg_hdr** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.garp_msg_hdr*, %struct.garp_msg_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.garp_msg_hdr, %struct.garp_msg_hdr* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.garp_applicant*, %struct.garp_applicant** %4, align 8
  %24 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_2__* @garp_cb(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %22, i8** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %14, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @skb_tailroom(i32) #1

declare dso_local %struct.garp_msg_hdr* @__skb_put(i32, i32) #1

declare dso_local %struct.TYPE_2__* @garp_cb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
