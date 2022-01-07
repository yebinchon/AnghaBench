; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_fd_sk_storage_update_elem.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_fd_sk_storage_update_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_sk_storage_data = type { i32 }
%struct.socket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i8*, i8*, i32)* @bpf_fd_sk_storage_update_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fd_sk_storage_update_elem(%struct.bpf_map* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_sk_storage_data*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call %struct.socket* @sockfd_lookup(i32 %17, i32* %13)
  store %struct.socket* %18, %struct.socket** %11, align 8
  %19 = load %struct.socket*, %struct.socket** %11, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.socket*, %struct.socket** %11, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.bpf_sk_storage_data* @sk_storage_update(i32 %24, %struct.bpf_map* %25, i8* %26, i32 %27)
  store %struct.bpf_sk_storage_data* %28, %struct.bpf_sk_storage_data** %10, align 8
  %29 = load %struct.socket*, %struct.socket** %11, align 8
  %30 = call i32 @sockfd_put(%struct.socket* %29)
  %31 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %32 = call i32 @PTR_ERR_OR_ZERO(%struct.bpf_sk_storage_data* %31)
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local %struct.bpf_sk_storage_data* @sk_storage_update(i32, %struct.bpf_map*, i8*, i32) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.bpf_sk_storage_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
