; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_reset_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_reset_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { %struct.cmtp_session* }
%struct.cmtp_session = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"ctrl %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.capi_ctr*)* @cmtp_reset_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_reset_ctr(%struct.capi_ctr* %0) #0 {
  %2 = alloca %struct.capi_ctr*, align 8
  %3 = alloca %struct.cmtp_session*, align 8
  store %struct.capi_ctr* %0, %struct.capi_ctr** %2, align 8
  %4 = load %struct.capi_ctr*, %struct.capi_ctr** %2, align 8
  %5 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %4, i32 0, i32 0
  %6 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  store %struct.cmtp_session* %6, %struct.cmtp_session** %3, align 8
  %7 = load %struct.capi_ctr*, %struct.capi_ctr** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.capi_ctr* %7)
  %9 = load %struct.capi_ctr*, %struct.capi_ctr** %2, align 8
  %10 = call i32 @capi_ctr_down(%struct.capi_ctr* %9)
  %11 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %12 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %11, i32 0, i32 1
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %15 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wake_up_process(i32 %16)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.capi_ctr*) #1

declare dso_local i32 @capi_ctr_down(%struct.capi_ctr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
