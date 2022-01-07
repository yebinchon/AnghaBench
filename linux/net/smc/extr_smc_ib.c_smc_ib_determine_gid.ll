; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_determine_gid.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_determine_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ib_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_gid_attr = type { i64, i32, i32, i32 }
%struct.net_device = type { i64, i32, i32, i32 }

@IB_GID_TYPE_ROCE = common dso_local global i64 0, align 8
@SMC_GID_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_ib_determine_gid(%struct.smc_ib_device* %0, i32 %1, i16 zeroext %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smc_ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_gid_attr*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  store %struct.smc_ib_device* %0, %struct.smc_ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %109, %5
  %16 = load i32, i32* %14, align 4
  %17 = load %struct.smc_ib_device*, %struct.smc_ib_device** %7, align 8
  %18 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %16, %25
  br i1 %26, label %27, label %112

27:                                               ; preds = %15
  %28 = load %struct.smc_ib_device*, %struct.smc_ib_device** %7, align 8
  %29 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call %struct.net_device* @rdma_get_gid_attr(i32 %30, i32 %31, i32 %32)
  %34 = bitcast %struct.net_device* %33 to %struct.ib_gid_attr*
  store %struct.ib_gid_attr* %34, %struct.ib_gid_attr** %12, align 8
  %35 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %36 = bitcast %struct.ib_gid_attr* %35 to %struct.net_device*
  %37 = call i64 @IS_ERR(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %109

40:                                               ; preds = %27
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %43 = bitcast %struct.ib_gid_attr* %42 to %struct.net_device*
  %44 = call %struct.net_device* @rdma_read_gid_attr_ndev_rcu(%struct.net_device* %43)
  store %struct.net_device* %44, %struct.net_device** %13, align 8
  %45 = load %struct.net_device*, %struct.net_device** %13, align 8
  %46 = call i64 @IS_ERR(%struct.net_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %104, label %48

48:                                               ; preds = %40
  %49 = load i16, i16* %9, align 2
  %50 = icmp ne i16 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %53 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @is_vlan_dev(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %51, %48
  %58 = load i16, i16* %9, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %63 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @is_vlan_dev(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %69 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call zeroext i16 @vlan_dev_vlan_id(i32 %70)
  %72 = zext i16 %71 to i32
  %73 = load i16, i16* %9, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %67, %51
  %77 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %78 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IB_GID_TYPE_ROCE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %89 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %88, i32 0, i32 2
  %90 = load i32, i32* @SMC_GID_SIZE, align 4
  %91 = call i32 @memcpy(i32* %87, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i32*, i32** %11, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %97 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %92
  %101 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %102 = bitcast %struct.ib_gid_attr* %101 to %struct.net_device*
  %103 = call i32 @rdma_put_gid_attr(%struct.net_device* %102)
  store i32 0, i32* %6, align 4
  br label %115

104:                                              ; preds = %76, %67, %61, %57, %40
  %105 = call i32 (...) @rcu_read_unlock()
  %106 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %107 = bitcast %struct.ib_gid_attr* %106 to %struct.net_device*
  %108 = call i32 @rdma_put_gid_attr(%struct.net_device* %107)
  br label %109

109:                                              ; preds = %104, %39
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %15

112:                                              ; preds = %15
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112, %100
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local %struct.net_device* @rdma_get_gid_attr(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rdma_read_gid_attr_ndev_rcu(%struct.net_device*) #1

declare dso_local i64 @is_vlan_dev(i32) #1

declare dso_local zeroext i16 @vlan_dev_vlan_id(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rdma_put_gid_attr(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
