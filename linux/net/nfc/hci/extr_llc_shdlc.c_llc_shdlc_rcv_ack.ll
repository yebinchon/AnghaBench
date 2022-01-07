; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"remote acked up to frame %d excluded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*, i32)* @llc_shdlc_rcv_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_rcv_ack(%struct.llc_shdlc* %0, i32 %1) #0 {
  %3 = alloca %struct.llc_shdlc*, align 8
  %4 = alloca i32, align 4
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %8 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %12 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @llc_shdlc_x_lt_y_lteq_z(i32 %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @llc_shdlc_reset_t2(%struct.llc_shdlc* %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %22 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @llc_shdlc_x_lt_y_lteq_z(i32, i32, i32) #1

declare dso_local i32 @llc_shdlc_reset_t2(%struct.llc_shdlc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
