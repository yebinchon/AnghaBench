; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_init_chunk = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_cmd_seq*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_init_chunk*, i32)* @sctp_cmd_process_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_cmd_process_init(%struct.sctp_cmd_seq* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, %struct.sctp_init_chunk* %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_cmd_seq*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca %struct.sctp_init_chunk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sctp_cmd_seq* %0, %struct.sctp_cmd_seq** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %8, align 8
  store %struct.sctp_init_chunk* %3, %struct.sctp_init_chunk** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %15 = call i32 @sctp_source(%struct.sctp_chunk* %14)
  %16 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @sctp_process_init(%struct.sctp_association* %12, %struct.sctp_chunk* %13, i32 %15, %struct.sctp_init_chunk* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  br label %24

23:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %11, align 4
  ret i32 %25
}

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.sctp_init_chunk*, i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
