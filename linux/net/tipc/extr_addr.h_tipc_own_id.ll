; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_addr.h_tipc_own_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_addr.h_tipc_own_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.net*)* @tipc_own_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tipc_own_id(%struct.net* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = call %struct.tipc_net* @tipc_net(%struct.net* %5)
  store %struct.tipc_net* %6, %struct.tipc_net** %4, align 8
  %7 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %8 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @strlen(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %2, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i32*, i32** %2, align 8
  ret i32* %18
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
