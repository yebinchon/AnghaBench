; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_user.h_netlbl_netlink_auditinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_user.h_netlbl_netlink_auditinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlbl_audit = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.netlbl_audit*)* @netlbl_netlink_auditinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlbl_netlink_auditinfo(%struct.sk_buff* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlbl_audit*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %4, align 8
  %5 = load i32, i32* @current, align 4
  %6 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %7 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %6, i32 0, i32 2
  %8 = call i32 @security_task_getsecid(i32 %5, i32* %7)
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @audit_get_loginuid(i32 %9)
  %11 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %12 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @audit_get_sessionid(i32 %13)
  %15 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %16 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @security_task_getsecid(i32, i32*) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
