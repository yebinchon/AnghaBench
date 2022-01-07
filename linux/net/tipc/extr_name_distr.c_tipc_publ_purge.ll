; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_publ_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_publ_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.publication = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tipc_net = type { i32 }

@.str = private unnamed_addr constant [96 x i8] c"Unable to remove publication from failed node\0A (type=%u, lower=%u, node=0x%x, port=%u, key=%u)\0A\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.publication*, i32)* @tipc_publ_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_publ_purge(%struct.net* %0, %struct.publication* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.publication*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_net*, align 8
  %8 = alloca %struct.publication*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.publication* %1, %struct.publication** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = call %struct.tipc_net* @tipc_net(%struct.net* %9)
  store %struct.tipc_net* %10, %struct.tipc_net** %7, align 8
  %11 = load %struct.tipc_net*, %struct.tipc_net** %7, align 8
  %12 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load %struct.publication*, %struct.publication** %5, align 8
  %16 = getelementptr inbounds %struct.publication, %struct.publication* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.publication*, %struct.publication** %5, align 8
  %19 = getelementptr inbounds %struct.publication, %struct.publication* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.publication*, %struct.publication** %5, align 8
  %22 = getelementptr inbounds %struct.publication, %struct.publication* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.publication*, %struct.publication** %5, align 8
  %25 = getelementptr inbounds %struct.publication, %struct.publication* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.publication*, %struct.publication** %5, align 8
  %28 = getelementptr inbounds %struct.publication, %struct.publication* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.publication* @tipc_nametbl_remove_publ(%struct.net* %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29)
  store %struct.publication* %30, %struct.publication** %8, align 8
  %31 = load %struct.publication*, %struct.publication** %8, align 8
  %32 = icmp ne %struct.publication* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.net*, %struct.net** %4, align 8
  %35 = load %struct.publication*, %struct.publication** %8, align 8
  %36 = getelementptr inbounds %struct.publication, %struct.publication* %35, i32 0, i32 5
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @tipc_node_unsubscribe(%struct.net* %34, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %3
  %40 = load %struct.tipc_net*, %struct.tipc_net** %7, align 8
  %41 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.publication*, %struct.publication** %8, align 8
  %44 = load %struct.publication*, %struct.publication** %5, align 8
  %45 = icmp ne %struct.publication* %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.publication*, %struct.publication** %5, align 8
  %48 = getelementptr inbounds %struct.publication, %struct.publication* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.publication*, %struct.publication** %5, align 8
  %51 = getelementptr inbounds %struct.publication, %struct.publication* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.publication*, %struct.publication** %5, align 8
  %54 = getelementptr inbounds %struct.publication, %struct.publication* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.publication*, %struct.publication** %5, align 8
  %57 = getelementptr inbounds %struct.publication, %struct.publication* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.publication*, %struct.publication** %5, align 8
  %60 = getelementptr inbounds %struct.publication, %struct.publication* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %46, %39
  %64 = load %struct.publication*, %struct.publication** %8, align 8
  %65 = icmp ne %struct.publication* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.publication*, %struct.publication** %8, align 8
  %68 = load i32, i32* @rcu, align 4
  %69 = call i32 @kfree_rcu(%struct.publication* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  ret void
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.publication* @tipc_nametbl_remove_publ(%struct.net*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_node_unsubscribe(%struct.net*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_rcu(%struct.publication*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
