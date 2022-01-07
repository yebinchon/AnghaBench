; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_call_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_call_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tvlv_handler = type { i32 (%struct.batadv_priv.0*, i32*, i32*, i8*, i32)*, i32, i32 (%struct.batadv_priv.1*, %struct.batadv_orig_node*, i32, i8*, i32)* }
%struct.batadv_priv.0 = type opaque
%struct.batadv_priv.1 = type opaque
%struct.batadv_orig_node = type opaque
%struct.batadv_orig_node.2 = type { i32 }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@BATADV_TVLV_HANDLER_OGM_CALLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_tvlv_handler*, i32, %struct.batadv_orig_node.2*, i32*, i32*, i8*, i32)* @batadv_tvlv_call_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tvlv_call_handler(%struct.batadv_priv* %0, %struct.batadv_tvlv_handler* %1, i32 %2, %struct.batadv_orig_node.2* %3, i32* %4, i32* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_priv*, align 8
  %11 = alloca %struct.batadv_tvlv_handler*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.batadv_orig_node.2*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %10, align 8
  store %struct.batadv_tvlv_handler* %1, %struct.batadv_tvlv_handler** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.batadv_orig_node.2* %3, %struct.batadv_orig_node.2** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load %struct.batadv_tvlv_handler*, %struct.batadv_tvlv_handler** %11, align 8
  %19 = icmp ne %struct.batadv_tvlv_handler* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %21, i32* %9, align 4
  br label %84

22:                                               ; preds = %8
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load %struct.batadv_tvlv_handler*, %struct.batadv_tvlv_handler** %11, align 8
  %27 = getelementptr inbounds %struct.batadv_tvlv_handler, %struct.batadv_tvlv_handler* %26, i32 0, i32 2
  %28 = load i32 (%struct.batadv_priv.1*, %struct.batadv_orig_node*, i32, i8*, i32)*, i32 (%struct.batadv_priv.1*, %struct.batadv_orig_node*, i32, i8*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.batadv_priv.1*, %struct.batadv_orig_node*, i32, i8*, i32)* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %31, i32* %9, align 4
  br label %84

32:                                               ; preds = %25
  %33 = load %struct.batadv_orig_node.2*, %struct.batadv_orig_node.2** %13, align 8
  %34 = icmp ne %struct.batadv_orig_node.2* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %36, i32* %9, align 4
  br label %84

37:                                               ; preds = %32
  %38 = load %struct.batadv_tvlv_handler*, %struct.batadv_tvlv_handler** %11, align 8
  %39 = getelementptr inbounds %struct.batadv_tvlv_handler, %struct.batadv_tvlv_handler* %38, i32 0, i32 2
  %40 = load i32 (%struct.batadv_priv.1*, %struct.batadv_orig_node*, i32, i8*, i32)*, i32 (%struct.batadv_priv.1*, %struct.batadv_orig_node*, i32, i8*, i32)** %39, align 8
  %41 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %42 = bitcast %struct.batadv_priv* %41 to %struct.batadv_priv.1*
  %43 = load %struct.batadv_orig_node.2*, %struct.batadv_orig_node.2** %13, align 8
  %44 = bitcast %struct.batadv_orig_node.2* %43 to %struct.batadv_orig_node*
  %45 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 %40(%struct.batadv_priv.1* %42, %struct.batadv_orig_node* %44, i32 %45, i8* %46, i32 %47)
  %49 = load i32, i32* @BATADV_TVLV_HANDLER_OGM_CALLED, align 4
  %50 = load %struct.batadv_tvlv_handler*, %struct.batadv_tvlv_handler** %11, align 8
  %51 = getelementptr inbounds %struct.batadv_tvlv_handler, %struct.batadv_tvlv_handler* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %82

54:                                               ; preds = %22
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %58, i32* %9, align 4
  br label %84

59:                                               ; preds = %54
  %60 = load i32*, i32** %15, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %63, i32* %9, align 4
  br label %84

64:                                               ; preds = %59
  %65 = load %struct.batadv_tvlv_handler*, %struct.batadv_tvlv_handler** %11, align 8
  %66 = getelementptr inbounds %struct.batadv_tvlv_handler, %struct.batadv_tvlv_handler* %65, i32 0, i32 0
  %67 = load i32 (%struct.batadv_priv.0*, i32*, i32*, i8*, i32)*, i32 (%struct.batadv_priv.0*, i32*, i32*, i8*, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.batadv_priv.0*, i32*, i32*, i8*, i32)* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %70, i32* %9, align 4
  br label %84

71:                                               ; preds = %64
  %72 = load %struct.batadv_tvlv_handler*, %struct.batadv_tvlv_handler** %11, align 8
  %73 = getelementptr inbounds %struct.batadv_tvlv_handler, %struct.batadv_tvlv_handler* %72, i32 0, i32 0
  %74 = load i32 (%struct.batadv_priv.0*, i32*, i32*, i8*, i32)*, i32 (%struct.batadv_priv.0*, i32*, i32*, i8*, i32)** %73, align 8
  %75 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %76 = bitcast %struct.batadv_priv* %75 to %struct.batadv_priv.0*
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load i32, i32* %17, align 4
  %81 = call i32 %74(%struct.batadv_priv.0* %76, i32* %77, i32* %78, i8* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  br label %84

82:                                               ; preds = %37
  %83 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %71, %69, %62, %57, %35, %30, %20
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
