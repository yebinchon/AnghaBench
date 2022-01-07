; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_chunk.c_sctp_datamsg_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_chunk.c_sctp_datamsg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_datamsg = type { i32 }

@datamsg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_datamsg* (i32)* @sctp_datamsg_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_datamsg* @sctp_datamsg_new(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_datamsg*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.sctp_datamsg* @kmalloc(i32 4, i32 %4)
  store %struct.sctp_datamsg* %5, %struct.sctp_datamsg** %3, align 8
  %6 = load %struct.sctp_datamsg*, %struct.sctp_datamsg** %3, align 8
  %7 = icmp ne %struct.sctp_datamsg* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.sctp_datamsg*, %struct.sctp_datamsg** %3, align 8
  %10 = call i32 @sctp_datamsg_init(%struct.sctp_datamsg* %9)
  %11 = load i32, i32* @datamsg, align 4
  %12 = call i32 @SCTP_DBG_OBJCNT_INC(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.sctp_datamsg*, %struct.sctp_datamsg** %3, align 8
  ret %struct.sctp_datamsg* %14
}

declare dso_local %struct.sctp_datamsg* @kmalloc(i32, i32) #1

declare dso_local i32 @sctp_datamsg_init(%struct.sctp_datamsg*) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
