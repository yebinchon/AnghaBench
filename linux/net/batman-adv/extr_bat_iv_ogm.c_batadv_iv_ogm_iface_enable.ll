; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_iface_enable.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_iface_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.batadv_ogm_packet = type { i32, i32, i64, i32, i32, i32 }

@BATADV_OGM_HLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BATADV_IV_OGM = common dso_local global i32 0, align 4
@BATADV_COMPAT_VERSION = common dso_local global i32 0, align 4
@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@BATADV_TQ_MAX_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_hard_iface*)* @batadv_iv_ogm_iface_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_ogm_iface_enable(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_hard_iface*, align 8
  %4 = alloca %struct.batadv_ogm_packet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %3, align 8
  %7 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %8 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = call i32 @get_random_bytes(i32* %6, i32 4)
  %12 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %13 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @atomic_set(i32* %14, i32 %15)
  %17 = load i32, i32* @BATADV_OGM_HLEN, align 4
  %18 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %19 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %22 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %31 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %1
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %39 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %42, %struct.batadv_ogm_packet** %4, align 8
  %43 = load i32, i32* @BATADV_IV_OGM, align 4
  %44 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %4, align 8
  %45 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @BATADV_COMPAT_VERSION, align 4
  %47 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %4, align 8
  %48 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %4, align 8
  %50 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %49, i32 0, i32 0
  store i32 2, i32* %50, align 8
  %51 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %52 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %4, align 8
  %53 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %4, align 8
  %55 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @BATADV_TQ_MAX_VALUE, align 4
  %57 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %4, align 8
  %58 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %60 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %36, %29
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
