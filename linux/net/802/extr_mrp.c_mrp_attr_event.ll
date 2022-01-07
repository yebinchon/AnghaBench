; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_attr_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_attr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrp_applicant = type { i32 }
%struct.mrp_attr = type { i64 }

@mrp_applicant_state_table = common dso_local global i32** null, align 8
@MRP_APPLICANT_INVALID = common dso_local global i32 0, align 4
@MRP_EVENT_TX = common dso_local global i32 0, align 4
@mrp_tx_action_table = common dso_local global i32* null, align 8
@MRP_VECATTR_EVENT_NEW = common dso_local global i32 0, align 4
@MRP_VECATTR_EVENT_JOIN_IN = common dso_local global i32 0, align 4
@MRP_VECATTR_EVENT_LV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrp_applicant*, %struct.mrp_attr*, i32)* @mrp_attr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrp_attr_event(%struct.mrp_applicant* %0, %struct.mrp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mrp_applicant*, align 8
  %5 = alloca %struct.mrp_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mrp_applicant* %0, %struct.mrp_applicant** %4, align 8
  store %struct.mrp_attr* %1, %struct.mrp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32**, i32*** @mrp_applicant_state_table, align 8
  %9 = load %struct.mrp_attr*, %struct.mrp_attr** %5, align 8
  %10 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32*, i32** %8, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MRP_APPLICANT_INVALID, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @WARN_ON(i32 1)
  br label %70

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MRP_EVENT_TX, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i32*, i32** @mrp_tx_action_table, align 8
  %29 = load %struct.mrp_attr*, %struct.mrp_attr** %5, align 8
  %30 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %62 [
    i32 133, label %34
    i32 130, label %34
    i32 132, label %34
    i32 128, label %35
    i32 131, label %43
    i32 129, label %51
  ]

34:                                               ; preds = %27, %27, %27
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.mrp_applicant*, %struct.mrp_applicant** %4, align 8
  %37 = load %struct.mrp_attr*, %struct.mrp_attr** %5, align 8
  %38 = load i32, i32* @MRP_VECATTR_EVENT_NEW, align 4
  %39 = call i32 @mrp_pdu_append_vecattr_event(%struct.mrp_applicant* %36, %struct.mrp_attr* %37, i32 %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %70

42:                                               ; preds = %35
  br label %64

43:                                               ; preds = %27
  %44 = load %struct.mrp_applicant*, %struct.mrp_applicant** %4, align 8
  %45 = load %struct.mrp_attr*, %struct.mrp_attr** %5, align 8
  %46 = load i32, i32* @MRP_VECATTR_EVENT_JOIN_IN, align 4
  %47 = call i32 @mrp_pdu_append_vecattr_event(%struct.mrp_applicant* %44, %struct.mrp_attr* %45, i32 %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %70

50:                                               ; preds = %43
  br label %64

51:                                               ; preds = %27
  %52 = load %struct.mrp_applicant*, %struct.mrp_applicant** %4, align 8
  %53 = load %struct.mrp_attr*, %struct.mrp_attr** %5, align 8
  %54 = load i32, i32* @MRP_VECATTR_EVENT_LV, align 4
  %55 = call i32 @mrp_pdu_append_vecattr_event(%struct.mrp_applicant* %52, %struct.mrp_attr* %53, i32 %54)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %70

58:                                               ; preds = %51
  %59 = load %struct.mrp_applicant*, %struct.mrp_applicant** %4, align 8
  %60 = load %struct.mrp_attr*, %struct.mrp_attr** %5, align 8
  %61 = call i32 @mrp_attr_destroy(%struct.mrp_applicant* %59, %struct.mrp_attr* %60)
  br label %70

62:                                               ; preds = %27
  %63 = call i32 @WARN_ON(i32 1)
  br label %64

64:                                               ; preds = %62, %50, %42, %34
  br label %65

65:                                               ; preds = %64, %23
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.mrp_attr*, %struct.mrp_attr** %5, align 8
  %69 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %58, %57, %49, %41, %21
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mrp_pdu_append_vecattr_event(%struct.mrp_applicant*, %struct.mrp_attr*, i32) #1

declare dso_local i32 @mrp_attr_destroy(%struct.mrp_applicant*, %struct.mrp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
