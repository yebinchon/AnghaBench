; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_tos_reflect_kern.c_bpf_basertt.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_tos_reflect_kern.c_bpf_basertt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i32, i32, i64 }
%struct.ipv6hdr = type { i32, i32* }
%struct.iphdr = type { i32 }

@SOL_TCP = common dso_local global i32 0, align 4
@TCP_SAVE_SYN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@TCP_SAVED_SYN = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_TCLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_basertt(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca %struct.bpf_sock_ops*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %82 [
    i32 128, label %16
    i32 129, label %21
  ]

16:                                               ; preds = %1
  %17 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %18 = load i32, i32* @SOL_TCP, align 4
  %19 = load i32, i32* @TCP_SAVE_SYN, align 4
  %20 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %17, i32 %18, i32 %19, i32* %7, i32 4)
  store i32 %20, i32* %9, align 4
  br label %83

21:                                               ; preds = %1
  %22 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %23 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AF_INET, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 4, i32* %6, align 4
  br label %29

28:                                               ; preds = %21
  store i32 16, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %31 = load i32, i32* @SOL_TCP, align 4
  %32 = load i32, i32* @TCP_SAVED_SYN, align 4
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @bpf_getsockopt(%struct.bpf_sock_ops* %30, i32 %31, i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %29
  %39 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %40 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AF_INET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %46 = bitcast i8* %45 to %struct.iphdr*
  store %struct.iphdr* %46, %struct.iphdr** %5, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %54 = load i32, i32* @SOL_IP, align 4
  %55 = load i32, i32* @IP_TOS, align 4
  %56 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %53, i32 %54, i32 %55, i32* %8, i32 4)
  br label %57

57:                                               ; preds = %52, %44
  br label %80

58:                                               ; preds = %38
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %60 = bitcast i8* %59 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %60, %struct.ipv6hdr** %4, align 8
  %61 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %62 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 4
  %65 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %66 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 4
  %71 = or i32 %64, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %76 = load i32, i32* @SOL_IPV6, align 4
  %77 = load i32, i32* @IPV6_TCLASS, align 4
  %78 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %75, i32 %76, i32 %77, i32* %8, i32 4)
  br label %79

79:                                               ; preds = %74, %58
  br label %80

80:                                               ; preds = %79, %57
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %29
  br label %83

82:                                               ; preds = %1
  store i32 -1, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %81, %16
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %2, align 8
  %86 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  ret i32 1
}

declare dso_local i32 @bpf_setsockopt(%struct.bpf_sock_ops*, i32, i32, i32*, i32) #1

declare dso_local i32 @bpf_getsockopt(%struct.bpf_sock_ops*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
