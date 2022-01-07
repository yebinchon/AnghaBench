; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_is_authenticated.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_is_authenticated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32, %struct.ceph_x_info* }
%struct.ceph_x_info = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ceph_x_is_authenticated want=%d need=%d have=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*)* @ceph_x_is_authenticated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_is_authenticated(%struct.ceph_auth_client* %0) #0 {
  %2 = alloca %struct.ceph_auth_client*, align 8
  %3 = alloca %struct.ceph_x_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %2, align 8
  %5 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %5, i32 0, i32 1
  %7 = load %struct.ceph_x_info*, %struct.ceph_x_info** %6, align 8
  store %struct.ceph_x_info* %7, %struct.ceph_x_info** %3, align 8
  %8 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %9 = call i32 @ceph_x_validate_tickets(%struct.ceph_auth_client* %8, i32* %4)
  %10 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ceph_x_info*, %struct.ceph_x_info** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dout(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %16)
  %18 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ceph_x_info*, %struct.ceph_x_info** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %26 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @ceph_x_validate_tickets(%struct.ceph_auth_client*, i32*) #1

declare dso_local i32 @dout(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
