; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_hash_update_elem.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_hash_update_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i8*, i8*, i32)* @sock_hash_update_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_hash_update_elem(%struct.bpf_map* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.socket* @sockfd_lookup(i32 %17, i32* %13)
  store %struct.socket* %18, %struct.socket** %11, align 8
  %19 = load %struct.socket*, %struct.socket** %11, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %61

23:                                               ; preds = %4
  %24 = load %struct.socket*, %struct.socket** %11, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %12, align 8
  %27 = load %struct.sock*, %struct.sock** %12, align 8
  %28 = icmp ne %struct.sock* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %13, align 4
  br label %55

32:                                               ; preds = %23
  %33 = load %struct.sock*, %struct.sock** %12, align 8
  %34 = call i32 @sock_map_sk_is_suitable(%struct.sock* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.sock*, %struct.sock** %12, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCP_ESTABLISHED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %32
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.sock*, %struct.sock** %12, align 8
  %47 = call i32 @sock_map_sk_acquire(%struct.sock* %46)
  %48 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.sock*, %struct.sock** %12, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @sock_hash_update_common(%struct.bpf_map* %48, i8* %49, %struct.sock* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.sock*, %struct.sock** %12, align 8
  %54 = call i32 @sock_map_sk_release(%struct.sock* %53)
  br label %55

55:                                               ; preds = %45, %42, %29
  %56 = load %struct.socket*, %struct.socket** %11, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @fput(i32 %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %21
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @sock_map_sk_is_suitable(%struct.sock*) #1

declare dso_local i32 @sock_map_sk_acquire(%struct.sock*) #1

declare dso_local i32 @sock_hash_update_common(%struct.bpf_map*, i8*, %struct.sock*, i32) #1

declare dso_local i32 @sock_map_sk_release(%struct.sock*) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
