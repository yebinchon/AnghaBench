; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_transport.c_rds_trans_get_preferred.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_transport.c_rds_trans_get_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_transport = type { i64 (%struct.net*, %struct.in6_addr*, i32)*, i32 }
%struct.net = type opaque
%struct.in6_addr = type opaque
%struct.net.0 = type { i32 }
%struct.in6_addr.1 = type { i32* }

@IN_LOOPBACKNET = common dso_local global i64 0, align 8
@rds_loop_transport = common dso_local global %struct.rds_transport zeroinitializer, align 8
@rds_trans_sem = common dso_local global i32 0, align 4
@RDS_TRANS_COUNT = common dso_local global i32 0, align 4
@transports = common dso_local global %struct.rds_transport** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_transport* @rds_trans_get_preferred(%struct.net.0* %0, %struct.in6_addr.1* %1, i32 %2) #0 {
  %4 = alloca %struct.rds_transport*, align 8
  %5 = alloca %struct.net.0*, align 8
  %6 = alloca %struct.in6_addr.1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rds_transport*, align 8
  %9 = alloca %struct.rds_transport*, align 8
  %10 = alloca i32, align 4
  store %struct.net.0* %0, %struct.net.0** %5, align 8
  store %struct.in6_addr.1* %1, %struct.in6_addr.1** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rds_transport* null, %struct.rds_transport** %8, align 8
  %11 = load %struct.in6_addr.1*, %struct.in6_addr.1** %6, align 8
  %12 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr.1* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.in6_addr.1*, %struct.in6_addr.1** %6, align 8
  %16 = getelementptr inbounds %struct.in6_addr.1, %struct.in6_addr.1* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = bitcast i32* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IN_LOOPBACKNET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.rds_transport* @rds_loop_transport, %struct.rds_transport** %4, align 8
  br label %76

24:                                               ; preds = %14
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.in6_addr.1*, %struct.in6_addr.1** %6, align 8
  %27 = call i64 @ipv6_addr_loopback(%struct.in6_addr.1* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.rds_transport* @rds_loop_transport, %struct.rds_transport** %4, align 8
  br label %76

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %24
  %32 = call i32 @down_read(i32* @rds_trans_sem)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %70, %31
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RDS_TRANS_COUNT, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.rds_transport**, %struct.rds_transport*** @transports, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.rds_transport*, %struct.rds_transport** %38, i64 %40
  %42 = load %struct.rds_transport*, %struct.rds_transport** %41, align 8
  store %struct.rds_transport* %42, %struct.rds_transport** %9, align 8
  %43 = load %struct.rds_transport*, %struct.rds_transport** %9, align 8
  %44 = icmp ne %struct.rds_transport* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %37
  %46 = load %struct.rds_transport*, %struct.rds_transport** %9, align 8
  %47 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %46, i32 0, i32 0
  %48 = load i64 (%struct.net*, %struct.in6_addr*, i32)*, i64 (%struct.net*, %struct.in6_addr*, i32)** %47, align 8
  %49 = load %struct.net.0*, %struct.net.0** %5, align 8
  %50 = bitcast %struct.net.0* %49 to %struct.net*
  %51 = load %struct.in6_addr.1*, %struct.in6_addr.1** %6, align 8
  %52 = bitcast %struct.in6_addr.1* %51 to %struct.in6_addr*
  %53 = load i32, i32* %7, align 4
  %54 = call i64 %48(%struct.net* %50, %struct.in6_addr* %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %45
  %57 = load %struct.rds_transport*, %struct.rds_transport** %9, align 8
  %58 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.rds_transport*, %struct.rds_transport** %9, align 8
  %63 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @try_module_get(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %56
  %68 = load %struct.rds_transport*, %struct.rds_transport** %9, align 8
  store %struct.rds_transport* %68, %struct.rds_transport** %8, align 8
  br label %73

69:                                               ; preds = %61, %45, %37
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %33

73:                                               ; preds = %67, %33
  %74 = call i32 @up_read(i32* @rds_trans_sem)
  %75 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  store %struct.rds_transport* %75, %struct.rds_transport** %4, align 8
  br label %76

76:                                               ; preds = %73, %29, %23
  %77 = load %struct.rds_transport*, %struct.rds_transport** %4, align 8
  ret %struct.rds_transport* %77
}

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr.1*) #1

declare dso_local i64 @ipv6_addr_loopback(%struct.in6_addr.1*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
