; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32* }
%struct.tipc_bearer = type { i32 }

@MAX_BEARERS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bearer_get_name(%struct.net* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tipc_net*, align 8
  %9 = alloca %struct.tipc_bearer*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = call %struct.tipc_net* @tipc_net(%struct.net* %10)
  store %struct.tipc_net* %11, %struct.tipc_net** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MAX_BEARERS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.tipc_net*, %struct.tipc_net** %8, align 8
  %20 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tipc_bearer* @rtnl_dereference(i32 %24)
  store %struct.tipc_bearer* %25, %struct.tipc_bearer** %9, align 8
  %26 = load %struct.tipc_bearer*, %struct.tipc_bearer** %9, align 8
  %27 = icmp ne %struct.tipc_bearer* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %18
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.tipc_bearer*, %struct.tipc_bearer** %9, align 8
  %34 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcpy(i8* %32, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %28, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.tipc_bearer* @rtnl_dereference(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
