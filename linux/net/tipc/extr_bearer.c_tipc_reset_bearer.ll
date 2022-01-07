; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_reset_bearer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_reset_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bearer = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Resetting bearer <%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tipc_bearer*)* @tipc_reset_bearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_reset_bearer(%struct.net* %0, %struct.tipc_bearer* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_bearer*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %4, align 8
  %5 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %6 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %11 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tipc_node_delete_links(%struct.net* %9, i32 %12)
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %16 = call i32 @tipc_disc_reset(%struct.net* %14, %struct.tipc_bearer* %15)
  ret i32 0
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @tipc_node_delete_links(%struct.net*, i32) #1

declare dso_local i32 @tipc_disc_reset(%struct.net*, %struct.tipc_bearer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
