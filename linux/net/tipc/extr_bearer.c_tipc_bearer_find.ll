; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_bearer = type { i32 }
%struct.net = type { i32 }
%struct.tipc_net = type { i32* }

@tipc_net_id = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_bearer* @tipc_bearer_find(%struct.net* %0, i8* %1) #0 {
  %3 = alloca %struct.tipc_bearer*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tipc_net*, align 8
  %7 = alloca %struct.tipc_bearer*, align 8
  %8 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = load i32, i32* @tipc_net_id, align 4
  %11 = call %struct.tipc_net* @net_generic(%struct.net* %9, i32 %10)
  store %struct.tipc_net* %11, %struct.tipc_net** %6, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @MAX_BEARERS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %18 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.tipc_bearer* @rtnl_dereference(i32 %22)
  store %struct.tipc_bearer* %23, %struct.tipc_bearer** %7, align 8
  %24 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %25 = icmp ne %struct.tipc_bearer* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %16
  %27 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  %28 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcmp(i32 %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load %struct.tipc_bearer*, %struct.tipc_bearer** %7, align 8
  store %struct.tipc_bearer* %34, %struct.tipc_bearer** %3, align 8
  br label %40

35:                                               ; preds = %26, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %12

39:                                               ; preds = %12
  store %struct.tipc_bearer* null, %struct.tipc_bearer** %3, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.tipc_bearer*, %struct.tipc_bearer** %3, align 8
  ret %struct.tipc_bearer* %41
}

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.tipc_bearer* @rtnl_dereference(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
