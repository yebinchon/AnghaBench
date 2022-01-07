; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_get_conninfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_get_conninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_conninfo = type { i32 }
%struct.hidp_session = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidp_get_conninfo(%struct.hidp_conninfo* %0) #0 {
  %2 = alloca %struct.hidp_conninfo*, align 8
  %3 = alloca %struct.hidp_session*, align 8
  store %struct.hidp_conninfo* %0, %struct.hidp_conninfo** %2, align 8
  %4 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %2, align 8
  %5 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %4, i32 0, i32 0
  %6 = call %struct.hidp_session* @hidp_session_find(i32* %5)
  store %struct.hidp_session* %6, %struct.hidp_session** %3, align 8
  %7 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %8 = icmp ne %struct.hidp_session* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %11 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %2, align 8
  %12 = call i32 @hidp_copy_session(%struct.hidp_session* %10, %struct.hidp_conninfo* %11)
  %13 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %14 = call i32 @hidp_session_put(%struct.hidp_session* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %17 = icmp ne %struct.hidp_session* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i32 [ 0, %18 ], [ %21, %19 ]
  ret i32 %23
}

declare dso_local %struct.hidp_session* @hidp_session_find(i32*) #1

declare dso_local i32 @hidp_copy_session(%struct.hidp_session*, %struct.hidp_conninfo*) #1

declare dso_local i32 @hidp_session_put(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
