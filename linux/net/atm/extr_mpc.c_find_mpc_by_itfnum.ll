; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_find_mpc_by_itfnum.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_find_mpc_by_itfnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, %struct.mpoa_client* }

@mpcs = common dso_local global %struct.mpoa_client* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpoa_client* (i32)* @find_mpc_by_itfnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpoa_client* @find_mpc_by_itfnum(i32 %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpoa_client*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.mpoa_client*, %struct.mpoa_client** @mpcs, align 8
  store %struct.mpoa_client* %5, %struct.mpoa_client** %4, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %8 = icmp ne %struct.mpoa_client* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %11 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  store %struct.mpoa_client* %16, %struct.mpoa_client** %2, align 8
  br label %22

17:                                               ; preds = %9
  %18 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %19 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %18, i32 0, i32 1
  %20 = load %struct.mpoa_client*, %struct.mpoa_client** %19, align 8
  store %struct.mpoa_client* %20, %struct.mpoa_client** %4, align 8
  br label %6

21:                                               ; preds = %6
  store %struct.mpoa_client* null, %struct.mpoa_client** %2, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  ret %struct.mpoa_client* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
