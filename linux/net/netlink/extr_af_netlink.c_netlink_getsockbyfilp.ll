; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_getsockbyfilp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_getsockbyfilp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.sock* }

@ENOTSOCK = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @netlink_getsockbyfilp(%struct.file* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.inode* @file_inode(%struct.file* %6)
  store %struct.inode* %7, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @S_ISSOCK(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOTSOCK, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.sock* @ERR_PTR(i32 %15)
  store %struct.sock* %16, %struct.sock** %2, align 8
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_2__* @SOCKET_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %5, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_NETLINK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.sock* @ERR_PTR(i32 %29)
  store %struct.sock* %30, %struct.sock** %2, align 8
  br label %35

31:                                               ; preds = %17
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call i32 @sock_hold(%struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %34, %struct.sock** %2, align 8
  br label %35

35:                                               ; preds = %31, %27, %13
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  ret %struct.sock* %36
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local %struct.sock* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @SOCKET_I(%struct.inode*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
