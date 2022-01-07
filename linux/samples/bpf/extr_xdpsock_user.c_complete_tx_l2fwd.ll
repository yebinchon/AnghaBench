; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_complete_tx_l2fwd.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_complete_tx_l2fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket_info = type { i64, i32, %struct.xsk_umem_info*, i32 }
%struct.xsk_umem_info = type { i32, i32 }
%struct.pollfd = type { i32 }

@opt_need_wakeup = common dso_local global i32 0, align 4
@BATCH_SIZE = common dso_local global i64 0, align 8
@num_socks = common dso_local global i32 0, align 4
@opt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_socket_info*, %struct.pollfd*)* @complete_tx_l2fwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_tx_l2fwd(%struct.xsk_socket_info* %0, %struct.pollfd* %1) #0 {
  %3 = alloca %struct.xsk_socket_info*, align 8
  %4 = alloca %struct.pollfd*, align 8
  %5 = alloca %struct.xsk_umem_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xsk_socket_info* %0, %struct.xsk_socket_info** %3, align 8
  store %struct.pollfd* %1, %struct.pollfd** %4, align 8
  %12 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %13 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %12, i32 0, i32 2
  %14 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %13, align 8
  store %struct.xsk_umem_info* %14, %struct.xsk_umem_info** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %16 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %128

20:                                               ; preds = %2
  %21 = load i32, i32* @opt_need_wakeup, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %25 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %24, i32 0, i32 3
  %26 = call i64 @xsk_ring_prod__needs_wakeup(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %20
  %29 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %30 = call i32 @kick_tx(%struct.xsk_socket_info* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %33 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BATCH_SIZE, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @BATCH_SIZE, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %41 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i64 [ %38, %37 ], [ %42, %39 ]
  store i64 %44, i64* %9, align 8
  %45 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %5, align 8
  %46 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %45, i32 0, i32 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @xsk_ring_cons__peek(i32* %46, i64 %47, i64* %6)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %128

51:                                               ; preds = %43
  %52 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %5, align 8
  %53 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %52, i32 0, i32 1
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @xsk_ring_prod__reserve(i32* %53, i32 %54, i64* %7)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %77, %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 @exit_with_error(i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %5, align 8
  %69 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %68, i32 0, i32 1
  %70 = call i64 @xsk_ring_prod__needs_wakeup(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %74 = load i32, i32* @num_socks, align 4
  %75 = load i32, i32* @opt_timeout, align 4
  %76 = call i32 @poll(%struct.pollfd* %73, i32 %74, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %5, align 8
  %79 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %78, i32 0, i32 1
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @xsk_ring_prod__reserve(i32* %79, i32 %80, i64* %7)
  store i32 %81, i32* %11, align 4
  br label %56

82:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %101, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %5, align 8
  %89 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %6, align 8
  %92 = trunc i64 %90 to i32
  %93 = call i32* @xsk_ring_cons__comp_addr(i32* %89, i32 %92)
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %5, align 8
  %96 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %95, i32 0, i32 1
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %7, align 8
  %99 = trunc i64 %97 to i32
  %100 = call i32* @xsk_ring_prod__fill_addr(i32* %96, i32 %99)
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %83

104:                                              ; preds = %83
  %105 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %106 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %105, i32 0, i32 2
  %107 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %106, align 8
  %108 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %107, i32 0, i32 1
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @xsk_ring_prod__submit(i32* %108, i32 %109)
  %111 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %112 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %111, i32 0, i32 2
  %113 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %112, align 8
  %114 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @xsk_ring_cons__release(i32* %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %120 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %3, align 8
  %125 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = add i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %19, %104, %43
  ret void
}

declare dso_local i64 @xsk_ring_prod__needs_wakeup(i32*) #1

declare dso_local i32 @kick_tx(%struct.xsk_socket_info*) #1

declare dso_local i32 @xsk_ring_cons__peek(i32*, i64, i64*) #1

declare dso_local i32 @xsk_ring_prod__reserve(i32*, i32, i64*) #1

declare dso_local i32 @exit_with_error(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32* @xsk_ring_cons__comp_addr(i32*, i32) #1

declare dso_local i32* @xsk_ring_prod__fill_addr(i32*, i32) #1

declare dso_local i32 @xsk_ring_prod__submit(i32*, i32) #1

declare dso_local i32 @xsk_ring_cons__release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
