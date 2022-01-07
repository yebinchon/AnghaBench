; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_attr_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_attr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.garp_applicant = type { i32 }
%struct.garp_attr = type { i64 }

@garp_applicant_state_table = common dso_local global %struct.TYPE_2__** null, align 8
@GARP_APPLICANT_INVALID = common dso_local global i32 0, align 4
@GARP_JOIN_IN = common dso_local global i32 0, align 4
@GARP_LEAVE_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.garp_applicant*, %struct.garp_attr*, i32)* @garp_attr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garp_attr_event(%struct.garp_applicant* %0, %struct.garp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.garp_applicant*, align 8
  %5 = alloca %struct.garp_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.garp_applicant* %0, %struct.garp_applicant** %4, align 8
  store %struct.garp_attr* %1, %struct.garp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @garp_applicant_state_table, align 8
  %9 = load %struct.garp_attr*, %struct.garp_attr** %5, align 8
  %10 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GARP_APPLICANT_INVALID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @garp_applicant_state_table, align 8
  %25 = load %struct.garp_attr*, %struct.garp_attr** %5, align 8
  %26 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %52 [
    i32 130, label %35
    i32 129, label %36
    i32 128, label %44
  ]

35:                                               ; preds = %23
  br label %54

36:                                               ; preds = %23
  %37 = load %struct.garp_applicant*, %struct.garp_applicant** %4, align 8
  %38 = load %struct.garp_attr*, %struct.garp_attr** %5, align 8
  %39 = load i32, i32* @GARP_JOIN_IN, align 4
  %40 = call i32 @garp_pdu_append_attr(%struct.garp_applicant* %37, %struct.garp_attr* %38, i32 %39)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %59

43:                                               ; preds = %36
  br label %54

44:                                               ; preds = %23
  %45 = load %struct.garp_applicant*, %struct.garp_applicant** %4, align 8
  %46 = load %struct.garp_attr*, %struct.garp_attr** %5, align 8
  %47 = load i32, i32* @GARP_LEAVE_EMPTY, align 4
  %48 = call i32 @garp_pdu_append_attr(%struct.garp_applicant* %45, %struct.garp_attr* %46, i32 %47)
  %49 = load %struct.garp_applicant*, %struct.garp_applicant** %4, align 8
  %50 = load %struct.garp_attr*, %struct.garp_attr** %5, align 8
  %51 = call i32 @garp_attr_destroy(%struct.garp_applicant* %49, %struct.garp_attr* %50)
  br label %59

52:                                               ; preds = %23
  %53 = call i32 @WARN_ON(i32 1)
  br label %54

54:                                               ; preds = %52, %43, %35
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = load %struct.garp_attr*, %struct.garp_attr** %5, align 8
  %58 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %44, %42, %22
  ret void
}

declare dso_local i32 @garp_pdu_append_attr(%struct.garp_applicant*, %struct.garp_attr*, i32) #1

declare dso_local i32 @garp_attr_destroy(%struct.garp_applicant*, %struct.garp_attr*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
