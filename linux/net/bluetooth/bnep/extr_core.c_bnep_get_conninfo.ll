; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_get_conninfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_get_conninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_conninfo = type { i32 }
%struct.bnep_session = type { i32 }

@bnep_session_sem = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnep_get_conninfo(%struct.bnep_conninfo* %0) #0 {
  %2 = alloca %struct.bnep_conninfo*, align 8
  %3 = alloca %struct.bnep_session*, align 8
  %4 = alloca i32, align 4
  store %struct.bnep_conninfo* %0, %struct.bnep_conninfo** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @down_read(i32* @bnep_session_sem)
  %6 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %2, align 8
  %7 = getelementptr inbounds %struct.bnep_conninfo, %struct.bnep_conninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.bnep_session* @__bnep_get_session(i32 %8)
  store %struct.bnep_session* %9, %struct.bnep_session** %3, align 8
  %10 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %11 = icmp ne %struct.bnep_session* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.bnep_conninfo*, %struct.bnep_conninfo** %2, align 8
  %14 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %15 = call i32 @__bnep_copy_ci(%struct.bnep_conninfo* %13, %struct.bnep_session* %14)
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = call i32 @up_read(i32* @bnep_session_sem)
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.bnep_session* @__bnep_get_session(i32) #1

declare dso_local i32 @__bnep_copy_ci(%struct.bnep_conninfo*, %struct.bnep_session*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
