; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_atmsvc = type { i64 }
%struct.atm_vcc = type { i32, %struct.sockaddr_atmsvc }

@wait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@AF_ATMSVC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATM_VF_BOUND = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@as_bind = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@sigd = common dso_local global i32 0, align 4
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @svc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sockaddr_atmsvc*, align 8
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %132

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = call i32 @lock_sock(%struct.sock* %24)
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SS_CONNECTED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EISCONN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %128

34:                                               ; preds = %23
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SS_UNCONNECTED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %128

43:                                               ; preds = %34
  %44 = load %struct.socket*, %struct.socket** %5, align 8
  %45 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %44)
  store %struct.atm_vcc* %45, %struct.atm_vcc** %10, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %47 = bitcast %struct.sockaddr* %46 to %struct.sockaddr_atmsvc*
  store %struct.sockaddr_atmsvc* %47, %struct.sockaddr_atmsvc** %9, align 8
  %48 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %9, align 8
  %49 = getelementptr inbounds %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_ATMSVC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EAFNOSUPPORT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %128

56:                                               ; preds = %43
  %57 = load i32, i32* @ATM_VF_BOUND, align 4
  %58 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %59 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %58, i32 0, i32 0
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @ATM_VF_HASQOS, align 4
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %63 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %62, i32 0, i32 0
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @EBADFD, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %128

69:                                               ; preds = %56
  %70 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %71 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %70, i32 0, i32 1
  %72 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %9, align 8
  %73 = bitcast %struct.sockaddr_atmsvc* %71 to i8*
  %74 = bitcast %struct.sockaddr_atmsvc* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  %75 = load i32, i32* @ATM_VF_WAITING, align 4
  %76 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %77 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  %79 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %80 = load i32, i32* @as_bind, align 4
  %81 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %82 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %81, i32 0, i32 1
  %83 = call i32 @sigd_enq(%struct.atm_vcc* %79, i32 %80, i32* null, i32* null, %struct.sockaddr_atmsvc* %82)
  br label %84

84:                                               ; preds = %98, %69
  %85 = load %struct.sock*, %struct.sock** %8, align 8
  %86 = call i32 @sk_sleep(%struct.sock* %85)
  %87 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %88 = call i32 @prepare_to_wait(i32 %86, i32* @wait, i32 %87)
  %89 = load i32, i32* @ATM_VF_WAITING, align 4
  %90 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %91 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %90, i32 0, i32 0
  %92 = call i32 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @sigd, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94, %84
  br label %100

98:                                               ; preds = %94
  %99 = call i32 (...) @schedule()
  br label %84

100:                                              ; preds = %97
  %101 = load %struct.sock*, %struct.sock** %8, align 8
  %102 = call i32 @sk_sleep(%struct.sock* %101)
  %103 = call i32 @finish_wait(i32 %102, i32* @wait)
  %104 = load i32, i32* @ATM_VF_REGIS, align 4
  %105 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %106 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %105, i32 0, i32 0
  %107 = call i32 @clear_bit(i32 %104, i32* %106)
  %108 = load i32, i32* @sigd, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* @EUNATCH, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %128

113:                                              ; preds = %100
  %114 = load %struct.sock*, %struct.sock** %8, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @ATM_VF_BOUND, align 4
  %120 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %121 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %120, i32 0, i32 0
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.sock*, %struct.sock** %8, align 8
  %125 = getelementptr inbounds %struct.sock, %struct.sock* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %123, %110, %66, %53, %40, %31
  %129 = load %struct.sock*, %struct.sock** %8, align 8
  %130 = call i32 @release_sock(%struct.sock* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %20
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, %struct.sockaddr_atmsvc*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
