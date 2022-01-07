; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_parse_vecattr_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_parse_vecattr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrp_applicant = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mrp_attr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MRP_EVENT_R_NEW = common dso_local global i32 0, align 4
@MRP_EVENT_R_JOIN_IN = common dso_local global i32 0, align 4
@MRP_EVENT_R_IN = common dso_local global i32 0, align 4
@MRP_EVENT_R_JOIN_MT = common dso_local global i32 0, align 4
@MRP_EVENT_R_MT = common dso_local global i32 0, align 4
@MRP_EVENT_R_LV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrp_applicant*, %struct.sk_buff*, i32)* @mrp_pdu_parse_vecattr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrp_pdu_parse_vecattr_event(%struct.mrp_applicant* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.mrp_applicant*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mrp_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.mrp_applicant* %0, %struct.mrp_applicant** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mrp_applicant*, %struct.mrp_applicant** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.TYPE_4__* @mrp_cb(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.TYPE_4__* @mrp_cb(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.TYPE_4__* @mrp_cb(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.mrp_attr* @mrp_attr_lookup(%struct.mrp_applicant* %9, i32 %13, i32 %19, i32 %25)
  store %struct.mrp_attr* %26, %struct.mrp_attr** %7, align 8
  %27 = load %struct.mrp_attr*, %struct.mrp_attr** %7, align 8
  %28 = icmp eq %struct.mrp_attr* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %50

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 132, label %34
    i32 133, label %36
    i32 131, label %38
    i32 129, label %40
    i32 130, label %42
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @MRP_EVENT_R_NEW, align 4
  store i32 %33, i32* %8, align 4
  br label %45

34:                                               ; preds = %30
  %35 = load i32, i32* @MRP_EVENT_R_JOIN_IN, align 4
  store i32 %35, i32* %8, align 4
  br label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @MRP_EVENT_R_IN, align 4
  store i32 %37, i32* %8, align 4
  br label %45

38:                                               ; preds = %30
  %39 = load i32, i32* @MRP_EVENT_R_JOIN_MT, align 4
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load i32, i32* @MRP_EVENT_R_MT, align 4
  store i32 %41, i32* %8, align 4
  br label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @MRP_EVENT_R_LV, align 4
  store i32 %43, i32* %8, align 4
  br label %45

44:                                               ; preds = %30
  br label %50

45:                                               ; preds = %42, %40, %38, %36, %34, %32
  %46 = load %struct.mrp_applicant*, %struct.mrp_applicant** %4, align 8
  %47 = load %struct.mrp_attr*, %struct.mrp_attr** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @mrp_attr_event(%struct.mrp_applicant* %46, %struct.mrp_attr* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %44, %29
  ret void
}

declare dso_local %struct.mrp_attr* @mrp_attr_lookup(%struct.mrp_applicant*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @mrp_cb(%struct.sk_buff*) #1

declare dso_local i32 @mrp_attr_event(%struct.mrp_applicant*, %struct.mrp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
