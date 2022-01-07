; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_setup_tc_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_setup_tc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.flow_block_offload = type { i64, i32, i32, i32* }
%struct.flow_block_cb = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i64 0, align 8
@dsa_slave_setup_tc_block_cb_ig = common dso_local global i32* null, align 8
@FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS = common dso_local global i64 0, align 8
@dsa_slave_setup_tc_block_cb_eg = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dsa_slave_block_cb_list = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.flow_block_offload*)* @dsa_slave_setup_tc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_setup_tc_block(%struct.net_device* %0, %struct.flow_block_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.flow_block_offload*, align 8
  %6 = alloca %struct.flow_block_cb*, align 8
  %7 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.flow_block_offload* %1, %struct.flow_block_offload** %5, align 8
  %8 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %9 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** @dsa_slave_setup_tc_block_cb_ig, align 8
  store i32* %14, i32** %7, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %17 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32*, i32** @dsa_slave_setup_tc_block_cb_eg, align 8
  store i32* %22, i32** %7, align 8
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %29 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %28, i32 0, i32 3
  store i32* @dsa_slave_block_cb_list, i32** %29, align 8
  %30 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %31 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %78 [
    i32 129, label %33
    i32 128, label %59
  ]

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @flow_block_cb_is_busy(i32* %34, %struct.net_device* %35, i32* @dsa_slave_block_cb_list)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %81

41:                                               ; preds = %33
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32* %42, %struct.net_device* %43, %struct.net_device* %44, i32* null)
  store %struct.flow_block_cb* %45, %struct.flow_block_cb** %6, align 8
  %46 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %47 = call i32 @IS_ERR(%struct.flow_block_cb* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %51 = call i32 @PTR_ERR(%struct.flow_block_cb* %50)
  store i32 %51, i32* %3, align 4
  br label %81

52:                                               ; preds = %41
  %53 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %54 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %55 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %53, %struct.flow_block_offload* %54)
  %56 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %57 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %56, i32 0, i32 0
  %58 = call i32 @list_add_tail(i32* %57, i32* @dsa_slave_block_cb_list)
  store i32 0, i32* %3, align 4
  br label %81

59:                                               ; preds = %27
  %60 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %61 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %62, i32* %63, %struct.net_device* %64)
  store %struct.flow_block_cb* %65, %struct.flow_block_cb** %6, align 8
  %66 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %67 = icmp ne %struct.flow_block_cb* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %81

71:                                               ; preds = %59
  %72 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %73 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %74 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %72, %struct.flow_block_offload* %73)
  %75 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %76 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %75, i32 0, i32 0
  %77 = call i32 @list_del(i32* %76)
  store i32 0, i32* %3, align 4
  br label %81

78:                                               ; preds = %27
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %71, %68, %52, %49, %38, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @flow_block_cb_is_busy(i32*, %struct.net_device*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32*, %struct.net_device*, %struct.net_device*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32*, %struct.net_device*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
