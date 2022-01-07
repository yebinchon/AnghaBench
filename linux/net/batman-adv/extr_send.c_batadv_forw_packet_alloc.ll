; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_forw_packet = type { i64, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*, i32*, %struct.sk_buff*, i32, i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"batman\00", align 1
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s queue is full\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_forw_packet* @batadv_forw_packet_alloc(%struct.batadv_hard_iface* %0, %struct.batadv_hard_iface* %1, i32* %2, %struct.batadv_priv* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.batadv_forw_packet*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.batadv_priv*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.batadv_forw_packet*, align 8
  %13 = alloca i8*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %7, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.batadv_priv* %3, %struct.batadv_priv** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %5
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @batadv_atomic_dec_not_zero(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %23 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %22, i32 0, i32 1
  %24 = icmp eq i32* %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %29 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %28, i32 0, i32 0
  %30 = icmp eq i32* %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %34 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @batadv_dbg(i32 %33, %struct.batadv_priv* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  store %struct.batadv_forw_packet* null, %struct.batadv_forw_packet** %6, align 8
  br label %86

37:                                               ; preds = %16, %5
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.batadv_forw_packet* @kmalloc(i32 48, i32 %38)
  store %struct.batadv_forw_packet* %39, %struct.batadv_forw_packet** %12, align 8
  %40 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %41 = icmp ne %struct.batadv_forw_packet* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %79

43:                                               ; preds = %37
  %44 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %45 = icmp ne %struct.batadv_hard_iface* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %48 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %47, i32 0, i32 0
  %49 = call i32 @kref_get(i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %52 = icmp ne %struct.batadv_hard_iface* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %55 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %54, i32 0, i32 0
  %56 = call i32 @kref_get(i32* %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %59 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %58, i32 0, i32 6
  %60 = call i32 @INIT_HLIST_NODE(i32* %59)
  %61 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %62 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %61, i32 0, i32 5
  %63 = call i32 @INIT_HLIST_NODE(i32* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %66 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %65, i32 0, i32 4
  store %struct.sk_buff* %64, %struct.sk_buff** %66, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %69 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %68, i32 0, i32 3
  store i32* %67, i32** %69, align 8
  %70 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %71 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %72 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %71, i32 0, i32 2
  store %struct.batadv_hard_iface* %70, %struct.batadv_hard_iface** %72, align 8
  %73 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %74 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %75 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %74, i32 0, i32 1
  store %struct.batadv_hard_iface* %73, %struct.batadv_hard_iface** %75, align 8
  %76 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  %77 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %12, align 8
  store %struct.batadv_forw_packet* %78, %struct.batadv_forw_packet** %6, align 8
  br label %86

79:                                               ; preds = %42
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @atomic_inc(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  store %struct.batadv_forw_packet* null, %struct.batadv_forw_packet** %6, align 8
  br label %86

86:                                               ; preds = %85, %57, %32
  %87 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %6, align 8
  ret %struct.batadv_forw_packet* %87
}

declare dso_local i32 @batadv_atomic_dec_not_zero(i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i8*) #1

declare dso_local %struct.batadv_forw_packet* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
