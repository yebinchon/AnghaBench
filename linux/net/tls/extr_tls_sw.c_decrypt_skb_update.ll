; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_decrypt_skb_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_decrypt_skb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iov_iter = type { i32 }
%struct.tls_context = type { i64, i32, %struct.tls_prot_info }
%struct.tls_prot_info = type { i64, i64 }
%struct.tls_sw_context_rx = type { i32, i32 (%struct.sock.0*)* }
%struct.sock.0 = type opaque
%struct.strp_msg = type { i32, i32 }

@TLS_HW = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.iov_iter*, i32*, i32*, i32)* @decrypt_skb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt_skb_update(%struct.sock* %0, %struct.sk_buff* %1, %struct.iov_iter* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.iov_iter*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tls_context*, align 8
  %15 = alloca %struct.tls_sw_context_rx*, align 8
  %16 = alloca %struct.tls_prot_info*, align 8
  %17 = alloca %struct.strp_msg*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %20)
  store %struct.tls_context* %21, %struct.tls_context** %14, align 8
  %22 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %23 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %22)
  store %struct.tls_sw_context_rx* %23, %struct.tls_sw_context_rx** %15, align 8
  %24 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %25 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %24, i32 0, i32 2
  store %struct.tls_prot_info* %25, %struct.tls_prot_info** %16, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = call %struct.strp_msg* @strp_msg(%struct.sk_buff* %26)
  store %struct.strp_msg* %27, %struct.strp_msg** %17, align 8
  store i32 0, i32* %19, align 4
  %28 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %29 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %124, label %32

32:                                               ; preds = %6
  %33 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %34 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TLS_HW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = call i32 @tls_device_decrypted(%struct.sock* %39, %struct.sk_buff* %40)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %7, align 4
  br label %128

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %49 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %47
  %53 = load %struct.sock*, %struct.sock** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @decrypt_internal(%struct.sock* %53, %struct.sk_buff* %54, %struct.iov_iter* %55, i32* null, i32* %56, i32* %57, i32 %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %52
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @EINPROGRESS, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.sock*, %struct.sock** %8, align 8
  %69 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %70 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %71 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %70, i32 0, i32 1
  %72 = call i32 @tls_advance_record_sn(%struct.sock* %68, %struct.tls_prot_info* %69, i32* %71)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %19, align 4
  store i32 %74, i32* %7, align 4
  br label %128

75:                                               ; preds = %52
  br label %78

76:                                               ; preds = %47
  %77 = load i32*, i32** %12, align 8
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %80 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = call i32 @padding_length(%struct.tls_sw_context_rx* %79, %struct.tls_prot_info* %80, %struct.sk_buff* %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %18, align 4
  store i32 %86, i32* %7, align 4
  br label %128

87:                                               ; preds = %78
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.strp_msg*, %struct.strp_msg** %17, align 8
  %90 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %94 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.strp_msg*, %struct.strp_msg** %17, align 8
  %97 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %103 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.strp_msg*, %struct.strp_msg** %17, align 8
  %106 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load %struct.sock*, %struct.sock** %8, align 8
  %112 = load %struct.tls_prot_info*, %struct.tls_prot_info** %16, align 8
  %113 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %114 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %113, i32 0, i32 1
  %115 = call i32 @tls_advance_record_sn(%struct.sock* %111, %struct.tls_prot_info* %112, i32* %114)
  %116 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %117 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %15, align 8
  %119 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %118, i32 0, i32 1
  %120 = load i32 (%struct.sock.0*)*, i32 (%struct.sock.0*)** %119, align 8
  %121 = load %struct.sock*, %struct.sock** %8, align 8
  %122 = bitcast %struct.sock* %121 to %struct.sock.0*
  %123 = call i32 %120(%struct.sock.0* %122)
  br label %126

124:                                              ; preds = %6
  %125 = load i32*, i32** %12, align 8
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %87
  %127 = load i32, i32* %19, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %85, %73, %44
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local %struct.strp_msg* @strp_msg(%struct.sk_buff*) #1

declare dso_local i32 @tls_device_decrypted(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @decrypt_internal(%struct.sock*, %struct.sk_buff*, %struct.iov_iter*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @tls_advance_record_sn(%struct.sock*, %struct.tls_prot_info*, i32*) #1

declare dso_local i32 @padding_length(%struct.tls_sw_context_rx*, %struct.tls_prot_info*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
