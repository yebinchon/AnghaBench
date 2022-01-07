; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_enquiry_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_enquiry_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"(%p) S%d TX RR(1) R%d\0A\00", align 1
@LAPB_RR = common dso_local global i32 0, align 4
@LAPB_POLLON = common dso_local global i32 0, align 4
@LAPB_RESPONSE = common dso_local global i32 0, align 4
@LAPB_ACK_PENDING_CONDITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_enquiry_response(%struct.lapb_cb* %0) #0 {
  %2 = alloca %struct.lapb_cb*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %2, align 8
  %3 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %4 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %7 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %10 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11)
  %13 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %14 = load i32, i32* @LAPB_RR, align 4
  %15 = load i32, i32* @LAPB_POLLON, align 4
  %16 = load i32, i32* @LAPB_RESPONSE, align 4
  %17 = call i32 @lapb_send_control(%struct.lapb_cb* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @LAPB_ACK_PENDING_CONDITION, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %21 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i32 @lapb_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lapb_send_control(%struct.lapb_cb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
