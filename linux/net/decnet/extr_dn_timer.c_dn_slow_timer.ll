; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_timer.c_dn_slow_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_timer.c_dn_slow_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.timer_list = type { i32 }
%struct.dn_scp = type { i64, i64, i32 (%struct.sock*)*, i64, i64, i64 (%struct.sock*)* }

@sk_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SLOW_INTERVAL = common dso_local global i64 0, align 8
@DN_RUN = common dso_local global i64 0, align 8
@sk = common dso_local global %struct.sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dn_slow_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_slow_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = ptrtoint %struct.sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @sk_timer, align 4
  %9 = call %struct.sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.dn_scp* @DN_SK(%struct.sock* %10)
  store %struct.dn_scp* %11, %struct.dn_scp** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i64 @sock_owned_by_user(%struct.sock* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = sdiv i32 %22, 10
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @sk_reset_timer(%struct.sock* %18, i32* %20, i64 %25)
  br label %103

27:                                               ; preds = %1
  %28 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %29 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %34 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %33, i32 0, i32 5
  %35 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %34, align 8
  %36 = icmp ne i64 (%struct.sock*)* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %39 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SLOW_INTERVAL, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %47 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %46, i32 0, i32 5
  %48 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %47, align 8
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i64 %48(%struct.sock* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %103

53:                                               ; preds = %43
  br label %60

54:                                               ; preds = %37
  %55 = load i64, i64* @SLOW_INTERVAL, align 8
  %56 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %57 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %54, %53
  br label %61

61:                                               ; preds = %60, %32, %27
  %62 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %63 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %61
  %67 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %68 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %67, i32 0, i32 2
  %69 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %68, align 8
  %70 = icmp ne i32 (%struct.sock*)* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %73 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DN_RUN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load i64, i64* @jiffies, align 8
  %79 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %80 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %83 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i64 @time_after_eq(i64 %78, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %90 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %89, i32 0, i32 2
  %91 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %90, align 8
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = call i32 %91(%struct.sock* %92)
  br label %94

94:                                               ; preds = %88, %77
  br label %95

95:                                               ; preds = %94, %71, %66, %61
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 0
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i64, i64* @SLOW_INTERVAL, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @sk_reset_timer(%struct.sock* %96, i32* %98, i64 %101)
  br label %103

103:                                              ; preds = %95, %52, %17
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = call i32 @bh_unlock_sock(%struct.sock* %104)
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = call i32 @sock_put(%struct.sock* %106)
  ret void
}

declare dso_local %struct.sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
