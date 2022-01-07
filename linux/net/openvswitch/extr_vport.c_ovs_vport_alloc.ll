; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32, %struct.vport_ops*, i32, i32 }
%struct.vport_ops = type { i32 }
%struct.vport_parms = type { i32, i32, i32 }

@VPORT_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vport* @ovs_vport_alloc(i32 %0, %struct.vport_ops* %1, %struct.vport_parms* %2) #0 {
  %4 = alloca %struct.vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vport_ops*, align 8
  %7 = alloca %struct.vport_parms*, align 8
  %8 = alloca %struct.vport*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.vport_ops* %1, %struct.vport_ops** %6, align 8
  store %struct.vport_parms* %2, %struct.vport_parms** %7, align 8
  store i64 24, i64* %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* @VPORT_ALIGN, align 4
  %15 = call i64 @ALIGN(i64 %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %12, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vport* @kzalloc(i64 %21, i32 %22)
  store %struct.vport* %23, %struct.vport** %8, align 8
  %24 = load %struct.vport*, %struct.vport** %8, align 8
  %25 = icmp ne %struct.vport* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.vport* @ERR_PTR(i32 %28)
  store %struct.vport* %29, %struct.vport** %4, align 8
  br label %61

30:                                               ; preds = %20
  %31 = load %struct.vport_parms*, %struct.vport_parms** %7, align 8
  %32 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vport*, %struct.vport** %8, align 8
  %35 = getelementptr inbounds %struct.vport, %struct.vport* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vport_parms*, %struct.vport_parms** %7, align 8
  %37 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vport*, %struct.vport** %8, align 8
  %40 = getelementptr inbounds %struct.vport, %struct.vport* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.vport_ops*, %struct.vport_ops** %6, align 8
  %42 = load %struct.vport*, %struct.vport** %8, align 8
  %43 = getelementptr inbounds %struct.vport, %struct.vport* %42, i32 0, i32 1
  store %struct.vport_ops* %41, %struct.vport_ops** %43, align 8
  %44 = load %struct.vport*, %struct.vport** %8, align 8
  %45 = getelementptr inbounds %struct.vport, %struct.vport* %44, i32 0, i32 0
  %46 = call i32 @INIT_HLIST_NODE(i32* %45)
  %47 = load %struct.vport*, %struct.vport** %8, align 8
  %48 = load %struct.vport_parms*, %struct.vport_parms** %7, align 8
  %49 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ovs_vport_set_upcall_portids(%struct.vport* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %30
  %54 = load %struct.vport*, %struct.vport** %8, align 8
  %55 = call i32 @kfree(%struct.vport* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.vport* @ERR_PTR(i32 %57)
  store %struct.vport* %58, %struct.vport** %4, align 8
  br label %61

59:                                               ; preds = %30
  %60 = load %struct.vport*, %struct.vport** %8, align 8
  store %struct.vport* %60, %struct.vport** %4, align 8
  br label %61

61:                                               ; preds = %59, %53, %26
  %62 = load %struct.vport*, %struct.vport** %4, align 8
  ret %struct.vport* %62
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.vport* @kzalloc(i64, i32) #1

declare dso_local %struct.vport* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i64 @ovs_vport_set_upcall_portids(%struct.vport*, i32) #1

declare dso_local i32 @kfree(%struct.vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
