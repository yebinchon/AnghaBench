; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_add_dev_to_thread.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_add_dev_to_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_thread = type { i32 }
%struct.pktgen_dev = type { i32, %struct.pktgen_thread*, i64 }

@.str = private unnamed_addr constant [37 x i8] c"ERROR: already assigned to a thread\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktgen_thread*, %struct.pktgen_dev*)* @add_dev_to_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dev_to_thread(%struct.pktgen_thread* %0, %struct.pktgen_dev* %1) #0 {
  %3 = alloca %struct.pktgen_thread*, align 8
  %4 = alloca %struct.pktgen_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pktgen_thread* %0, %struct.pktgen_thread** %3, align 8
  store %struct.pktgen_dev* %1, %struct.pktgen_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %7 = call i32 @if_lock(%struct.pktgen_thread* %6)
  %8 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %8, i32 0, i32 1
  %10 = load %struct.pktgen_thread*, %struct.pktgen_thread** %9, align 8
  %11 = icmp ne %struct.pktgen_thread* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %20 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %20, i32 0, i32 1
  store %struct.pktgen_thread* %19, %struct.pktgen_thread** %21, align 8
  %22 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %22, i32 0, i32 0
  %24 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %25 = getelementptr inbounds %struct.pktgen_thread, %struct.pktgen_thread* %24, i32 0, i32 0
  %26 = call i32 @list_add_rcu(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %16, %12
  %28 = load %struct.pktgen_thread*, %struct.pktgen_thread** %3, align 8
  %29 = call i32 @if_unlock(%struct.pktgen_thread* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @if_lock(%struct.pktgen_thread*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @if_unlock(%struct.pktgen_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
