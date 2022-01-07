; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_buflen.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_buflen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_ackvec = type { i32, i32, i32 }

@DCCPAV_MAX_ACKVEC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_ackvec_buflen(%struct.dccp_ackvec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dccp_ackvec*, align 8
  store %struct.dccp_ackvec* %0, %struct.dccp_ackvec** %3, align 8
  %4 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %5 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @DCCPAV_MAX_ACKVEC_LEN, align 4
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %13 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %3, align 8
  %16 = getelementptr inbounds %struct.dccp_ackvec, %struct.dccp_ackvec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__ackvec_idx_sub(i32 %14, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__ackvec_idx_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
