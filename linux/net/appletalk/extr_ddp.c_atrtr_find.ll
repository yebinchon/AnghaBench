; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atrtr_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atrtr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_route = type { i32, i64, %struct.TYPE_2__, %struct.atalk_route* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.atalk_addr = type { i64, i64 }

@atalk_routes_lock = common dso_local global i32 0, align 4
@atalk_routes = common dso_local global %struct.atalk_route* null, align 8
@RTF_UP = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@atrtr_default = common dso_local global %struct.atalk_route zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atalk_route* (%struct.atalk_addr*)* @atrtr_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atalk_route* @atrtr_find(%struct.atalk_addr* %0) #0 {
  %2 = alloca %struct.atalk_addr*, align 8
  %3 = alloca %struct.atalk_route*, align 8
  %4 = alloca %struct.atalk_route*, align 8
  store %struct.atalk_addr* %0, %struct.atalk_addr** %2, align 8
  store %struct.atalk_route* null, %struct.atalk_route** %3, align 8
  %5 = call i32 @read_lock_bh(i32* @atalk_routes_lock)
  %6 = load %struct.atalk_route*, %struct.atalk_route** @atalk_routes, align 8
  store %struct.atalk_route* %6, %struct.atalk_route** %4, align 8
  br label %7

7:                                                ; preds = %49, %1
  %8 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %9 = icmp ne %struct.atalk_route* %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %7
  %11 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %12 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RTF_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %49

18:                                               ; preds = %10
  %19 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %20 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.atalk_addr*, %struct.atalk_addr** %2, align 8
  %24 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %18
  %28 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %29 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RTF_HOST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %36 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.atalk_addr*, %struct.atalk_addr** %2, align 8
  %40 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %65

44:                                               ; preds = %34
  br label %47

45:                                               ; preds = %27
  %46 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  store %struct.atalk_route* %46, %struct.atalk_route** %3, align 8
  br label %47

47:                                               ; preds = %45, %44
  br label %48

48:                                               ; preds = %47, %18
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %51 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %50, i32 0, i32 3
  %52 = load %struct.atalk_route*, %struct.atalk_route** %51, align 8
  store %struct.atalk_route* %52, %struct.atalk_route** %4, align 8
  br label %7

53:                                               ; preds = %7
  %54 = load %struct.atalk_route*, %struct.atalk_route** %3, align 8
  %55 = icmp ne %struct.atalk_route* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load %struct.atalk_route*, %struct.atalk_route** %3, align 8
  store %struct.atalk_route* %57, %struct.atalk_route** %4, align 8
  br label %64

58:                                               ; preds = %53
  %59 = load i64, i64* getelementptr inbounds (%struct.atalk_route, %struct.atalk_route* @atrtr_default, i32 0, i32 1), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store %struct.atalk_route* @atrtr_default, %struct.atalk_route** %4, align 8
  br label %63

62:                                               ; preds = %58
  store %struct.atalk_route* null, %struct.atalk_route** %4, align 8
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %43
  %66 = call i32 @read_unlock_bh(i32* @atalk_routes_lock)
  %67 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  ret %struct.atalk_route* %67
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
