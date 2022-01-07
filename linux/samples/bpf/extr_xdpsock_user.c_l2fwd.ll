; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_l2fwd.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_l2fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket_info = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pollfd = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@BATCH_SIZE = common dso_local global i32 0, align 4
@num_socks = common dso_local global i32 0, align 4
@opt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_socket_info*, %struct.pollfd*)* @l2fwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2fwd(%struct.xsk_socket_info* %0, %struct.pollfd* %1) #0 {
  %3 = alloca %struct.xsk_socket_info*, align 8
  %4 = alloca %struct.pollfd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.xsk_socket_info* %0, %struct.xsk_socket_info** %3, align 8
  store %struct.pollfd* %1, %struct.pollfd** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %15 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %16 = call i32 @complete_tx_l2fwd(%struct.xsk_socket_info* %14, %struct.pollfd* %15)
  %17 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %18 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %17, i32 0, i32 2
  %19 = load i32, i32* @BATCH_SIZE, align 4
  %20 = call i32 @xsk_ring_cons__peek(i32* %18, i32 %19, i64* %7)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %2
  %24 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %25 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i64 @xsk_ring_prod__needs_wakeup(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %32 = load i32, i32* @num_socks, align 4
  %33 = load i32, i32* @opt_timeout, align 4
  %34 = call i32 @poll(%struct.pollfd* %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %23
  br label %135

36:                                               ; preds = %2
  %37 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %38 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %37, i32 0, i32 3
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @xsk_ring_prod__reserve(i32* %38, i32 %39, i64* %8)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %60, %36
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @exit_with_error(i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %54 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %53, i32 0, i32 3
  %55 = call i64 @xsk_ring_prod__needs_wakeup(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %59 = call i32 @kick_tx(%struct.xsk_socket_info* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %62 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %61, i32 0, i32 3
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @xsk_ring_prod__reserve(i32* %62, i32 %63, i64* %8)
  store i32 %64, i32* %9, align 4
  br label %41

65:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %113, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %66
  %71 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %72 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %71, i32 0, i32 2
  %73 = load i64, i64* %7, align 8
  %74 = call %struct.TYPE_6__* @xsk_ring_cons__rx_desc(i32* %72, i64 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %10, align 4
  %77 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %78 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %77, i32 0, i32 2
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %7, align 8
  %81 = call %struct.TYPE_6__* @xsk_ring_cons__rx_desc(i32* %78, i64 %79)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %11, align 8
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @xsk_umem__add_offset_to_addr(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %88 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %87, i32 0, i32 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i8* @xsk_umem__get_data(i32 %91, i32 %92)
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @swap_mac_addresses(i8* %94)
  %96 = load i8*, i8** %13, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @hex_dump(i8* %96, i64 %97, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %102 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %101, i32 0, i32 3
  %103 = load i64, i64* %8, align 8
  %104 = call %struct.TYPE_5__* @xsk_ring_prod__tx_desc(i32* %102, i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %108 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %107, i32 0, i32 3
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %8, align 8
  %111 = call %struct.TYPE_5__* @xsk_ring_prod__tx_desc(i32* %108, i64 %109)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i64 %106, i64* %112, align 8
  br label %113

113:                                              ; preds = %70
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %66

116:                                              ; preds = %66
  %117 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %118 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %117, i32 0, i32 3
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @xsk_ring_prod__submit(i32* %118, i32 %119)
  %121 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %122 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %121, i32 0, i32 2
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @xsk_ring_cons__release(i32* %122, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %127 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %132 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %116, %35
  ret void
}

declare dso_local i32 @complete_tx_l2fwd(%struct.xsk_socket_info*, %struct.pollfd*) #1

declare dso_local i32 @xsk_ring_cons__peek(i32*, i32, i64*) #1

declare dso_local i64 @xsk_ring_prod__needs_wakeup(i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @xsk_ring_prod__reserve(i32*, i32, i64*) #1

declare dso_local i32 @exit_with_error(i32) #1

declare dso_local i32 @kick_tx(%struct.xsk_socket_info*) #1

declare dso_local %struct.TYPE_6__* @xsk_ring_cons__rx_desc(i32*, i64) #1

declare dso_local i32 @xsk_umem__add_offset_to_addr(i32) #1

declare dso_local i8* @xsk_umem__get_data(i32, i32) #1

declare dso_local i32 @swap_mac_addresses(i8*) #1

declare dso_local i32 @hex_dump(i8*, i64, i32) #1

declare dso_local %struct.TYPE_5__* @xsk_ring_prod__tx_desc(i32*, i64) #1

declare dso_local i32 @xsk_ring_prod__submit(i32*, i32) #1

declare dso_local i32 @xsk_ring_cons__release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
