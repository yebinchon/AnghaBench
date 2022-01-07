; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_assign_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_assign_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 }
%struct.netdev_bpf = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.xdp_umem* }

@XDP_ZEROCOPY = common dso_local global i32 0, align 4
@XDP_COPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@XDP_USE_NEED_WAKEUP = common dso_local global i32 0, align 4
@XDP_UMEM_USES_NEED_WAKEUP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XDP_SETUP_XSK_UMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_umem_assign_dev(%struct.xdp_umem* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netdev_bpf, align 8
  %13 = alloca i32, align 4
  store %struct.xdp_umem* %0, %struct.xdp_umem** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @XDP_ZEROCOPY, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @XDP_COPY, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %123

29:                                               ; preds = %23, %4
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @xdp_get_umem_from_qid(%struct.net_device* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %123

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @xdp_reg_umem_at_qid(%struct.net_device* %38, %struct.xdp_umem* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %123

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %49 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %48, i32 0, i32 3
  store %struct.net_device* %47, %struct.net_device** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %52 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @XDP_USE_NEED_WAKEUP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load i32, i32* @XDP_UMEM_USES_NEED_WAKEUP, align 4
  %59 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %60 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %64 = call i32 @xsk_set_tx_need_wakeup(%struct.xdp_umem* %63)
  br label %65

65:                                               ; preds = %57, %46
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = call i32 @dev_hold(%struct.net_device* %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %123

71:                                               ; preds = %65
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %75, align 8
  %77 = icmp ne i32 (%struct.net_device*, %struct.netdev_bpf*)* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78, %71
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %13, align 4
  br label %110

88:                                               ; preds = %78
  %89 = load i32, i32* @XDP_SETUP_XSK_UMEM, align 4
  %90 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %12, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %92 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %12, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store %struct.xdp_umem* %91, %struct.xdp_umem** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %12, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %100, align 8
  %102 = load %struct.net_device*, %struct.net_device** %7, align 8
  %103 = call i32 %101(%struct.net_device* %102, %struct.netdev_bpf* %12)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  br label %110

107:                                              ; preds = %88
  %108 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %109 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  store i32 0, i32* %5, align 4
  br label %123

110:                                              ; preds = %106, %85
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %110
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.net_device*, %struct.net_device** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @xdp_clear_umem_at_qid(%struct.net_device* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %107, %70, %44, %34, %26
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @xdp_get_umem_from_qid(%struct.net_device*, i32) #1

declare dso_local i32 @xdp_reg_umem_at_qid(%struct.net_device*, %struct.xdp_umem*, i32) #1

declare dso_local i32 @xsk_set_tx_need_wakeup(%struct.xdp_umem*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @xdp_clear_umem_at_qid(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
