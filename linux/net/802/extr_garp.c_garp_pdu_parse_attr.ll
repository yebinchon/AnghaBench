; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_parse_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garp_applicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.garp_attr_hdr = type { i32, i32, i32 }
%struct.garp_attr = type { i32 }

@GARP_EVENT_R_LEAVE_EMPTY = common dso_local global i32 0, align 4
@GARP_EVENT_R_JOIN_EMPTY = common dso_local global i32 0, align 4
@GARP_EVENT_R_JOIN_IN = common dso_local global i32 0, align 4
@GARP_EVENT_R_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.garp_applicant*, %struct.sk_buff*, i32)* @garp_pdu_parse_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garp_pdu_parse_attr(%struct.garp_applicant* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.garp_applicant*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.garp_attr_hdr*, align 8
  %9 = alloca %struct.garp_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.garp_applicant* %0, %struct.garp_applicant** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @pskb_may_pull(%struct.sk_buff* %12, i32 12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %96

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.garp_attr_hdr*
  store %struct.garp_attr_hdr* %20, %struct.garp_attr_hdr** %8, align 8
  %21 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %22 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 12
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %96

27:                                               ; preds = %16
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pskb_may_pull(%struct.sk_buff* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %96

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %38 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @skb_pull(%struct.sk_buff* %36, i32 %39)
  %41 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %42 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 12, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %49 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %96

55:                                               ; preds = %35
  %56 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %57 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %75 [
    i32 129, label %59
    i32 131, label %67
    i32 130, label %69
    i32 128, label %71
    i32 132, label %73
  ]

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %96

63:                                               ; preds = %59
  %64 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %65 = load i32, i32* @GARP_EVENT_R_LEAVE_EMPTY, align 4
  %66 = call i32 @garp_gid_event(%struct.garp_applicant* %64, i32 %65)
  store i32 0, i32* %4, align 4
  br label %96

67:                                               ; preds = %55
  %68 = load i32, i32* @GARP_EVENT_R_JOIN_EMPTY, align 4
  store i32 %68, i32* %10, align 4
  br label %76

69:                                               ; preds = %55
  %70 = load i32, i32* @GARP_EVENT_R_JOIN_IN, align 4
  store i32 %70, i32* %10, align 4
  br label %76

71:                                               ; preds = %55
  %72 = load i32, i32* @GARP_EVENT_R_LEAVE_EMPTY, align 4
  store i32 %72, i32* %10, align 4
  br label %76

73:                                               ; preds = %55
  %74 = load i32, i32* @GARP_EVENT_R_EMPTY, align 4
  store i32 %74, i32* %10, align 4
  br label %76

75:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %96

76:                                               ; preds = %73, %71, %69, %67
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -1, i32* %4, align 4
  br label %96

80:                                               ; preds = %76
  %81 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %82 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %83 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call %struct.garp_attr* @garp_attr_lookup(%struct.garp_applicant* %81, i32 %84, i32 %85, i32 %86)
  store %struct.garp_attr* %87, %struct.garp_attr** %9, align 8
  %88 = load %struct.garp_attr*, %struct.garp_attr** %9, align 8
  %89 = icmp eq %struct.garp_attr* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %96

91:                                               ; preds = %80
  %92 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %93 = load %struct.garp_attr*, %struct.garp_attr** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @garp_attr_event(%struct.garp_applicant* %92, %struct.garp_attr* %93, i32 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %91, %90, %79, %75, %63, %62, %54, %34, %26, %15
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @garp_gid_event(%struct.garp_applicant*, i32) #1

declare dso_local %struct.garp_attr* @garp_attr_lookup(%struct.garp_applicant*, i32, i32, i32) #1

declare dso_local i32 @garp_attr_event(%struct.garp_applicant*, %struct.garp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
