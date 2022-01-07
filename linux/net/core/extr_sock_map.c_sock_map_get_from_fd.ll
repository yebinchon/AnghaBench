; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_map_get_from_fd.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_map_get_from_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.bpf_map = type { i32 }
%struct.fd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_map_get_from_fd(%union.bpf_attr* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.bpf_attr*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_map*, align 8
  %8 = alloca %struct.fd, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %11 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %12 = bitcast %union.bpf_attr* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @fdget(i32 %14)
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.fd* %8 to i8*
  %18 = bitcast %struct.fd* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.bpf_map* @__bpf_map_get(i32 %20)
  store %struct.bpf_map* %21, %struct.bpf_map** %7, align 8
  %22 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %23 = call i64 @IS_ERR(%struct.bpf_map* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.bpf_map* %26)
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %31 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %32 = bitcast %union.bpf_attr* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sock_map_prog_update(%struct.bpf_map* %29, %struct.bpf_prog* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fdput(i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %28, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.bpf_map* @__bpf_map_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_map*) #1

declare dso_local i32 @sock_map_prog_update(%struct.bpf_map*, %struct.bpf_prog*, i32) #1

declare dso_local i32 @fdput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
