; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_setup_xdp_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_setup_xdp_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsk_socket*)* @xsk_setup_xdp_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_setup_xdp_prog(%struct.xsk_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xsk_socket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.xsk_socket* %0, %struct.xsk_socket** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %7 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %10 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bpf_get_link_xdp_id(i32 %8, i64* %4, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %18
  %22 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %23 = call i32 @xsk_create_bpf_maps(%struct.xsk_socket* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %30 = call i32 @xsk_load_xdp_prog(%struct.xsk_socket* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %35 = call i32 @xsk_delete_bpf_maps(%struct.xsk_socket* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %68

37:                                               ; preds = %28
  br label %54

38:                                               ; preds = %18
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @bpf_prog_get_fd_by_id(i64 %39)
  %41 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %42 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %44 = call i32 @xsk_lookup_bpf_maps(%struct.xsk_socket* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %49 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %68

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %56 = call i32 @xsk_set_bpf_maps(%struct.xsk_socket* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %61 = call i32 @xsk_delete_bpf_maps(%struct.xsk_socket* %60)
  %62 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %63 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %59, %47, %33, %26, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @bpf_get_link_xdp_id(i32, i64*, i32) #1

declare dso_local i32 @xsk_create_bpf_maps(%struct.xsk_socket*) #1

declare dso_local i32 @xsk_load_xdp_prog(%struct.xsk_socket*) #1

declare dso_local i32 @xsk_delete_bpf_maps(%struct.xsk_socket*) #1

declare dso_local i32 @bpf_prog_get_fd_by_id(i64) #1

declare dso_local i32 @xsk_lookup_bpf_maps(%struct.xsk_socket*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @xsk_set_bpf_maps(%struct.xsk_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
