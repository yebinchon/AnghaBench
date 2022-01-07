; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32, i32 }
%struct.vport_parms = type { i32 }
%struct.vport_ops = type { i32, %struct.vport* (%struct.vport_parms*)* }
%struct.hlist_head = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vport-type-%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vport* @ovs_vport_add(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.vport_ops*, align 8
  %5 = alloca %struct.vport*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  %7 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %8 = call %struct.vport_ops* @ovs_vport_lookup(%struct.vport_parms* %7)
  store %struct.vport_ops* %8, %struct.vport_ops** %4, align 8
  %9 = load %struct.vport_ops*, %struct.vport_ops** %4, align 8
  %10 = icmp ne %struct.vport_ops* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load %struct.vport_ops*, %struct.vport_ops** %4, align 8
  %13 = getelementptr inbounds %struct.vport_ops, %struct.vport_ops* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @try_module_get(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @EAFNOSUPPORT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.vport* @ERR_PTR(i32 %19)
  store %struct.vport* %20, %struct.vport** %2, align 8
  br label %67

21:                                               ; preds = %11
  %22 = load %struct.vport_ops*, %struct.vport_ops** %4, align 8
  %23 = getelementptr inbounds %struct.vport_ops, %struct.vport_ops* %22, i32 0, i32 1
  %24 = load %struct.vport* (%struct.vport_parms*)*, %struct.vport* (%struct.vport_parms*)** %23, align 8
  %25 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %26 = call %struct.vport* %24(%struct.vport_parms* %25)
  store %struct.vport* %26, %struct.vport** %5, align 8
  %27 = load %struct.vport*, %struct.vport** %5, align 8
  %28 = call i64 @IS_ERR(%struct.vport* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.vport_ops*, %struct.vport_ops** %4, align 8
  %32 = getelementptr inbounds %struct.vport_ops, %struct.vport_ops* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @module_put(i32 %33)
  %35 = load %struct.vport*, %struct.vport** %5, align 8
  store %struct.vport* %35, %struct.vport** %2, align 8
  br label %67

36:                                               ; preds = %21
  %37 = load %struct.vport*, %struct.vport** %5, align 8
  %38 = getelementptr inbounds %struct.vport, %struct.vport* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ovs_dp_get_net(i32 %39)
  %41 = load %struct.vport*, %struct.vport** %5, align 8
  %42 = call i32 @ovs_vport_name(%struct.vport* %41)
  %43 = call %struct.hlist_head* @hash_bucket(i32 %40, i32 %42)
  store %struct.hlist_head* %43, %struct.hlist_head** %6, align 8
  %44 = load %struct.vport*, %struct.vport** %5, align 8
  %45 = getelementptr inbounds %struct.vport, %struct.vport* %44, i32 0, i32 0
  %46 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %47 = call i32 @hlist_add_head_rcu(i32* %45, %struct.hlist_head* %46)
  %48 = load %struct.vport*, %struct.vport** %5, align 8
  store %struct.vport* %48, %struct.vport** %2, align 8
  br label %67

49:                                               ; preds = %1
  %50 = call i32 (...) @ovs_unlock()
  %51 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %52 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @request_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 (...) @ovs_lock()
  %56 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %57 = call %struct.vport_ops* @ovs_vport_lookup(%struct.vport_parms* %56)
  %58 = icmp ne %struct.vport_ops* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @EAFNOSUPPORT, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.vport* @ERR_PTR(i32 %61)
  store %struct.vport* %62, %struct.vport** %2, align 8
  br label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.vport* @ERR_PTR(i32 %65)
  store %struct.vport* %66, %struct.vport** %2, align 8
  br label %67

67:                                               ; preds = %63, %59, %36, %30, %17
  %68 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %68
}

declare dso_local %struct.vport_ops* @ovs_vport_lookup(%struct.vport_parms*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.vport* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local %struct.hlist_head* @hash_bucket(i32, i32) #1

declare dso_local i32 @ovs_dp_get_net(i32) #1

declare dso_local i32 @ovs_vport_name(%struct.vport*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local i32 @ovs_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
