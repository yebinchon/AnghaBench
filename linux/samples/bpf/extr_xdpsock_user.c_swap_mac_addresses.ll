; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_swap_mac_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_swap_mac_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32, i32 }
%struct.ether_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @swap_mac_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_mac_addresses(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ether_header*, align 8
  %4 = alloca %struct.ether_addr*, align 8
  %5 = alloca %struct.ether_addr*, align 8
  %6 = alloca %struct.ether_addr, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ether_header*
  store %struct.ether_header* %8, %struct.ether_header** %3, align 8
  %9 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %10 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to %struct.ether_addr*
  store %struct.ether_addr* %11, %struct.ether_addr** %4, align 8
  %12 = load %struct.ether_header*, %struct.ether_header** %3, align 8
  %13 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.ether_addr*
  store %struct.ether_addr* %14, %struct.ether_addr** %5, align 8
  %15 = load %struct.ether_addr*, %struct.ether_addr** %4, align 8
  %16 = bitcast %struct.ether_addr* %6 to i8*
  %17 = bitcast %struct.ether_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.ether_addr*, %struct.ether_addr** %4, align 8
  %19 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %20 = bitcast %struct.ether_addr* %18 to i8*
  %21 = bitcast %struct.ether_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %23 = bitcast %struct.ether_addr* %22 to i8*
  %24 = bitcast %struct.ether_addr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
