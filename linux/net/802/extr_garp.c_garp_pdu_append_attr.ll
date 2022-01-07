; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_append_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_pdu_append_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garp_applicant = type { i32 }
%struct.garp_attr = type { i32, i32, i64 }
%struct.garp_attr_hdr = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.garp_applicant*, %struct.garp_attr*, i32)* @garp_pdu_append_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garp_pdu_append_attr(%struct.garp_applicant* %0, %struct.garp_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.garp_applicant*, align 8
  %6 = alloca %struct.garp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.garp_attr_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.garp_applicant* %0, %struct.garp_applicant** %5, align 8
  store %struct.garp_attr* %1, %struct.garp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %93, %3
  %12 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %13 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %18 = call i32 @garp_pdu_init(%struct.garp_applicant* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %96

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %26 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_2__* @garp_cb(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.garp_attr*, %struct.garp_attr** %6, align 8
  %32 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %24
  %36 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %37 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_2__* @garp_cb(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %45 = call i64 @garp_pdu_append_end_mark(%struct.garp_applicant* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %93

48:                                               ; preds = %43, %35
  %49 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %50 = load %struct.garp_attr*, %struct.garp_attr** %6, align 8
  %51 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @garp_pdu_append_msg(%struct.garp_applicant* %49, i64 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %93

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.garp_attr*, %struct.garp_attr** %6, align 8
  %59 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add i64 12, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %65 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @skb_tailroom(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %93

71:                                               ; preds = %57
  %72 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %73 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.garp_attr_hdr* @__skb_put(i32 %74, i32 %75)
  store %struct.garp_attr_hdr* %76, %struct.garp_attr_hdr** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %79 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %82 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.garp_attr_hdr*, %struct.garp_attr_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.garp_attr_hdr, %struct.garp_attr_hdr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.garp_attr*, %struct.garp_attr** %6, align 8
  %87 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.garp_attr*, %struct.garp_attr** %6, align 8
  %90 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @memcpy(i32 %85, i32 %88, i32 %91)
  store i32 0, i32* %4, align 4
  br label %96

93:                                               ; preds = %70, %55, %47
  %94 = load %struct.garp_applicant*, %struct.garp_applicant** %5, align 8
  %95 = call i32 @garp_pdu_queue(%struct.garp_applicant* %94)
  br label %11

96:                                               ; preds = %71, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @garp_pdu_init(%struct.garp_applicant*) #1

declare dso_local %struct.TYPE_2__* @garp_cb(i32) #1

declare dso_local i64 @garp_pdu_append_end_mark(%struct.garp_applicant*) #1

declare dso_local i64 @garp_pdu_append_msg(%struct.garp_applicant*, i64) #1

declare dso_local i32 @skb_tailroom(i32) #1

declare dso_local %struct.garp_attr_hdr* @__skb_put(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @garp_pdu_queue(%struct.garp_applicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
