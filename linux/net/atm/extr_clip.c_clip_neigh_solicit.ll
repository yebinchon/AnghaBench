; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_neigh_solicit.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_neigh_solicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"(neigh %p, skb %p)\0A\00", align 1
@act_need = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, %struct.sk_buff*)* @clip_neigh_solicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clip_neigh_solicit(%struct.neighbour* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %7 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.neighbour* %10, %struct.sk_buff* %11)
  %13 = load i32, i32* @act_need, align 4
  %14 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %15 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_2__* @PRIV(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @to_atmarpd(i32 %13, i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.neighbour*, %struct.sk_buff*) #1

declare dso_local i32 @to_atmarpd(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @PRIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
