; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_netlink_diag_dump_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_netlink_diag_dump_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i32* }
%struct.rhashtable_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @netlink_diag_dump_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_diag_dump_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.rhashtable_iter*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %4 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %5 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.rhashtable_iter*
  store %struct.rhashtable_iter* %11, %struct.rhashtable_iter** %3, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %20 = call i32 @rhashtable_walk_exit(%struct.rhashtable_iter* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %23 = call i32 @kfree(%struct.rhashtable_iter* %22)
  ret i32 0
}

declare dso_local i32 @rhashtable_walk_exit(%struct.rhashtable_iter*) #1

declare dso_local i32 @kfree(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
