; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_dn = type { i32 }
%struct.dn_scp = type { i64, i32, i32 }

@SS_CONNECTED = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@ACC_IMMED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @dn_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_dn*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.dn_scp*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_dn*
  store %struct.sockaddr_dn* %12, %struct.sockaddr_dn** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = call %struct.dn_scp* @DN_SK(%struct.sock* %16)
  store %struct.dn_scp* %17, %struct.dn_scp** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %3
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SS_CONNECTED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SS_CONNECTING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.dn_scp*, %struct.dn_scp** %10, align 8
  %36 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACC_IMMED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = call i32 @release_sock(%struct.sock* %41)
  %43 = load i32, i32* @ENOTCONN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %58

45:                                               ; preds = %34, %28, %22
  %46 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %47 = load %struct.dn_scp*, %struct.dn_scp** %10, align 8
  %48 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %47, i32 0, i32 2
  %49 = call i32 @memcpy(%struct.sockaddr_dn* %46, i32* %48, i32 4)
  br label %55

50:                                               ; preds = %3
  %51 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %52 = load %struct.dn_scp*, %struct.dn_scp** %10, align 8
  %53 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %52, i32 0, i32 1
  %54 = call i32 @memcpy(%struct.sockaddr_dn* %51, i32* %53, i32 4)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.sock*, %struct.sock** %9, align 8
  %57 = call i32 @release_sock(%struct.sock* %56)
  store i32 4, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %40
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_dn*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
