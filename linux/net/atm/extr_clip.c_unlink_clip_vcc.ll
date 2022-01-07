; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_unlink_clip_vcc.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_unlink_clip_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clip_vcc = type { i64, %struct.atmarp_entry*, %struct.clip_vcc* }
%struct.atmarp_entry = type { %struct.TYPE_2__*, i8*, %struct.clip_vcc* }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [32 x i8] c"!clip_vcc->entry (clip_vcc %p)\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@NUD_NONE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"neigh_update failed with %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ATMARP: failed (entry %p, vcc 0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clip_vcc*)* @unlink_clip_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_clip_vcc(%struct.clip_vcc* %0) #0 {
  %2 = alloca %struct.clip_vcc*, align 8
  %3 = alloca %struct.atmarp_entry*, align 8
  %4 = alloca %struct.clip_vcc**, align 8
  %5 = alloca i32, align 4
  store %struct.clip_vcc* %0, %struct.clip_vcc** %2, align 8
  %6 = load %struct.clip_vcc*, %struct.clip_vcc** %2, align 8
  %7 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %6, i32 0, i32 1
  %8 = load %struct.atmarp_entry*, %struct.atmarp_entry** %7, align 8
  store %struct.atmarp_entry* %8, %struct.atmarp_entry** %3, align 8
  %9 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %10 = icmp ne %struct.atmarp_entry* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.clip_vcc*, %struct.clip_vcc** %2, align 8
  %13 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.clip_vcc* %12)
  br label %94

14:                                               ; preds = %1
  %15 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %16 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_tx_lock_bh(i32 %19)
  %21 = load i8*, i8** @jiffies, align 8
  %22 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %23 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %21, i8** %25, align 8
  %26 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %27 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %26, i32 0, i32 2
  store %struct.clip_vcc** %27, %struct.clip_vcc*** %4, align 8
  br label %28

28:                                               ; preds = %79, %14
  %29 = load %struct.clip_vcc**, %struct.clip_vcc*** %4, align 8
  %30 = load %struct.clip_vcc*, %struct.clip_vcc** %29, align 8
  %31 = icmp ne %struct.clip_vcc* %30, null
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.clip_vcc**, %struct.clip_vcc*** %4, align 8
  %34 = load %struct.clip_vcc*, %struct.clip_vcc** %33, align 8
  %35 = load %struct.clip_vcc*, %struct.clip_vcc** %2, align 8
  %36 = icmp eq %struct.clip_vcc* %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %32
  %38 = load %struct.clip_vcc*, %struct.clip_vcc** %2, align 8
  %39 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %38, i32 0, i32 2
  %40 = load %struct.clip_vcc*, %struct.clip_vcc** %39, align 8
  %41 = load %struct.clip_vcc**, %struct.clip_vcc*** %4, align 8
  store %struct.clip_vcc* %40, %struct.clip_vcc** %41, align 8
  %42 = load %struct.clip_vcc*, %struct.clip_vcc** %2, align 8
  %43 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %42, i32 0, i32 1
  store %struct.atmarp_entry* null, %struct.atmarp_entry** %43, align 8
  %44 = load %struct.clip_vcc*, %struct.clip_vcc** %2, align 8
  %45 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %50 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @netif_wake_queue(i32 %53)
  br label %55

55:                                               ; preds = %48, %37
  %56 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %57 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %56, i32 0, i32 2
  %58 = load %struct.clip_vcc*, %struct.clip_vcc** %57, align 8
  %59 = icmp ne %struct.clip_vcc* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %87

61:                                               ; preds = %55
  %62 = load i8*, i8** @jiffies, align 8
  %63 = getelementptr i8, i8* %62, i64 -1
  %64 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %65 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %67 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* @NUD_NONE, align 4
  %70 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %71 = call i32 @neigh_update(%struct.TYPE_2__* %68, i32* null, i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %61
  br label %87

78:                                               ; preds = %32
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.clip_vcc**, %struct.clip_vcc*** %4, align 8
  %81 = load %struct.clip_vcc*, %struct.clip_vcc** %80, align 8
  %82 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %81, i32 0, i32 2
  store %struct.clip_vcc** %82, %struct.clip_vcc*** %4, align 8
  br label %28

83:                                               ; preds = %28
  %84 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %85 = load %struct.clip_vcc*, %struct.clip_vcc** %2, align 8
  %86 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.atmarp_entry* %84, %struct.clip_vcc* %85)
  br label %87

87:                                               ; preds = %83, %77, %60
  %88 = load %struct.atmarp_entry*, %struct.atmarp_entry** %3, align 8
  %89 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @netif_tx_unlock_bh(i32 %92)
  br label %94

94:                                               ; preds = %87, %11
  ret void
}

declare dso_local i32 @pr_crit(i8*, ...) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @neigh_update(%struct.TYPE_2__*, i32*, i32, i32, i32) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
