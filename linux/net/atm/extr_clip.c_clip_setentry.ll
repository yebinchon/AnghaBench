; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_setentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_setentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i64 }
%struct.neighbour = type { i32 }
%struct.atmarp_entry = type { i32 }
%struct.clip_vcc = type { %struct.atmarp_entry* }
%struct.rtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@clip_push = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"non-CLIP VCC\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"hiding hidden ATMARP entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"remove\0A\00", align 1
@init_net = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"add\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"update\0A\00", align 1
@llc_oui = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @clip_setentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_setentry(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.neighbour*, align 8
  %7 = alloca %struct.atmarp_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clip_vcc*, align 8
  %10 = alloca %struct.rtable*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @clip_push, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EBADF, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %22 = call %struct.clip_vcc* @CLIP_VCC(%struct.atm_vcc* %21)
  store %struct.clip_vcc* %22, %struct.clip_vcc** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load %struct.clip_vcc*, %struct.clip_vcc** %9, align 8
  %27 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %26, i32 0, i32 0
  %28 = load %struct.atmarp_entry*, %struct.atmarp_entry** %27, align 8
  %29 = icmp ne %struct.atmarp_entry* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

32:                                               ; preds = %25
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.clip_vcc*, %struct.clip_vcc** %9, align 8
  %35 = call i32 @unlink_clip_vcc(%struct.clip_vcc* %34)
  store i32 0, i32* %3, align 4
  br label %92

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.rtable* @ip_route_output(i32* @init_net, i32 %37, i32 0, i32 1, i32 0)
  store %struct.rtable* %38, %struct.rtable** %10, align 8
  %39 = load %struct.rtable*, %struct.rtable** %10, align 8
  %40 = call i64 @IS_ERR(%struct.rtable* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.rtable*, %struct.rtable** %10, align 8
  %44 = call i32 @PTR_ERR(%struct.rtable* %43)
  store i32 %44, i32* %3, align 4
  br label %92

45:                                               ; preds = %36
  %46 = load %struct.rtable*, %struct.rtable** %10, align 8
  %47 = getelementptr inbounds %struct.rtable, %struct.rtable* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.neighbour* @__neigh_lookup(i32* @arp_tbl, i32* %5, i32 %49, i32 1)
  store %struct.neighbour* %50, %struct.neighbour** %6, align 8
  %51 = load %struct.rtable*, %struct.rtable** %10, align 8
  %52 = call i32 @ip_rt_put(%struct.rtable* %51)
  %53 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %54 = icmp ne %struct.neighbour* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %92

58:                                               ; preds = %45
  %59 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %60 = call %struct.atmarp_entry* @neighbour_priv(%struct.neighbour* %59)
  store %struct.atmarp_entry* %60, %struct.atmarp_entry** %7, align 8
  %61 = load %struct.atmarp_entry*, %struct.atmarp_entry** %7, align 8
  %62 = load %struct.clip_vcc*, %struct.clip_vcc** %9, align 8
  %63 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %62, i32 0, i32 0
  %64 = load %struct.atmarp_entry*, %struct.atmarp_entry** %63, align 8
  %65 = icmp ne %struct.atmarp_entry* %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load %struct.clip_vcc*, %struct.clip_vcc** %9, align 8
  %68 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %67, i32 0, i32 0
  %69 = load %struct.atmarp_entry*, %struct.atmarp_entry** %68, align 8
  %70 = icmp ne %struct.atmarp_entry* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %77

73:                                               ; preds = %66
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.clip_vcc*, %struct.clip_vcc** %9, align 8
  %76 = call i32 @unlink_clip_vcc(%struct.clip_vcc* %75)
  br label %77

77:                                               ; preds = %73, %71
  %78 = load %struct.clip_vcc*, %struct.clip_vcc** %9, align 8
  %79 = load %struct.atmarp_entry*, %struct.atmarp_entry** %7, align 8
  %80 = call i32 @link_vcc(%struct.clip_vcc* %78, %struct.atmarp_entry* %79)
  br label %81

81:                                               ; preds = %77, %58
  %82 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %83 = load i32, i32* @llc_oui, align 4
  %84 = load i32, i32* @NUD_PERMANENT, align 4
  %85 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %86 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @neigh_update(%struct.neighbour* %82, i32 %83, i32 %84, i32 %87, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %90 = call i32 @neigh_release(%struct.neighbour* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %81, %55, %42, %32, %30, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.clip_vcc* @CLIP_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @unlink_clip_vcc(%struct.clip_vcc*) #1

declare dso_local %struct.rtable* @ip_route_output(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local %struct.neighbour* @__neigh_lookup(i32*, i32*, i32, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.atmarp_entry* @neighbour_priv(%struct.neighbour*) #1

declare dso_local i32 @link_vcc(%struct.clip_vcc*, %struct.atmarp_entry*) #1

declare dso_local i32 @neigh_update(%struct.neighbour*, i32, i32, i32, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
