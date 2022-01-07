; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bc_link_set_broadcast_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bc_link_set_broadcast_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bc_base = type { i32, i32, i32, i32 }

@ENOPROTOOPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32)* @tipc_bc_link_set_broadcast_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bc_link_set_broadcast_mode(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_bc_base*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = call %struct.tipc_bc_base* @tipc_bc_base(%struct.net* %7)
  store %struct.tipc_bc_base* %8, %struct.tipc_bc_base** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %54 [
    i32 130, label %10
    i32 129, label %23
    i32 128, label %36
  ]

10:                                               ; preds = %2
  %11 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %12 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOPROTOOPT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %10
  %19 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %20 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %22 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %25 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOPROTOOPT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %23
  %32 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %33 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %35 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %38 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %43 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @ENOPROTOOPT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %51 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %53 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %49, %31, %18
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %46, %28, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.tipc_bc_base* @tipc_bc_base(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
