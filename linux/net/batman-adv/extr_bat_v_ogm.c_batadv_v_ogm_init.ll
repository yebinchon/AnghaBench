; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32 }
%struct.batadv_ogm2_packet = type { i32, i32, i32, i32, i32 }

@BATADV_OGM2_HLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BATADV_OGM2 = common dso_local global i32 0, align 4
@BATADV_COMPAT_VERSION = common dso_local global i32 0, align 4
@BATADV_TTL = common dso_local global i32 0, align 4
@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@BATADV_THROUGHPUT_MAX_VALUE = common dso_local global i32 0, align 4
@batadv_v_ogm_send = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_v_ogm_init(%struct.batadv_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_ogm2_packet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  %7 = load i32, i32* @BATADV_OGM2_HLEN, align 4
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %9 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 4
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %12 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i8* @kzalloc(i32 %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %25 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.batadv_ogm2_packet*
  store %struct.batadv_ogm2_packet* %28, %struct.batadv_ogm2_packet** %4, align 8
  %29 = load i32, i32* @BATADV_OGM2, align 4
  %30 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %4, align 8
  %31 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @BATADV_COMPAT_VERSION, align 4
  %33 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %4, align 8
  %34 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @BATADV_TTL, align 4
  %36 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %4, align 8
  %37 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %39 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %4, align 8
  %40 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @BATADV_THROUGHPUT_MAX_VALUE, align 4
  %42 = call i32 @htonl(i32 %41)
  %43 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %4, align 8
  %44 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = call i32 @get_random_bytes(i32* %6, i32 4)
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %47 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @atomic_set(i32* %48, i32 %49)
  %51 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %52 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* @batadv_v_ogm_send, align 4
  %55 = call i32 @INIT_DELAYED_WORK(i32* %53, i32 %54)
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %57 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @mutex_init(i32* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %22, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
