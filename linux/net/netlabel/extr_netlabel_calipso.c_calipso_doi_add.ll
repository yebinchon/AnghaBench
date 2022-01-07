; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_calipso_doi_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_calipso_doi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calipso_doi = type { i32 }
%struct.netlbl_audit = type { i32 }
%struct.netlbl_calipso_ops = type { i32 (%struct.calipso_doi.0*, %struct.netlbl_audit.1*)* }
%struct.calipso_doi.0 = type opaque
%struct.netlbl_audit.1 = type opaque

@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calipso_doi_add(%struct.calipso_doi* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca %struct.calipso_doi*, align 8
  %4 = alloca %struct.netlbl_audit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlbl_calipso_ops*, align 8
  store %struct.calipso_doi* %0, %struct.calipso_doi** %3, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %4, align 8
  %7 = load i32, i32* @ENOMSG, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = call %struct.netlbl_calipso_ops* (...) @netlbl_calipso_ops_get()
  store %struct.netlbl_calipso_ops* %9, %struct.netlbl_calipso_ops** %6, align 8
  %10 = load %struct.netlbl_calipso_ops*, %struct.netlbl_calipso_ops** %6, align 8
  %11 = icmp ne %struct.netlbl_calipso_ops* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.netlbl_calipso_ops*, %struct.netlbl_calipso_ops** %6, align 8
  %14 = getelementptr inbounds %struct.netlbl_calipso_ops, %struct.netlbl_calipso_ops* %13, i32 0, i32 0
  %15 = load i32 (%struct.calipso_doi.0*, %struct.netlbl_audit.1*)*, i32 (%struct.calipso_doi.0*, %struct.netlbl_audit.1*)** %14, align 8
  %16 = load %struct.calipso_doi*, %struct.calipso_doi** %3, align 8
  %17 = bitcast %struct.calipso_doi* %16 to %struct.calipso_doi.0*
  %18 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %19 = bitcast %struct.netlbl_audit* %18 to %struct.netlbl_audit.1*
  %20 = call i32 %15(%struct.calipso_doi.0* %17, %struct.netlbl_audit.1* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %12, %2
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local %struct.netlbl_calipso_ops* @netlbl_calipso_ops_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
