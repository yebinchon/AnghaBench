; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nh_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fib_nh = type { i64, i32, i64, i32, i32, i32, i32, i32, i64 }
%struct.fib_config = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_nh_init(%struct.net* %0, %struct.fib_nh* %1, %struct.fib_config* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib_nh*, align 8
  %9 = alloca %struct.fib_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.fib_nh* %1, %struct.fib_nh** %8, align 8
  store %struct.fib_config* %2, %struct.fib_config** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %15 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %14, i32 0, i32 8
  store i64 %13, i64* %15, align 8
  %16 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %17 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %16, i32 0, i32 7
  %18 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %19 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %22 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %27 = call i32 @fib_nh_common_init(i32* %17, i32 %20, i32 %23, %struct.fib_config* %24, i32 %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %5
  %33 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %34 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %37 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %39 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %42 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %44 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_INET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %32
  %49 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %50 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %53 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  br label %67

54:                                               ; preds = %32
  %55 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %56 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_INET6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %62 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %65 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.fib_config*, %struct.fib_config** %9, align 8
  %69 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %72 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %67, %30
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @fib_nh_common_init(i32*, i32, i32, %struct.fib_config*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
