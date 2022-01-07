; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_remove_ticket_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_remove_ticket_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { %struct.ceph_x_info* }
%struct.ceph_x_info = type { i32 }
%struct.ceph_x_ticket_handler = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"remove_ticket_handler %p %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_auth_client*, %struct.ceph_x_ticket_handler*)* @remove_ticket_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_ticket_handler(%struct.ceph_auth_client* %0, %struct.ceph_x_ticket_handler* %1) #0 {
  %3 = alloca %struct.ceph_auth_client*, align 8
  %4 = alloca %struct.ceph_x_ticket_handler*, align 8
  %5 = alloca %struct.ceph_x_info*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %3, align 8
  store %struct.ceph_x_ticket_handler* %1, %struct.ceph_x_ticket_handler** %4, align 8
  %6 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %6, i32 0, i32 0
  %8 = load %struct.ceph_x_info*, %struct.ceph_x_info** %7, align 8
  store %struct.ceph_x_info* %8, %struct.ceph_x_info** %5, align 8
  %9 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %4, align 8
  %10 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.ceph_x_ticket_handler* %9, i32 %12)
  %14 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %14, i32 0, i32 2
  %16 = load %struct.ceph_x_info*, %struct.ceph_x_info** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %16, i32 0, i32 0
  %18 = call i32 @rb_erase(i32* %15, i32* %17)
  %19 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %19, i32 0, i32 1
  %21 = call i32 @ceph_crypto_key_destroy(i32* %20)
  %22 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ceph_buffer_put(i64 %29)
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %4, align 8
  %33 = call i32 @kfree(%struct.ceph_x_ticket_handler* %32)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_x_ticket_handler*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @ceph_crypto_key_destroy(i32*) #1

declare dso_local i32 @ceph_buffer_put(i64) #1

declare dso_local i32 @kfree(%struct.ceph_x_ticket_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
