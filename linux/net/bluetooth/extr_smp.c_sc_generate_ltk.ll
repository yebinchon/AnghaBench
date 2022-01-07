; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_generate_ltk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_generate_ltk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hci_conn* }
%struct.hci_conn = type { i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.link_key = type { i64, i32 }

@__const.sc_generate_ltk.brle = private unnamed_addr constant [4 x i32] [i32 101, i32 108, i32 114, i32 98], align 16
@.str = private unnamed_addr constant [34 x i8] c"no Link Key found to generate LTK\00", align 1
@HCI_LK_DEBUG_COMBINATION = common dso_local global i64 0, align 8
@SMP_FLAG_DEBUG_KEY = common dso_local global i32 0, align 4
@SMP_FLAG_CT2 = common dso_local global i32 0, align 4
@__const.sc_generate_ltk.tmp2 = private unnamed_addr constant [4 x i32] [i32 50, i32 112, i32 109, i32 116], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smp_chan*)* @sc_generate_ltk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_generate_ltk(%struct.smp_chan* %0) #0 {
  %2 = alloca %struct.smp_chan*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.link_key*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca [4 x i32], align 16
  store %struct.smp_chan* %0, %struct.smp_chan** %2, align 8
  %9 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @__const.sc_generate_ltk.brle to i8*), i64 16, i1 false)
  %10 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %11 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  store %struct.hci_conn* %14, %struct.hci_conn** %4, align 8
  %15 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 1
  %17 = load %struct.hci_dev*, %struct.hci_dev** %16, align 8
  store %struct.hci_dev* %17, %struct.hci_dev** %5, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %20 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %19, i32 0, i32 0
  %21 = call %struct.link_key* @hci_find_link_key(%struct.hci_dev* %18, i32* %20)
  store %struct.link_key* %21, %struct.link_key** %6, align 8
  %22 = load %struct.link_key*, %struct.link_key** %6, align 8
  %23 = icmp ne %struct.link_key* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %26 = call i32 @bt_dev_err(%struct.hci_dev* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %98

27:                                               ; preds = %1
  %28 = load %struct.link_key*, %struct.link_key** %6, align 8
  %29 = getelementptr inbounds %struct.link_key, %struct.link_key* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HCI_LK_DEBUG_COMBINATION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @SMP_FLAG_DEBUG_KEY, align 4
  %35 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %36 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %35, i32 0, i32 2
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* @SMP_FLAG_CT2, align 4
  %40 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %41 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %40, i32 0, i32 2
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = bitcast [16 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 64, i1 false)
  %46 = bitcast i8* %45 to <{ i32, i32, i32, i32, [12 x i32] }>*
  %47 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %46, i32 0, i32 0
  store i32 50, i32* %47, align 16
  %48 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %46, i32 0, i32 1
  store i32 112, i32* %48, align 4
  %49 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %46, i32 0, i32 2
  store i32 109, i32* %49, align 8
  %50 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %46, i32 0, i32 3
  store i32 116, i32* %50, align 4
  %51 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %52 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.link_key*, %struct.link_key** %6, align 8
  %55 = getelementptr inbounds %struct.link_key, %struct.link_key* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %58 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %59 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @smp_h7(i32 %53, i32 %56, i32* %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %98

64:                                               ; preds = %44
  br label %81

65:                                               ; preds = %38
  %66 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 16 bitcast ([4 x i32]* @__const.sc_generate_ltk.tmp2 to i8*), i64 16, i1 false)
  %67 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %68 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.link_key*, %struct.link_key** %6, align 8
  %71 = getelementptr inbounds %struct.link_key, %struct.link_key* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %74 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %75 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @smp_h6(i32 %69, i32 %72, i32* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %98

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %83 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %86 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %89 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %90 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @smp_h6(i32 %84, i32 %87, i32* %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %98

95:                                               ; preds = %81
  %96 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %97 = call i32 @sc_add_ltk(%struct.smp_chan* %96)
  br label %98

98:                                               ; preds = %95, %94, %79, %63, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.link_key* @hci_find_link_key(%struct.hci_dev*, i32*) #2

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @smp_h7(i32, i32, i32*, i32) #2

declare dso_local i64 @smp_h6(i32, i32, i32*, i32) #2

declare dso_local i32 @sc_add_ltk(%struct.smp_chan*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
