; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_bearer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_bearer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bearer = type { i32, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tipc_bearer*)* }
%struct.tipc_net = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"Disabling bearer <%s>\0A\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.tipc_bearer*)* @bearer_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bearer_disable(%struct.net* %0, %struct.tipc_bearer* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_bearer*, align 8
  %5 = alloca %struct.tipc_net*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %4, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.tipc_net* @tipc_net(%struct.net* %7)
  store %struct.tipc_net* %8, %struct.tipc_net** %5, align 8
  %9 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %10 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %13 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %17 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %16, i32 0, i32 4
  %18 = call i32 @clear_bit_unlock(i32 0, i32* %17)
  %19 = load %struct.net*, %struct.net** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @tipc_node_delete_links(%struct.net* %19, i32 %20)
  %22 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %23 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.tipc_bearer*)*, i32 (%struct.tipc_bearer*)** %25, align 8
  %27 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %28 = call i32 %26(%struct.tipc_bearer* %27)
  %29 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %30 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @RCU_INIT_POINTER(i32 %31, i32* null)
  %33 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %34 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %39 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @tipc_disc_delete(i64 %40)
  br label %42

42:                                               ; preds = %37, %2
  %43 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %44 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @RCU_INIT_POINTER(i32 %49, i32* null)
  %51 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %52 = load i32, i32* @rcu, align 4
  %53 = call i32 @kfree_rcu(%struct.tipc_bearer* %51, i32 %52)
  %54 = load %struct.net*, %struct.net** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @tipc_mon_delete(%struct.net* %54, i32 %55)
  ret void
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @tipc_node_delete_links(%struct.net*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @tipc_disc_delete(i64) #1

declare dso_local i32 @kfree_rcu(%struct.tipc_bearer*, i32) #1

declare dso_local i32 @tipc_mon_delete(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
