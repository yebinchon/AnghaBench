; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_register_hb_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_register_hb_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o2net_hb_down = common dso_local global i32 0, align 4
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@o2net_hb_node_down_cb = common dso_local global i32 0, align 4
@O2NET_HB_PRI = common dso_local global i32 0, align 4
@o2net_hb_up = common dso_local global i32 0, align 4
@O2HB_NODE_UP_CB = common dso_local global i32 0, align 4
@o2net_hb_node_up_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_register_hb_callbacks() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %3 = load i32, i32* @o2net_hb_node_down_cb, align 4
  %4 = load i32, i32* @O2NET_HB_PRI, align 4
  %5 = call i32 @o2hb_setup_callback(i32* @o2net_hb_down, i32 %2, i32 %3, i32* null, i32 %4)
  %6 = load i32, i32* @O2HB_NODE_UP_CB, align 4
  %7 = load i32, i32* @o2net_hb_node_up_cb, align 4
  %8 = load i32, i32* @O2NET_HB_PRI, align 4
  %9 = call i32 @o2hb_setup_callback(i32* @o2net_hb_up, i32 %6, i32 %7, i32* null, i32 %8)
  %10 = call i32 @o2hb_register_callback(i32* null, i32* @o2net_hb_up)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @o2hb_register_callback(i32* null, i32* @o2net_hb_down)
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @o2net_unregister_hb_callbacks()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @o2hb_setup_callback(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @o2hb_register_callback(i32*, i32*) #1

declare dso_local i32 @o2net_unregister_hb_callbacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
