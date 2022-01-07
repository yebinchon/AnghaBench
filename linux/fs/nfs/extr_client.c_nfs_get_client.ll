; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_get_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_get_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nfs_client*)* }
%struct.nfs_client_initdata = type { i32, i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.nfs_rpc_ops* }
%struct.nfs_rpc_ops = type { %struct.nfs_client* (%struct.nfs_client_initdata.0*)*, %struct.nfs_client* (%struct.nfs_client*, %struct.nfs_client_initdata.1*)* }
%struct.nfs_client_initdata.0 = type opaque
%struct.nfs_client_initdata.1 = type opaque
%struct.nfs_net = type { i32, i32 }

@nfs_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_client* @nfs_get_client(%struct.nfs_client_initdata* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca %struct.nfs_client_initdata*, align 8
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.nfs_client*, align 8
  %6 = alloca %struct.nfs_net*, align 8
  %7 = alloca %struct.nfs_rpc_ops*, align 8
  store %struct.nfs_client_initdata* %0, %struct.nfs_client_initdata** %3, align 8
  store %struct.nfs_client* null, %struct.nfs_client** %5, align 8
  %8 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @nfs_net_id, align 4
  %12 = call %struct.nfs_net* @net_generic(i32 %10, i32 %11)
  store %struct.nfs_net* %12, %struct.nfs_net** %6, align 8
  %13 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %16, align 8
  store %struct.nfs_rpc_ops* %17, %struct.nfs_rpc_ops** %7, align 8
  %18 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @WARN_ON(i32 1)
  store %struct.nfs_client* null, %struct.nfs_client** %2, align 8
  br label %98

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %91, %24
  %26 = load %struct.nfs_net*, %struct.nfs_net** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %30 = call %struct.nfs_client* @nfs_match_client(%struct.nfs_client_initdata* %29)
  store %struct.nfs_client* %30, %struct.nfs_client** %4, align 8
  %31 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %32 = icmp ne %struct.nfs_client* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load %struct.nfs_net*, %struct.nfs_net** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %38 = icmp ne %struct.nfs_client* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.nfs_client*)*, i32 (%struct.nfs_client*)** %43, align 8
  %45 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %46 = call i32 %44(%struct.nfs_client* %45)
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %49 = call i64 @IS_ERR(%struct.nfs_client* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  store %struct.nfs_client* %52, %struct.nfs_client** %2, align 8
  br label %98

53:                                               ; preds = %47
  %54 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %55 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %56 = call %struct.nfs_client* @nfs_found_client(%struct.nfs_client_initdata* %54, %struct.nfs_client* %55)
  store %struct.nfs_client* %56, %struct.nfs_client** %2, align 8
  br label %98

57:                                               ; preds = %25
  %58 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %59 = icmp ne %struct.nfs_client* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %62 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %61, i32 0, i32 1
  %63 = load %struct.nfs_net*, %struct.nfs_net** %6, align 8
  %64 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %63, i32 0, i32 1
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  %66 = load %struct.nfs_net*, %struct.nfs_net** %6, align 8
  %67 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %70 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %73 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %7, align 8
  %75 = getelementptr inbounds %struct.nfs_rpc_ops, %struct.nfs_rpc_ops* %74, i32 0, i32 1
  %76 = load %struct.nfs_client* (%struct.nfs_client*, %struct.nfs_client_initdata.1*)*, %struct.nfs_client* (%struct.nfs_client*, %struct.nfs_client_initdata.1*)** %75, align 8
  %77 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %78 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %79 = bitcast %struct.nfs_client_initdata* %78 to %struct.nfs_client_initdata.1*
  %80 = call %struct.nfs_client* %76(%struct.nfs_client* %77, %struct.nfs_client_initdata.1* %79)
  store %struct.nfs_client* %80, %struct.nfs_client** %2, align 8
  br label %98

81:                                               ; preds = %57
  %82 = load %struct.nfs_net*, %struct.nfs_net** %6, align 8
  %83 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %7, align 8
  %86 = getelementptr inbounds %struct.nfs_rpc_ops, %struct.nfs_rpc_ops* %85, i32 0, i32 0
  %87 = load %struct.nfs_client* (%struct.nfs_client_initdata.0*)*, %struct.nfs_client* (%struct.nfs_client_initdata.0*)** %86, align 8
  %88 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %89 = bitcast %struct.nfs_client_initdata* %88 to %struct.nfs_client_initdata.0*
  %90 = call %struct.nfs_client* %87(%struct.nfs_client_initdata.0* %89)
  store %struct.nfs_client* %90, %struct.nfs_client** %5, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %93 = call i64 @IS_ERR(%struct.nfs_client* %92)
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %25, label %96

96:                                               ; preds = %91
  %97 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  store %struct.nfs_client* %97, %struct.nfs_client** %2, align 8
  br label %98

98:                                               ; preds = %96, %60, %53, %51, %22
  %99 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  ret %struct.nfs_client* %99
}

declare dso_local %struct.nfs_net* @net_generic(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_client* @nfs_match_client(%struct.nfs_client_initdata*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_client*) #1

declare dso_local %struct.nfs_client* @nfs_found_client(%struct.nfs_client_initdata*, %struct.nfs_client*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
