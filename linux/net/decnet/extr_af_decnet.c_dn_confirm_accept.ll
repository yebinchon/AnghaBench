; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_confirm_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_confirm_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dn_scp = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@DN_CR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DN_CC = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DN_RUN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64*, i32)* @dn_confirm_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_confirm_accept(%struct.sock* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_scp*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.dn_scp* @DN_SK(%struct.sock* %10)
  store %struct.dn_scp* %11, %struct.dn_scp** %8, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %15 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DN_CR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %113

22:                                               ; preds = %3
  %23 = load i64, i64* @DN_CC, align 8
  %24 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %25 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call i32 @__sk_dst_get(%struct.sock* %26)
  %28 = call i32 @dst_metric_advmss(i32 %27)
  %29 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %30 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dn_send_conn_conf(%struct.sock* %31, i32 %32)
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i32 @sk_sleep(%struct.sock* %34)
  %36 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %37 = call i32 @prepare_to_wait(i32 %35, i32* @wait, i32 %36)
  br label %38

38:                                               ; preds = %81, %22
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = call i32 @release_sock(%struct.sock* %39)
  %41 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %42 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DN_CC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @schedule_timeout(i64 %48)
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = call i32 @lock_sock(%struct.sock* %52)
  store i32 0, i32* %9, align 4
  %54 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %55 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DN_RUN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %86

60:                                               ; preds = %51
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = call i32 @sock_error(%struct.sock* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %86

66:                                               ; preds = %60
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @sock_intr_errno(i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @current, align 4
  %71 = call i64 @signal_pending(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %86

74:                                               ; preds = %66
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %86

81:                                               ; preds = %74
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = call i32 @sk_sleep(%struct.sock* %82)
  %84 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %85 = call i32 @prepare_to_wait(i32 %83, i32* @wait, i32 %84)
  br label %38

86:                                               ; preds = %80, %73, %65, %59
  %87 = load %struct.sock*, %struct.sock** %5, align 8
  %88 = call i32 @sk_sleep(%struct.sock* %87)
  %89 = call i32 @finish_wait(i32 %88, i32* @wait)
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i32, i32* @SS_CONNECTED, align 4
  %94 = load %struct.sock*, %struct.sock** %5, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 4
  br label %111

98:                                               ; preds = %86
  %99 = load %struct.dn_scp*, %struct.dn_scp** %8, align 8
  %100 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DN_CC, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i32, i32* @SS_UNCONNECTED, align 4
  %106 = load %struct.sock*, %struct.sock** %5, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %92
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %19
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @dst_metric_advmss(i32) #1

declare dso_local i32 @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @dn_send_conn_conf(%struct.sock*, i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
