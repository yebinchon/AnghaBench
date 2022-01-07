; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_validate_tickets.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_validate_tickets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32, %struct.ceph_x_info* }
%struct.ceph_x_info = type { i32 }
%struct.ceph_x_ticket_handler = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_auth_client*, i32*)* @ceph_x_validate_tickets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_x_validate_tickets(%struct.ceph_auth_client* %0, i32* %1) #0 {
  %3 = alloca %struct.ceph_auth_client*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_x_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_x_ticket_handler*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %12, i32 0, i32 1
  %14 = load %struct.ceph_x_info*, %struct.ceph_x_info** %13, align 8
  store %struct.ceph_x_info* %14, %struct.ceph_x_info** %6, align 8
  %15 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %16 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ceph_x_info*, %struct.ceph_x_info** %6, align 8
  %19 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %76, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  %29 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %30 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %76

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %76

43:                                               ; preds = %36
  %44 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client* %44, i32 %45)
  store %struct.ceph_x_ticket_handler* %46, %struct.ceph_x_ticket_handler** %8, align 8
  %47 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %8, align 8
  %48 = call i64 @IS_ERR(%struct.ceph_x_ticket_handler* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %76

55:                                               ; preds = %43
  %56 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %8, align 8
  %57 = call i64 @need_key(%struct.ceph_x_ticket_handler* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %8, align 8
  %66 = call i32 @have_key(%struct.ceph_x_ticket_handler* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ceph_x_info*, %struct.ceph_x_info** %6, align 8
  %72 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75, %50, %42, %35
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %24

79:                                               ; preds = %24
  ret void
}

declare dso_local %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_x_ticket_handler*) #1

declare dso_local i64 @need_key(%struct.ceph_x_ticket_handler*) #1

declare dso_local i32 @have_key(%struct.ceph_x_ticket_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
