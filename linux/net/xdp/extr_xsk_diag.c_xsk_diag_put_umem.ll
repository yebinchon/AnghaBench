; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_diag.c_xsk_diag_put_umem.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_diag.c_xsk_diag_put_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { %struct.xdp_umem* }
%struct.xdp_umem = type { i64, i64, i32, i64, i32, %struct.TYPE_2__*, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xdp_diag_umem = type { i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@XDP_DU_F_ZEROCOPY = common dso_local global i32 0, align 4
@XDP_DIAG_UMEM = common dso_local global i32 0, align 4
@XDP_DIAG_UMEM_FILL_RING = common dso_local global i32 0, align 4
@XDP_DIAG_UMEM_COMPLETION_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_sock*, %struct.sk_buff*)* @xsk_diag_put_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_diag_put_umem(%struct.xdp_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca %struct.xdp_diag_umem, align 8
  %8 = alloca i32, align 4
  store %struct.xdp_sock* %0, %struct.xdp_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %10 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %9, i32 0, i32 0
  %11 = load %struct.xdp_umem*, %struct.xdp_umem** %10, align 8
  store %struct.xdp_umem* %11, %struct.xdp_umem** %6, align 8
  %12 = bitcast %struct.xdp_diag_umem* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %14 = icmp ne %struct.xdp_umem* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

16:                                               ; preds = %2
  %17 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %18 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 8
  store i32 %19, i32* %20, align 8
  %21 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %22 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 7
  store i32 %23, i32* %24, align 4
  %25 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %26 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 6
  store i32 %27, i32* %28, align 8
  %29 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %30 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %33 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 5
  store i64 %35, i64* %36, align 8
  %37 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %38 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 4
  store i64 %39, i64* %40, align 8
  %41 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %42 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %41, i32 0, i32 5
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %16
  %46 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %47 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %16
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ 0, %51 ]
  %54 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %56 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %61 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i32, i32* @XDP_DU_F_ZEROCOPY, align 4
  %66 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %52
  %70 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %71 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %70, i32 0, i32 2
  %72 = call i32 @refcount_read(i32* %71)
  %73 = getelementptr inbounds %struct.xdp_diag_umem, %struct.xdp_diag_umem* %7, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load i32, i32* @XDP_DIAG_UMEM, align 4
  %76 = call i32 @nla_put(%struct.sk_buff* %74, i32 %75, i32 48, %struct.xdp_diag_umem* %7)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %69
  %80 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %81 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %86 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @XDP_DIAG_UMEM_FILL_RING, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @xsk_diag_put_ring(i64 %87, i32 %88, %struct.sk_buff* %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %84, %79, %69
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %91
  %95 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %96 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %101 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @XDP_DIAG_UMEM_COMPLETION_RING, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @xsk_diag_put_ring(i64 %102, i32 %103, %struct.sk_buff* %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %99, %94, %91
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @refcount_read(i32*) #2

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.xdp_diag_umem*) #2

declare dso_local i32 @xsk_diag_put_ring(i64, i32, %struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
