; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_clear_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_clear_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, %struct.netdev_bpf*)* }
%struct.netdev_bpf = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@XDP_SETUP_XSK_UMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to disable umem!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdp_umem_clear_dev(%struct.xdp_umem* %0) #0 {
  %2 = alloca %struct.xdp_umem*, align 8
  %3 = alloca %struct.netdev_bpf, align 8
  %4 = alloca i32, align 4
  store %struct.xdp_umem* %0, %struct.xdp_umem** %2, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %7 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %13 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load i32, i32* @XDP_SETUP_XSK_UMEM, align 4
  %18 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %22 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %27 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_8__*, %struct.netdev_bpf*)*, i32 (%struct.TYPE_8__*, %struct.netdev_bpf*)** %31, align 8
  %33 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %34 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call i32 %32(%struct.TYPE_8__* %35, %struct.netdev_bpf* %3)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %16
  %40 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %16
  br label %42

42:                                               ; preds = %41, %11
  %43 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %44 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %47 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @xdp_clear_umem_at_qid(%struct.TYPE_8__* %45, i32 %48)
  %50 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %51 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = call i32 @dev_put(%struct.TYPE_8__* %52)
  %54 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %55 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %54, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %57 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %42, %10
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @xdp_clear_umem_at_qid(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
