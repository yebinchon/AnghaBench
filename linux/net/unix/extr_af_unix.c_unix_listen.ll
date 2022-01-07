; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.unix_sock = type { i32, i32 }
%struct.pid = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @unix_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.unix_sock*, align 8
  %8 = alloca %struct.pid*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.unix_sock* @unix_sk(%struct.sock* %12)
  store %struct.unix_sock* %13, %struct.unix_sock** %7, align 8
  store %struct.pid* null, %struct.pid** %8, align 8
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOCK_STREAM, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_SEQPACKET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %75

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.unix_sock*, %struct.unix_sock** %7, align 8
  %32 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %75

36:                                               ; preds = %28
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = call i32 @unix_state_lock(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TCP_CLOSE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TCP_LISTEN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %70

51:                                               ; preds = %44, %36
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.unix_sock*, %struct.unix_sock** %7, align 8
  %59 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %58, i32 0, i32 0
  %60 = call i32 @wake_up_interruptible_all(i32* %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* @TCP_LISTEN, align 8
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = call i32 @init_peercred(%struct.sock* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %61, %50
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = call i32 @unix_state_unlock(%struct.sock* %71)
  %73 = load %struct.pid*, %struct.pid** %8, align 8
  %74 = call i32 @put_pid(%struct.pid* %73)
  br label %75

75:                                               ; preds = %70, %35, %27
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @init_peercred(%struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
