; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_get_connect_authorizer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_get_connect_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.TYPE_3__, %struct.ceph_auth_handshake*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.ceph_auth_handshake = type { i32 }
%struct.TYPE_4__ = type { %struct.ceph_auth_handshake* (%struct.ceph_connection*, i32*, i32)* }

@CEPH_AUTH_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @get_connect_authorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_connect_authorizer(%struct.ceph_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca %struct.ceph_auth_handshake*, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  %6 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.ceph_auth_handshake* (%struct.ceph_connection*, i32*, i32)*, %struct.ceph_auth_handshake* (%struct.ceph_connection*, i32*, i32)** %9, align 8
  %11 = icmp ne %struct.ceph_auth_handshake* (%struct.ceph_connection*, i32*, i32)* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %13, i32 0, i32 1
  store %struct.ceph_auth_handshake* null, %struct.ceph_auth_handshake** %14, align 8
  %15 = load i8*, i8** @CEPH_AUTH_UNKNOWN, align 8
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i8* %15, i8** %18, align 8
  %19 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* null, i8** %21, align 8
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ceph_auth_handshake* (%struct.ceph_connection*, i32*, i32)*, %struct.ceph_auth_handshake* (%struct.ceph_connection*, i32*, i32)** %26, align 8
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %29 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %30 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ceph_auth_handshake* %27(%struct.ceph_connection* %28, i32* %5, i32 %31)
  store %struct.ceph_auth_handshake* %32, %struct.ceph_auth_handshake** %4, align 8
  %33 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  %34 = call i64 @IS_ERR(%struct.ceph_auth_handshake* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  %38 = call i32 @PTR_ERR(%struct.ceph_auth_handshake* %37)
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %22
  %40 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  %41 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %42 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %41, i32 0, i32 1
  store %struct.ceph_auth_handshake* %40, %struct.ceph_auth_handshake** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %46 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  %49 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %39, %36, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @IS_ERR(%struct.ceph_auth_handshake*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_auth_handshake*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
