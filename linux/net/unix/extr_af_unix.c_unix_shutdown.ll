; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i32 (%struct.sock*)* }

@SHUT_RD = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_WAKE_WAITD = common dso_local global i32 0, align 4
@POLL_HUP = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @unix_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SHUT_RD, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SHUT_RDWR, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %121

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = call i32 @unix_state_lock(%struct.sock* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = call %struct.sock* @unix_peer(%struct.sock* %32)
  store %struct.sock* %33, %struct.sock** %7, align 8
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = icmp ne %struct.sock* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = call i32 @sock_hold(%struct.sock* %37)
  br label %39

39:                                               ; preds = %36, %22
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = call i32 @unix_state_unlock(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  %44 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %43, align 8
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = call i32 %44(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %7, align 8
  %48 = icmp ne %struct.sock* %47, null
  br i1 %48, label %49, label %114

49:                                               ; preds = %39
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SOCK_STREAM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SOCK_SEQPACKET, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %55, %49
  store i32 0, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RCV_SHUTDOWN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @SEND_SHUTDOWN, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SEND_SHUTDOWN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @RCV_SHUTDOWN, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.sock*, %struct.sock** %7, align 8
  %81 = call i32 @unix_state_lock(%struct.sock* %80)
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.sock*, %struct.sock** %7, align 8
  %88 = call i32 @unix_state_unlock(%struct.sock* %87)
  %89 = load %struct.sock*, %struct.sock** %7, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 2
  %91 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %90, align 8
  %92 = load %struct.sock*, %struct.sock** %7, align 8
  %93 = call i32 %91(%struct.sock* %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @SHUTDOWN_MASK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %79
  %98 = load %struct.sock*, %struct.sock** %7, align 8
  %99 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %100 = load i32, i32* @POLL_HUP, align 4
  %101 = call i32 @sk_wake_async(%struct.sock* %98, i32 %99, i32 %100)
  br label %113

102:                                              ; preds = %79
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @RCV_SHUTDOWN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.sock*, %struct.sock** %7, align 8
  %109 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %110 = load i32, i32* @POLL_IN, align 4
  %111 = call i32 @sk_wake_async(%struct.sock* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %55, %39
  %115 = load %struct.sock*, %struct.sock** %7, align 8
  %116 = icmp ne %struct.sock* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.sock*, %struct.sock** %7, align 8
  %119 = call i32 @sock_put(%struct.sock* %118)
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %19
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local %struct.sock* @unix_peer(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
