; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c___br_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c___br_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32, i32 }
%struct.net_bridge = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_bridge_port = type { i32 }

@NTF_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"bridge: RTM_NEWNEIGH %s with NTF_USE is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NTF_EXT_LEARNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32)* @__br_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__br_fdb_add(%struct.ndmsg* %0, %struct.net_bridge* %1, %struct.net_bridge_port* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ndmsg*, align 8
  %9 = alloca %struct.net_bridge*, align 8
  %10 = alloca %struct.net_bridge_port*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %8, align 8
  store %struct.net_bridge* %1, %struct.net_bridge** %9, align 8
  store %struct.net_bridge_port* %2, %struct.net_bridge_port** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %16 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NTF_USE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %6
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %23 = icmp ne %struct.net_bridge_port* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %26 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %78

33:                                               ; preds = %21
  %34 = call i32 (...) @local_bh_disable()
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @br_fdb_update(%struct.net_bridge* %36, %struct.net_bridge_port* %37, i8* %38, i32 %39, i32 1)
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = call i32 (...) @local_bh_enable()
  br label %76

43:                                               ; preds = %6
  %44 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %45 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NTF_EXT_LEARNED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @br_fdb_external_learn_add(%struct.net_bridge* %51, %struct.net_bridge_port* %52, i8* %53, i32 %54, i32 1)
  store i32 %55, i32* %14, align 4
  br label %75

56:                                               ; preds = %43
  %57 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %58 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %61 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %64 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %69 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fdb_add_entry(%struct.net_bridge* %60, %struct.net_bridge_port* %61, i8* %62, i32 %65, i32 %66, i32 %67, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %73 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_bh(i32* %73)
  br label %75

75:                                               ; preds = %56, %50
  br label %76

76:                                               ; preds = %75, %33
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %24
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @br_fdb_update(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @br_fdb_external_learn_add(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fdb_add_entry(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
