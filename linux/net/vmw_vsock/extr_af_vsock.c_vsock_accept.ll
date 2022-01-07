; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, %struct.sock* }
%struct.sock = type { i64, i32, i32 }
%struct.vsock_sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @vsock_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.vsock_sock*, align 8
  %13 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  store i32 0, i32* %10, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 2
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_STREAM, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %131

29:                                               ; preds = %4
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCP_LISTEN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %131

38:                                               ; preds = %29
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = call i64 @sock_sndtimeo(%struct.sock* %39, i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = call i32 @sk_sleep(%struct.sock* %44)
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = call i32 @prepare_to_wait(i32 %45, i32* @wait, i32 %46)
  br label %48

48:                                               ; preds = %82, %38
  %49 = load %struct.sock*, %struct.sock** %9, align 8
  %50 = call %struct.sock* @vsock_dequeue_accept(%struct.sock* %49)
  store %struct.sock* %50, %struct.sock** %11, align 8
  %51 = icmp eq %struct.sock* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.sock*, %struct.sock** %9, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i1 [ false, %48 ], [ %56, %52 ]
  br i1 %58, label %59, label %87

59:                                               ; preds = %57
  %60 = load %struct.sock*, %struct.sock** %9, align 8
  %61 = call i32 @release_sock(%struct.sock* %60)
  %62 = load i64, i64* %13, align 8
  %63 = call i64 @schedule_timeout(i64 %62)
  store i64 %63, i64* %13, align 8
  %64 = load %struct.sock*, %struct.sock** %9, align 8
  %65 = call i32 @sk_sleep(%struct.sock* %64)
  %66 = call i32 @finish_wait(i32 %65, i32* @wait)
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = call i32 @lock_sock(%struct.sock* %67)
  %69 = load i32, i32* @current, align 4
  %70 = call i64 @signal_pending(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @sock_intr_errno(i64 %73)
  store i32 %74, i32* %10, align 4
  br label %131

75:                                               ; preds = %59
  %76 = load i64, i64* %13, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %131

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.sock*, %struct.sock** %9, align 8
  %84 = call i32 @sk_sleep(%struct.sock* %83)
  %85 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %86 = call i32 @prepare_to_wait(i32 %84, i32* @wait, i32 %85)
  br label %48

87:                                               ; preds = %57
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = call i32 @sk_sleep(%struct.sock* %88)
  %90 = call i32 @finish_wait(i32 %89, i32* @wait)
  %91 = load %struct.sock*, %struct.sock** %9, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.sock*, %struct.sock** %9, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %95, %87
  %101 = load %struct.sock*, %struct.sock** %11, align 8
  %102 = icmp ne %struct.sock* %101, null
  br i1 %102, label %103, label %130

103:                                              ; preds = %100
  %104 = load %struct.sock*, %struct.sock** %9, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.sock*, %struct.sock** %11, align 8
  %109 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %110 = call i32 @lock_sock_nested(%struct.sock* %108, i32 %109)
  %111 = load %struct.sock*, %struct.sock** %11, align 8
  %112 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %111)
  store %struct.vsock_sock* %112, %struct.vsock_sock** %12, align 8
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %117 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  br label %125

118:                                              ; preds = %103
  %119 = load i32, i32* @SS_CONNECTED, align 4
  %120 = load %struct.socket*, %struct.socket** %6, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.sock*, %struct.sock** %11, align 8
  %123 = load %struct.socket*, %struct.socket** %6, align 8
  %124 = call i32 @sock_graft(%struct.sock* %122, %struct.socket* %123)
  br label %125

125:                                              ; preds = %118, %115
  %126 = load %struct.sock*, %struct.sock** %11, align 8
  %127 = call i32 @release_sock(%struct.sock* %126)
  %128 = load %struct.sock*, %struct.sock** %11, align 8
  %129 = call i32 @sock_put(%struct.sock* %128)
  br label %130

130:                                              ; preds = %125, %100
  br label %131

131:                                              ; preds = %130, %78, %72, %35, %26
  %132 = load %struct.sock*, %struct.sock** %9, align 8
  %133 = call i32 @release_sock(%struct.sock* %132)
  %134 = load i32, i32* %10, align 4
  ret i32 %134
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sock* @vsock_dequeue_accept(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
