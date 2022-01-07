; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_parse_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_parse_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrp_applicant = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.mrp_msg_hdr = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrp_applicant*, %struct.sk_buff*, i32*)* @mrp_pdu_parse_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrp_pdu_parse_msg(%struct.mrp_applicant* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrp_applicant*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mrp_msg_hdr, align 4
  store %struct.mrp_applicant* %0, %struct.mrp_applicant** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff* %9, i32 %11, i32 4, %struct.mrp_msg_hdr* %8)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_6__* @mrp_cb(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.TYPE_6__* @mrp_cb(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %80

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call %struct.TYPE_6__* @mrp_cb(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.TYPE_6__* @mrp_cb(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %43 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %41, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %35
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call %struct.TYPE_6__* @mrp_cb(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %35, %22
  store i32 -1, i32* %4, align 4
  br label %80

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %78, %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @mrp_pdu_parse_end_mark(%struct.sk_buff* %66, i32* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %79

71:                                               ; preds = %65
  %72 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @mrp_pdu_parse_vecattr(%struct.mrp_applicant* %72, %struct.sk_buff* %73, i32* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %80

78:                                               ; preds = %71
  br label %58

79:                                               ; preds = %70, %58
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %77, %56, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.mrp_msg_hdr*) #1

declare dso_local %struct.TYPE_6__* @mrp_cb(%struct.sk_buff*) #1

declare dso_local i64 @mrp_pdu_parse_end_mark(%struct.sk_buff*, i32*) #1

declare dso_local i64 @mrp_pdu_parse_vecattr(%struct.mrp_applicant*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
