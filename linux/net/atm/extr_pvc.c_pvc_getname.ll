; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_pvc.c_pvc_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_pvc.c_pvc_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmpvc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.atm_vcc = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@ATM_VF_ADDR = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@AF_ATMPVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @pvc_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvc_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_atmpvc*, align 8
  %9 = alloca %struct.atm_vcc*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %10)
  store %struct.atm_vcc* %11, %struct.atm_vcc** %9, align 8
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @ATM_VF_ADDR, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 3
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @ENOTCONN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %16
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = bitcast %struct.sockaddr* %26 to %struct.sockaddr_atmpvc*
  store %struct.sockaddr_atmpvc* %27, %struct.sockaddr_atmpvc** %8, align 8
  %28 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %8, align 8
  %29 = call i32 @memset(%struct.sockaddr_atmpvc* %28, i32 0, i32 16)
  %30 = load i32, i32* @AF_ATMPVC, align 4
  %31 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %34 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %8, align 8
  %39 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %42 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  store i32 16, i32* %4, align 4
  br label %53

53:                                               ; preds = %25, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_atmpvc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
