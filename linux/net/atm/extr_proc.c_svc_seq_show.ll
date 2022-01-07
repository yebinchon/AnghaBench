; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_proc.c_svc_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_proc.c_svc_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.vcc_state* }
%struct.vcc_state = type { i32 }
%struct.atm_vcc = type { i32 }

@svc_seq_show.atm_svc_banner = internal constant [41 x i8] c"Itf VPI VCI           State      Remote\0A\00", align 16
@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @svc_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vcc_state*, align 8
  %6 = alloca %struct.atm_vcc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 @seq_puts(%struct.seq_file* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @svc_seq_show.atm_svc_banner, i64 0, i64 0))
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %14, i32 0, i32 0
  %16 = load %struct.vcc_state*, %struct.vcc_state** %15, align 8
  store %struct.vcc_state* %16, %struct.vcc_state** %5, align 8
  %17 = load %struct.vcc_state*, %struct.vcc_state** %5, align 8
  %18 = getelementptr inbounds %struct.vcc_state, %struct.vcc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.atm_vcc* @atm_sk(i32 %19)
  store %struct.atm_vcc* %20, %struct.atm_vcc** %6, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %23 = call i32 @svc_info(%struct.seq_file* %21, %struct.atm_vcc* %22)
  br label %24

24:                                               ; preds = %13, %10
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.atm_vcc* @atm_sk(i32) #1

declare dso_local i32 @svc_info(%struct.seq_file*, %struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
