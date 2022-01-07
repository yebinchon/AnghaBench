; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_msgnum_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_msgnum_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32 }

@CMTP_INITIAL_MSGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmtp_session*)* @cmtp_msgnum_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmtp_msgnum_get(%struct.cmtp_session* %0) #0 {
  %2 = alloca %struct.cmtp_session*, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %2, align 8
  %3 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %4 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %8 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 255
  %11 = icmp sgt i32 %10, 200
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @CMTP_INITIAL_MSGNUM, align 4
  %14 = add nsw i32 %13, 1
  %15 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %16 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %19 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
