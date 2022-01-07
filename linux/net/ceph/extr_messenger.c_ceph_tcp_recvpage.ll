; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_tcp_recvpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_tcp_recvpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.page = type { i32 }
%struct.bio_vec = type { i32, i64, %struct.page* }
%struct.msghdr = type { i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.page*, i32, i64)* @ceph_tcp_recvpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_tcp_recvpage(%struct.socket* %0, %struct.page* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio_vec, align 8
  %10 = alloca %struct.msghdr, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 2
  %17 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %17, %struct.page** %16, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %19 = load i32, i32* @MSG_DONTWAIT, align 4
  %20 = load i32, i32* @MSG_NOSIGNAL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %24, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  %33 = load i32, i32* @READ, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @iov_iter_bvec(i32* %32, i32 %33, %struct.bio_vec* %9, i32 1, i64 %34)
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sock_recvmsg(%struct.socket* %36, %struct.msghdr* %10, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iov_iter_bvec(i32*, i32, %struct.bio_vec*, i32, i64) #1

declare dso_local i32 @sock_recvmsg(%struct.socket*, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
