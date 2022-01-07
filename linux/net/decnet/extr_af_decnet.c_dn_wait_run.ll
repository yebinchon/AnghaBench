; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_wait_run.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_wait_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dn_scp = type { i64 }

@wait = common dso_local global i32 0, align 4
@DN_RUN = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DN_CI = common dso_local global i64 0, align 8
@DN_CC = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64*)* @dn_wait_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_wait_run(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dn_scp*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.dn_scp* @DN_SK(%struct.sock* %8)
  store %struct.dn_scp* %9, %struct.dn_scp** %6, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  store i32 0, i32* %7, align 4
  %12 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %13 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DN_RUN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %88

18:                                               ; preds = %2
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EALREADY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %118

25:                                               ; preds = %18
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @sk_sleep(%struct.sock* %26)
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @prepare_to_wait(i32 %27, i32* @wait, i32 %28)
  br label %30

30:                                               ; preds = %79, %25
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @release_sock(%struct.sock* %31)
  %33 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %34 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DN_CI, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %40 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DN_CC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %30
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @schedule_timeout(i64 %46)
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 @lock_sock(%struct.sock* %50)
  store i32 0, i32* %7, align 4
  %52 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %53 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DN_RUN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %84

58:                                               ; preds = %49
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i32 @sock_error(%struct.sock* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %84

64:                                               ; preds = %58
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @sock_intr_errno(i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @current, align 4
  %69 = call i64 @signal_pending(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %84

72:                                               ; preds = %64
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  %75 = load i64*, i64** %5, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %84

79:                                               ; preds = %72
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = call i32 @sk_sleep(%struct.sock* %80)
  %82 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %83 = call i32 @prepare_to_wait(i32 %81, i32* @wait, i32 %82)
  br label %30

84:                                               ; preds = %78, %71, %63, %57
  %85 = load %struct.sock*, %struct.sock** %4, align 8
  %86 = call i32 @sk_sleep(%struct.sock* %85)
  %87 = call i32 @finish_wait(i32 %86, i32* @wait)
  br label %88

88:                                               ; preds = %84, %17
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* @SS_CONNECTED, align 4
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  br label %116

97:                                               ; preds = %88
  %98 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %99 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DN_CI, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %105 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DN_CC, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @SS_UNCONNECTED, align 4
  %111 = load %struct.sock*, %struct.sock** %4, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %103, %97
  br label %116

116:                                              ; preds = %115, %91
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

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
