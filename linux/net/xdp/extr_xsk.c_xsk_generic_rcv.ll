; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_generic_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_generic_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { i64, i64, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.xdp_buff = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsk_generic_rcv(%struct.xdp_sock* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_sock*, align 8
  %5 = alloca %struct.xdp_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.xdp_sock* %0, %struct.xdp_sock** %4, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %5, align 8
  %12 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %13 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %16 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %20 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %23 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %27 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %26, i32 0, i32 6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %32 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %35 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %38 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %36, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %2
  %44 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %45 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %48 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43, %2
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %141

56:                                               ; preds = %43
  %57 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %58 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %57, i32 0, i32 6
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %63 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %62, i32 0, i32 6
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @xskq_peek_addr(i32 %61, i64* %10, %struct.TYPE_7__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %70 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %69, i32 0, i32 6
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %75 = sub nsw i64 %73, %74
  %76 = icmp sgt i64 %68, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67, %56
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %136

80:                                               ; preds = %67
  %81 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %82 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %81, i32 0, i32 6
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @xsk_umem_adjust_offset(%struct.TYPE_7__* %83, i64 %84, i64 %85)
  store i64 %86, i64* %10, align 8
  %87 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %88 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %87, i32 0, i32 6
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i8* @xdp_umem_get_data(%struct.TYPE_7__* %89, i64 %90)
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %94 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %6, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @memcpy(i8* %92, i64 %95, i64 %98)
  %100 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %101 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %100, i32 0, i32 6
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @xsk_umem_adjust_offset(%struct.TYPE_7__* %102, i64 %103, i64 %104)
  store i64 %105, i64* %10, align 8
  %106 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %107 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @xskq_produce_batch_desc(i32 %108, i64 %109, i64 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %80
  br label %136

115:                                              ; preds = %80
  %116 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %117 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %116, i32 0, i32 6
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @xskq_discard_addr(i32 %120)
  %122 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %123 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @xskq_produce_flush_desc(i32 %124)
  %126 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %127 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %126, i32 0, i32 2
  %128 = call i32 @spin_unlock_bh(i32* %127)
  %129 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %130 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %131, align 8
  %133 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %134 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %133, i32 0, i32 4
  %135 = call i32 %132(%struct.TYPE_8__* %134)
  store i32 0, i32* %3, align 4
  br label %146

136:                                              ; preds = %114, %77
  %137 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %138 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %136, %53
  %142 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %143 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %142, i32 0, i32 2
  %144 = call i32 @spin_unlock_bh(i32* %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %141, %115
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xskq_peek_addr(i32, i64*, %struct.TYPE_7__*) #1

declare dso_local i64 @xsk_umem_adjust_offset(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i8* @xdp_umem_get_data(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @xskq_produce_batch_desc(i32, i64, i64) #1

declare dso_local i32 @xskq_discard_addr(i32) #1

declare dso_local i32 @xskq_produce_flush_desc(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
