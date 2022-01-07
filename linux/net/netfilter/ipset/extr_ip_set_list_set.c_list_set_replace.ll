; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_replace.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.list_set* }
%struct.list_set = type { i32 }
%struct.set_elem = type { i32, i32, i32 }

@__list_set_del_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_set*, %struct.set_elem*, %struct.set_elem*)* @list_set_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_set_replace(%struct.ip_set* %0, %struct.set_elem* %1, %struct.set_elem* %2) #0 {
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.set_elem*, align 8
  %6 = alloca %struct.set_elem*, align 8
  %7 = alloca %struct.list_set*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %4, align 8
  store %struct.set_elem* %1, %struct.set_elem** %5, align 8
  store %struct.set_elem* %2, %struct.set_elem** %6, align 8
  %8 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %9 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %8, i32 0, i32 0
  %10 = load %struct.list_set*, %struct.list_set** %9, align 8
  store %struct.list_set* %10, %struct.list_set** %7, align 8
  %11 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %12 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %11, i32 0, i32 2
  %13 = load %struct.set_elem*, %struct.set_elem** %5, align 8
  %14 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %13, i32 0, i32 2
  %15 = call i32 @list_replace_rcu(i32* %12, i32* %14)
  %16 = load %struct.list_set*, %struct.list_set** %7, align 8
  %17 = getelementptr inbounds %struct.list_set, %struct.list_set* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %20 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ip_set_put_byindex(i32 %18, i32 %21)
  %23 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %24 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %23, i32 0, i32 0
  %25 = load i32, i32* @__list_set_del_rcu, align 4
  %26 = call i32 @call_rcu(i32* %24, i32 %25)
  ret void
}

declare dso_local i32 @list_replace_rcu(i32*, i32*) #1

declare dso_local i32 @ip_set_put_byindex(i32, i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
