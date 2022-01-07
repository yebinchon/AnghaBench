; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ipv6_sockglue.c_ip6_ra_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ipv6_sockglue.c_ip6_ra_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_ra_chain = type { i32, %struct.ip6_ra_chain*, %struct.sock* }
%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@SOCK_RAW = common dso_local global i64 0, align 8
@IPPROTO_RAW = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ip6_ra_lock = common dso_local global i32 0, align 4
@ip6_ra_chain = common dso_local global %struct.ip6_ra_chain* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_ra_control(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_ra_chain*, align 8
  %7 = alloca %struct.ip6_ra_chain*, align 8
  %8 = alloca %struct.ip6_ra_chain**, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SOCK_RAW, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPPROTO_RAW, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @ENOPROTOOPT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %98

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ip6_ra_chain* @kmalloc(i32 24, i32 %28)
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %struct.ip6_ra_chain* [ %29, %27 ], [ null, %30 ]
  store %struct.ip6_ra_chain* %32, %struct.ip6_ra_chain** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %37 = icmp ne %struct.ip6_ra_chain* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %98

41:                                               ; preds = %35, %31
  %42 = call i32 @write_lock_bh(i32* @ip6_ra_lock)
  store %struct.ip6_ra_chain** @ip6_ra_chain, %struct.ip6_ra_chain*** %8, align 8
  br label %43

43:                                               ; preds = %73, %41
  %44 = load %struct.ip6_ra_chain**, %struct.ip6_ra_chain*** %8, align 8
  %45 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %44, align 8
  store %struct.ip6_ra_chain* %45, %struct.ip6_ra_chain** %6, align 8
  %46 = icmp ne %struct.ip6_ra_chain* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %49 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %48, i32 0, i32 2
  %50 = load %struct.sock*, %struct.sock** %49, align 8
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = icmp eq %struct.sock* %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  %58 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %59 = call i32 @kfree(%struct.ip6_ra_chain* %58)
  %60 = load i32, i32* @EADDRINUSE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %98

62:                                               ; preds = %53
  %63 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %64 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %63, i32 0, i32 1
  %65 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %64, align 8
  %66 = load %struct.ip6_ra_chain**, %struct.ip6_ra_chain*** %8, align 8
  store %struct.ip6_ra_chain* %65, %struct.ip6_ra_chain** %66, align 8
  %67 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = call i32 @sock_put(%struct.sock* %68)
  %70 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %71 = call i32 @kfree(%struct.ip6_ra_chain* %70)
  store i32 0, i32* %3, align 4
  br label %98

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %75 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %74, i32 0, i32 1
  store %struct.ip6_ra_chain** %75, %struct.ip6_ra_chain*** %8, align 8
  br label %43

76:                                               ; preds = %43
  %77 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %78 = icmp ne %struct.ip6_ra_chain* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  %81 = load i32, i32* @ENOBUFS, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %76
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %86 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %85, i32 0, i32 2
  store %struct.sock* %84, %struct.sock** %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %89 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %91 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %92 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %91, i32 0, i32 1
  store %struct.ip6_ra_chain* %90, %struct.ip6_ra_chain** %92, align 8
  %93 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %7, align 8
  %94 = load %struct.ip6_ra_chain**, %struct.ip6_ra_chain*** %8, align 8
  store %struct.ip6_ra_chain* %93, %struct.ip6_ra_chain** %94, align 8
  %95 = load %struct.sock*, %struct.sock** %4, align 8
  %96 = call i32 @sock_hold(%struct.sock* %95)
  %97 = call i32 @write_unlock_bh(i32* @ip6_ra_lock)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %83, %79, %62, %56, %38, %21
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ip6_ra_chain* @kmalloc(i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.ip6_ra_chain*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
