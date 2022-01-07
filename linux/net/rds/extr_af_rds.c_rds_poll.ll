; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c_rds_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c_rds_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64 }
%struct.rds_sock = type { i64, i64, i32, %struct.TYPE_2__, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@rds_poll_waitq = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @rds_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.rds_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.rds_sock* @rds_sk_to_rs(%struct.sock* %14)
  store %struct.rds_sock* %15, %struct.rds_sock** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call i32* @sk_sleep(%struct.sock* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32* %18, i32* %19)
  %21 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %22 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @poll_wait(%struct.file* %26, i32* @rds_poll_waitq, i32* %27)
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %31 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %30, i32 0, i32 2
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @read_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %35 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %29
  %39 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %40 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %39, i32 0, i32 8
  %41 = call i64 @rds_cong_updated_since(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @EPOLLIN, align 4
  %45 = load i32, i32* @EPOLLRDNORM, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @EPOLLWRBAND, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %43, %38
  br label %70

52:                                               ; preds = %29
  %53 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %54 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %53, i32 0, i32 6
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %57 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32, i32* @EPOLLIN, align 4
  %62 = load i32, i32* @EPOLLRDNORM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %68 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %67, i32 0, i32 6
  %69 = call i32 @spin_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %51
  %71 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %72 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %71, i32 0, i32 5
  %73 = call i32 @list_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %77 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %76, i32 0, i32 4
  %78 = call i32 @list_empty(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %82 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @list_empty(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80, %75, %70
  %87 = load i32, i32* @EPOLLIN, align 4
  %88 = load i32, i32* @EPOLLRDNORM, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %86, %80
  %93 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %94 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %97 = call i64 @rds_sk_sndbuf(%struct.rds_sock* %96)
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @EPOLLOUT, align 4
  %101 = load i32, i32* @EPOLLWRNORM, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.sock*, %struct.sock** %7, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load %struct.sock*, %struct.sock** %7, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 0
  %113 = call i32 @skb_queue_empty(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110, %105
  %116 = load i32, i32* @POLLERR, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %121 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %120, i32 0, i32 2
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @read_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %128 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %119
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local %struct.rds_sock* @rds_sk_to_rs(%struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32* @sk_sleep(%struct.sock*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rds_cong_updated_since(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @rds_sk_sndbuf(%struct.rds_sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
