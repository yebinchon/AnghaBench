; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_pton.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.ceph_entity_addr*, i8, i8**)* @ceph_pton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_pton(i8* %0, i64 %1, %struct.ceph_entity_addr* %2, i8 signext %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ceph_entity_addr*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8**, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ceph_entity_addr* %2, %struct.ceph_entity_addr** %9, align 8
  store i8 %3, i8* %10, align 1
  store i8** %4, i8*** %11, align 8
  %12 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %13 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %12, i32 0, i32 0
  %14 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 4)
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %18 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %17, i32 0, i32 0
  %19 = bitcast %struct.TYPE_6__* %18 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8, i8* %10, align 1
  %23 = load i8**, i8*** %11, align 8
  %24 = call i64 @in4_pton(i8* %15, i64 %16, i32* %21, i8 signext %22, i8** %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i32, i32* @AF_INET, align 4
  %28 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %29 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @put_unaligned(i32 %27, i32* %30)
  store i32 0, i32* %6, align 4
  br label %53

32:                                               ; preds = %5
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %36 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_6__* %36 to %struct.sockaddr_in6*
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8, i8* %10, align 1
  %41 = load i8**, i8*** %11, align 8
  %42 = call i64 @in6_pton(i8* %33, i64 %34, i32* %39, i8 signext %40, i8** %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load i32, i32* @AF_INET6, align 4
  %46 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %9, align 8
  %47 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @put_unaligned(i32 %45, i32* %48)
  store i32 0, i32* %6, align 4
  br label %53

50:                                               ; preds = %32
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %44, %26
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @in4_pton(i8*, i64, i32*, i8 signext, i8**) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i64 @in6_pton(i8*, i64, i32*, i8 signext, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
