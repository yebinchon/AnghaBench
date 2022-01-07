; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_fd_sk_storage_lookup_elem.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_fd_sk_storage_lookup_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_sk_storage_data = type { i8* }
%struct.socket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_map*, i8*)* @bpf_fd_sk_storage_lookup_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bpf_fd_sk_storage_lookup_elem(%struct.bpf_map* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_sk_storage_data*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.socket* @sockfd_lookup(i32 %13, i32* %9)
  store %struct.socket* %14, %struct.socket** %7, align 8
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = icmp ne %struct.socket* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %22 = call %struct.bpf_sk_storage_data* @sk_storage_lookup(i32 %20, %struct.bpf_map* %21, i32 1)
  store %struct.bpf_sk_storage_data* %22, %struct.bpf_sk_storage_data** %6, align 8
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = call i32 @sockfd_put(%struct.socket* %23)
  %25 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %6, align 8
  %26 = icmp ne %struct.bpf_sk_storage_data* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %6, align 8
  %29 = getelementptr inbounds %struct.bpf_sk_storage_data, %struct.bpf_sk_storage_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ null, %31 ]
  store i8* %33, i8** %3, align 8
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @ERR_PTR(i32 %35)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local %struct.bpf_sk_storage_data* @sk_storage_lookup(i32, %struct.bpf_map*, i32) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
