; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sched.c_ip_vs_scheduler_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sched.c_ip_vs_scheduler_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ip_vs_scheduler = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: FWM %u 0x%08X - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: %s %pI4:%d - %s\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_scheduler_err(%struct.ip_vs_service* %0, i8* %1) #0 {
  %3 = alloca %struct.ip_vs_service*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ip_vs_scheduler*, align 8
  %6 = alloca i8*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %8 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ip_vs_scheduler* @rcu_dereference(i32 %9)
  store %struct.ip_vs_scheduler* %10, %struct.ip_vs_scheduler** %5, align 8
  %11 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %5, align 8
  %12 = icmp ne %struct.ip_vs_scheduler* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %5, align 8
  %15 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %17 ]
  store i8* %19, i8** %6, align 8
  %20 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %21 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %27 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %30 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i8*, i8*, i32, i32*, i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %28, i32* %33, i8* %34)
  br label %53

36:                                               ; preds = %18
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %39 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ip_vs_proto_name(i32 %40)
  %42 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %43 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %46 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ntohs(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (i8*, i8*, i32, i32*, i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %41, i32* %44, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %36, %24
  ret void
}

declare dso_local %struct.ip_vs_scheduler* @rcu_dereference(i32) #1

declare dso_local i32 @IP_VS_ERR_RL(i8*, i8*, i32, i32*, i8*, ...) #1

declare dso_local i32 @ip_vs_proto_name(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
