; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.list_head = type { i32 }
%struct.anon = type { i32*, i32 }
%struct.TYPE_2__ = type { %struct.list_head }

@DCCPF_SEQUENCE_WINDOW = common dso_local global i32 0, align 4
@sysctl_dccp_sequence_window = common dso_local global i32 0, align 4
@DCCPF_SHORT_SEQNOS = common dso_local global i32 0, align 4
@DCCPF_ECN_INCAPABLE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@sysctl_dccp_tx_ccid = common dso_local global i32 0, align 4
@sysctl_dccp_rx_ccid = common dso_local global i32 0, align 4
@DCCPF_CCID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_feat_init(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon, align 8
  %9 = alloca %struct.anon, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.list_head* %12, %struct.list_head** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.list_head*, %struct.list_head** %4, align 8
  %14 = load i32, i32* @DCCPF_SEQUENCE_WINDOW, align 4
  %15 = load i32, i32* @sysctl_dccp_sequence_window, align 4
  %16 = call i32 @__feat_register_nn(%struct.list_head* %13, i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %100

21:                                               ; preds = %1
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = load i32, i32* @DCCPF_SHORT_SEQNOS, align 4
  %24 = call i32 @__feat_register_sp(%struct.list_head* %22, i32 %23, i32 1, i32 1, i32* %6, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %100

29:                                               ; preds = %21
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = load i32, i32* @DCCPF_ECN_INCAPABLE, align 4
  %32 = call i32 @__feat_register_sp(%struct.list_head* %30, i32 %31, i32 1, i32 1, i32* %5, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %100

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %40 = call i64 @ccid_get_builtin_ccids(i32** %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOBUFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %100

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %48 = call i64 @ccid_get_builtin_ccids(i32** %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %100

56:                                               ; preds = %45
  %57 = load i32, i32* @sysctl_dccp_tx_ccid, align 4
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dccp_feat_prefer(i32 %57, i32* %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32, i32* @sysctl_dccp_rx_ccid, align 4
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dccp_feat_prefer(i32 %65, i32* %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64, %56
  br label %92

73:                                               ; preds = %64
  %74 = load %struct.list_head*, %struct.list_head** %4, align 8
  %75 = load i32, i32* @DCCPF_CCID, align 4
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @__feat_register_sp(%struct.list_head* %74, i32 %75, i32 1, i32 0, i32* %77, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %92

84:                                               ; preds = %73
  %85 = load %struct.list_head*, %struct.list_head** %4, align 8
  %86 = load i32, i32* @DCCPF_CCID, align 4
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @__feat_register_sp(%struct.list_head* %85, i32 %86, i32 0, i32 0, i32* %88, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %84, %83, %72
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %50, %42, %35, %27, %19
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @__feat_register_nn(%struct.list_head*, i32, i32, i32) #1

declare dso_local i32 @__feat_register_sp(%struct.list_head*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @ccid_get_builtin_ccids(i32**, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dccp_feat_prefer(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
