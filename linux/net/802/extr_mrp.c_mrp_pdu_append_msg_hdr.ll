; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_append_msg_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_append_msg_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrp_applicant = type { i32 }
%struct.mrp_msg_hdr = type { i8*, i8* }
%struct.TYPE_2__ = type { %struct.mrp_msg_hdr*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrp_applicant*, i8*, i8*)* @mrp_pdu_append_msg_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrp_pdu_append_msg_hdr(%struct.mrp_applicant* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrp_applicant*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mrp_msg_hdr*, align 8
  store %struct.mrp_applicant* %0, %struct.mrp_applicant** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %10 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @mrp_cb(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mrp_msg_hdr*, %struct.mrp_msg_hdr** %13, align 8
  %15 = icmp ne %struct.mrp_msg_hdr* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %18 = call i64 @mrp_pdu_append_end_mark(%struct.mrp_applicant* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %57

21:                                               ; preds = %16
  %22 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %23 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @mrp_cb(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.mrp_msg_hdr* null, %struct.mrp_msg_hdr** %26, align 8
  %27 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %28 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_2__* @mrp_cb(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %21, %3
  %33 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %34 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @skb_tailroom(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 16
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %57

40:                                               ; preds = %32
  %41 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %42 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.mrp_msg_hdr* @__skb_put(i32 %43, i32 16)
  store %struct.mrp_msg_hdr* %44, %struct.mrp_msg_hdr** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.mrp_msg_hdr*, %struct.mrp_msg_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.mrp_msg_hdr, %struct.mrp_msg_hdr* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.mrp_msg_hdr*, %struct.mrp_msg_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.mrp_msg_hdr, %struct.mrp_msg_hdr* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.mrp_msg_hdr*, %struct.mrp_msg_hdr** %8, align 8
  %52 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %53 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_2__* @mrp_cb(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store %struct.mrp_msg_hdr* %51, %struct.mrp_msg_hdr** %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %40, %39, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @mrp_cb(i32) #1

declare dso_local i64 @mrp_pdu_append_end_mark(%struct.mrp_applicant*) #1

declare dso_local i32 @skb_tailroom(i32) #1

declare dso_local %struct.mrp_msg_hdr* @__skb_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
