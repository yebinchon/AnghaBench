; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_set_upcall_portids.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_set_upcall_portids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.nlattr = type { i32 }
%struct.vport_portids = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_vport_set_upcall_portids(%struct.vport* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.vport_portids*, align 8
  %7 = alloca %struct.vport_portids*, align 8
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %8 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %9 = call i32 @nla_len(%struct.nlattr* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %13 = call i32 @nla_len(%struct.nlattr* %12)
  %14 = sext i32 %13 to i64
  %15 = urem i64 %14, 4
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %11
  %21 = load %struct.vport*, %struct.vport** %4, align 8
  %22 = getelementptr inbounds %struct.vport, %struct.vport* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.vport_portids* @ovsl_dereference(i32 %23)
  store %struct.vport_portids* %24, %struct.vport_portids** %6, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %26 = call i32 @nla_len(%struct.nlattr* %25)
  %27 = sext i32 %26 to i64
  %28 = add i64 12, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.vport_portids* @kmalloc(i32 %29, i32 %30)
  store %struct.vport_portids* %31, %struct.vport_portids** %7, align 8
  %32 = load %struct.vport_portids*, %struct.vport_portids** %7, align 8
  %33 = icmp ne %struct.vport_portids* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %70

37:                                               ; preds = %20
  %38 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %39 = call i32 @nla_len(%struct.nlattr* %38)
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load %struct.vport_portids*, %struct.vport_portids** %7, align 8
  %44 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vport_portids*, %struct.vport_portids** %7, align 8
  %46 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @reciprocal_value(i32 %47)
  %49 = load %struct.vport_portids*, %struct.vport_portids** %7, align 8
  %50 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.vport_portids*, %struct.vport_portids** %7, align 8
  %52 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %56 = call i32 @nla_len(%struct.nlattr* %55)
  %57 = call i32 @nla_memcpy(i32 %53, %struct.nlattr* %54, i32 %56)
  %58 = load %struct.vport*, %struct.vport** %4, align 8
  %59 = getelementptr inbounds %struct.vport, %struct.vport* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vport_portids*, %struct.vport_portids** %7, align 8
  %62 = call i32 @rcu_assign_pointer(i32 %60, %struct.vport_portids* %61)
  %63 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %64 = icmp ne %struct.vport_portids* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %37
  %66 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %67 = load i32, i32* @rcu, align 4
  %68 = call i32 @kfree_rcu(%struct.vport_portids* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %37
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %34, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.vport_portids* @ovsl_dereference(i32) #1

declare dso_local %struct.vport_portids* @kmalloc(i32, i32) #1

declare dso_local i32 @reciprocal_value(i32) #1

declare dso_local i32 @nla_memcpy(i32, %struct.nlattr*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.vport_portids*) #1

declare dso_local i32 @kfree_rcu(%struct.vport_portids*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
