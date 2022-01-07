; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_invalidate_ticket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_invalidate_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32 }
%struct.ceph_x_ticket_handler = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_auth_client*, i32)* @invalidate_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_ticket(%struct.ceph_auth_client* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_auth_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_x_ticket_handler*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client* %6, i32 %7)
  store %struct.ceph_x_ticket_handler* %8, %struct.ceph_x_ticket_handler** %5, align 8
  %9 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %5, align 8
  %10 = call i32 @IS_ERR(%struct.ceph_x_ticket_handler* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ceph_x_ticket_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
