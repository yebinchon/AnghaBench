; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_amp_mgr_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_amp_mgr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mgr %p orig refcnt %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amp_mgr* @amp_mgr_get(%struct.amp_mgr* %0) #0 {
  %2 = alloca %struct.amp_mgr*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %2, align 8
  %3 = load %struct.amp_mgr*, %struct.amp_mgr** %2, align 8
  %4 = load %struct.amp_mgr*, %struct.amp_mgr** %2, align 8
  %5 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %4, i32 0, i32 0
  %6 = call i32 @kref_read(i32* %5)
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.amp_mgr* %3, i32 %6)
  %8 = load %struct.amp_mgr*, %struct.amp_mgr** %2, align 8
  %9 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %8, i32 0, i32 0
  %10 = call i32 @kref_get(i32* %9)
  %11 = load %struct.amp_mgr*, %struct.amp_mgr** %2, align 8
  ret %struct.amp_mgr* %11
}

declare dso_local i32 @BT_DBG(i8*, %struct.amp_mgr*, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
