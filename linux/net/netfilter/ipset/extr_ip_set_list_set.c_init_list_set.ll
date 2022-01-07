; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_init_list_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_init_list_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_set = type { %struct.list_set* }
%struct.list_set = type { i32, %struct.ip_set*, %struct.net*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ip_set*, i32)* @init_list_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_list_set(%struct.net* %0, %struct.ip_set* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_set*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ip_set* %1, %struct.ip_set** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.list_set* @kzalloc(i32 32, i32 %9)
  store %struct.list_set* %10, %struct.list_set** %8, align 8
  %11 = load %struct.list_set*, %struct.list_set** %8, align 8
  %12 = icmp ne %struct.list_set* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.list_set*, %struct.list_set** %8, align 8
  %17 = getelementptr inbounds %struct.list_set, %struct.list_set* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = load %struct.list_set*, %struct.list_set** %8, align 8
  %20 = getelementptr inbounds %struct.list_set, %struct.list_set* %19, i32 0, i32 2
  store %struct.net* %18, %struct.net** %20, align 8
  %21 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %22 = load %struct.list_set*, %struct.list_set** %8, align 8
  %23 = getelementptr inbounds %struct.list_set, %struct.list_set* %22, i32 0, i32 1
  store %struct.ip_set* %21, %struct.ip_set** %23, align 8
  %24 = load %struct.list_set*, %struct.list_set** %8, align 8
  %25 = getelementptr inbounds %struct.list_set, %struct.list_set* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.list_set*, %struct.list_set** %8, align 8
  %28 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %29 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %28, i32 0, i32 0
  store %struct.list_set* %27, %struct.list_set** %29, align 8
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %14, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.list_set* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
