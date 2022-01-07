; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_mr_table_iter.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_mr_table_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mr_table* }
%struct.mr_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mr_table* (%struct.net*, %struct.mr_table*)* @ipmr_mr_table_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mr_table* @ipmr_mr_table_iter(%struct.net* %0, %struct.mr_table* %1) #0 {
  %3 = alloca %struct.mr_table*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.mr_table*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.mr_table* %1, %struct.mr_table** %5, align 8
  %6 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %7 = icmp ne %struct.mr_table* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mr_table*, %struct.mr_table** %11, align 8
  store %struct.mr_table* %12, %struct.mr_table** %3, align 8
  br label %14

13:                                               ; preds = %2
  store %struct.mr_table* null, %struct.mr_table** %3, align 8
  br label %14

14:                                               ; preds = %13, %8
  %15 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  ret %struct.mr_table* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
