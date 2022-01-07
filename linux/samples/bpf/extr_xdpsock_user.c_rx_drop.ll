; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_rx_drop.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_rx_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket_info = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pollfd = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@BATCH_SIZE = common dso_local global i32 0, align 4
@num_socks = common dso_local global i32 0, align 4
@opt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_socket_info*, %struct.pollfd*)* @rx_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_drop(%struct.xsk_socket_info* %0, %struct.pollfd* %1) #0 {
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
  %15 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %14, i32 0, i32 1
  %16 = load i32, i32* @BATCH_SIZE, align 4
  %17 = call i32 @xsk_ring_cons__peek(i32* %15, i32 %16, i64* %7)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %22 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i64 @xsk_ring_prod__needs_wakeup(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %29 = load i32, i32* @num_socks, align 4
  %30 = load i32, i32* @opt_timeout, align 4
  %31 = call i32 @poll(%struct.pollfd* %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %20
  br label %132

33:                                               ; preds = %2
  %34 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %35 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @xsk_ring_prod__reserve(i32* %37, i32 %38, i64* %8)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %63, %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @exit_with_error(i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %53 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i64 @xsk_ring_prod__needs_wakeup(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %60 = load i32, i32* @num_socks, align 4
  %61 = load i32, i32* @opt_timeout, align 4
  %62 = call i32 @poll(%struct.pollfd* %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %65 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @xsk_ring_prod__reserve(i32* %67, i32 %68, i64* %8)
  store i32 %69, i32* %9, align 4
  br label %40

70:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %113, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %116

75:                                               ; preds = %71
  %76 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %77 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %76, i32 0, i32 1
  %78 = load i64, i64* %7, align 8
  %79 = call %struct.TYPE_4__* @xsk_ring_cons__rx_desc(i32* %77, i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %10, align 4
  %82 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %83 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %82, i32 0, i32 1
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  %86 = call %struct.TYPE_4__* @xsk_ring_cons__rx_desc(i32* %83, i64 %84)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %11, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @xsk_umem__extract_addr(i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @xsk_umem__add_offset_to_addr(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %94 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i8* @xsk_umem__get_data(i32 %97, i32 %98)
  store i8* %99, i8** %13, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @hex_dump(i8* %100, i64 %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %106 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %8, align 8
  %111 = trunc i64 %109 to i32
  %112 = call i32* @xsk_ring_prod__fill_addr(i32* %108, i32 %111)
  store i32 %104, i32* %112, align 4
  br label %113

113:                                              ; preds = %75
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %71

116:                                              ; preds = %71
  %117 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %118 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %117, i32 0, i32 2
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @xsk_ring_prod__submit(i32* %120, i32 %121)
  %123 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %124 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %123, i32 0, i32 1
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @xsk_ring_cons__release(i32* %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %129 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %116, %32
  ret void
}

declare dso_local i32 @xsk_ring_cons__peek(i32*, i32, i64*) #1

declare dso_local i64 @xsk_ring_prod__needs_wakeup(i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @xsk_ring_prod__reserve(i32*, i32, i64*) #1

declare dso_local i32 @exit_with_error(i32) #1

declare dso_local %struct.TYPE_4__* @xsk_ring_cons__rx_desc(i32*, i64) #1

declare dso_local i32 @xsk_umem__extract_addr(i32) #1

declare dso_local i32 @xsk_umem__add_offset_to_addr(i32) #1

declare dso_local i8* @xsk_umem__get_data(i32, i32) #1

declare dso_local i32 @hex_dump(i8*, i64, i32) #1

declare dso_local i32* @xsk_ring_prod__fill_addr(i32*, i32) #1

declare dso_local i32 @xsk_ring_prod__submit(i32*, i32) #1

declare dso_local i32 @xsk_ring_cons__release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
