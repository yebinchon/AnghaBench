; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_fill_mac.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_fill_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ib_device = type { i32*, i32 }
%struct.ib_gid_attr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_ib_device*, i32)* @smc_ib_fill_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ib_fill_mac(%struct.smc_ib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca i32, align 4
  store %struct.smc_ib_device* %0, %struct.smc_ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.smc_ib_device*, %struct.smc_ib_device** %4, align 8
  %9 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ib_gid_attr* @rdma_get_gid_attr(i32 %10, i32 %11, i32 0)
  store %struct.ib_gid_attr* %12, %struct.ib_gid_attr** %6, align 8
  %13 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %14 = call i64 @IS_ERR(%struct.ib_gid_attr* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %21 = load %struct.smc_ib_device*, %struct.smc_ib_device** %4, align 8
  %22 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %20, i32* null, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %31 = call i32 @rdma_put_gid_attr(%struct.ib_gid_attr* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.ib_gid_attr* @rdma_get_gid_attr(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i32*, i32) #1

declare dso_local i32 @rdma_put_gid_attr(%struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
