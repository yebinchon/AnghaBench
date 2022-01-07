; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_find_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_find_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.atalk_iface* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@atalk_interfaces_lock = common dso_local global i32 0, align 4
@atalk_interfaces = common dso_local global %struct.atalk_iface* null, align 8
@ATADDR_BCAST = common dso_local global i32 0, align 4
@ATADDR_ANYNODE = common dso_local global i32 0, align 4
@ATIF_PROBE = common dso_local global i32 0, align 4
@ATADDR_ANYNET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atalk_iface* (i64, i32)* @atalk_find_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atalk_iface* @atalk_find_interface(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atalk_iface*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @read_lock_bh(i32* @atalk_interfaces_lock)
  %7 = load %struct.atalk_iface*, %struct.atalk_iface** @atalk_interfaces, align 8
  store %struct.atalk_iface* %7, %struct.atalk_iface** %5, align 8
  br label %8

8:                                                ; preds = %69, %2
  %9 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %10 = icmp ne %struct.atalk_iface* %9, null
  br i1 %10, label %11, label %73

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ATADDR_BCAST, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ATADDR_ANYNODE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %21 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %19, %15, %11
  %27 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %28 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %35 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ATIF_PROBE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %73

41:                                               ; preds = %33, %26, %19
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ATADDR_ANYNODE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @ATADDR_ANYNET, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %51 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @ntohs(i64 %53)
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @ntohs(i64 %55)
  %57 = icmp sle i64 %54, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @ntohs(i64 %59)
  %61 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %62 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @ntohs(i64 %64)
  %66 = icmp sle i64 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %73

68:                                               ; preds = %58, %49, %45, %41
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %71 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %70, i32 0, i32 3
  %72 = load %struct.atalk_iface*, %struct.atalk_iface** %71, align 8
  store %struct.atalk_iface* %72, %struct.atalk_iface** %5, align 8
  br label %8

73:                                               ; preds = %67, %40, %8
  %74 = call i32 @read_unlock_bh(i32* @atalk_interfaces_lock)
  %75 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  ret %struct.atalk_iface* %75
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
