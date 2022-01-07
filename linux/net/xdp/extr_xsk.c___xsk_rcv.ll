; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c___xsk_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c___xsk_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.xdp_buff = type { i8*, i8* }

@XDP_PACKET_HEADROOM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_sock*, %struct.xdp_buff*, i32)* @__xsk_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xsk_rcv(%struct.xdp_sock* %0, %struct.xdp_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_sock*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xdp_sock* %0, %struct.xdp_sock** %5, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %15 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %20 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %25 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @xskq_peek_addr(i32 %23, i32* %9, %struct.TYPE_4__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %32 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XDP_PACKET_HEADROOM, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sgt i32 %30, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29, %3
  %40 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %41 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %116

46:                                               ; preds = %29
  %47 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %48 = call i32 @xdp_data_meta_unsupported(%struct.xdp_buff* %47)
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %53 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %69

55:                                               ; preds = %46
  %56 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %57 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %11, align 8
  %59 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %60 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %63 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %61 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %55, %51
  %70 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %71 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @xsk_umem_adjust_offset(%struct.TYPE_4__* %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %77 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @__xsk_rcv_memcpy(%struct.TYPE_4__* %78, i32 %79, i8* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %88 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @xsk_umem_adjust_offset(%struct.TYPE_4__* %89, i32 %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %94 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @xskq_produce_batch_desc(i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %69
  %102 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %103 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @xskq_discard_addr(i32 %106)
  %108 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %109 = call i32 @xdp_return_buff(%struct.xdp_buff* %108)
  store i32 0, i32* %4, align 4
  br label %116

110:                                              ; preds = %69
  %111 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %112 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %110, %101, %39
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @xskq_peek_addr(i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xdp_data_meta_unsupported(%struct.xdp_buff*) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @__xsk_rcv_memcpy(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @xskq_produce_batch_desc(i32, i32, i32) #1

declare dso_local i32 @xskq_discard_addr(i32) #1

declare dso_local i32 @xdp_return_buff(%struct.xdp_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
