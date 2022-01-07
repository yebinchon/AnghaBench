; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_application_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_application_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32 }
%struct.cmtp_application = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"session %p application %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmtp_session*, %struct.cmtp_application*)* @cmtp_application_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_application_del(%struct.cmtp_session* %0, %struct.cmtp_application* %1) #0 {
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.cmtp_application*, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %3, align 8
  store %struct.cmtp_application* %1, %struct.cmtp_application** %4, align 8
  %5 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %6 = load %struct.cmtp_application*, %struct.cmtp_application** %4, align 8
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %5, %struct.cmtp_application* %6)
  %8 = load %struct.cmtp_application*, %struct.cmtp_application** %4, align 8
  %9 = icmp ne %struct.cmtp_application* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.cmtp_application*, %struct.cmtp_application** %4, align 8
  %12 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %11, i32 0, i32 0
  %13 = call i32 @list_del(i32* %12)
  %14 = load %struct.cmtp_application*, %struct.cmtp_application** %4, align 8
  %15 = call i32 @kfree(%struct.cmtp_application* %14)
  br label %16

16:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, %struct.cmtp_application*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.cmtp_application*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
