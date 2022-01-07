; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_get_rec.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_get_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_rec = type { i32*, i32, i32*, %struct.sk_msg, %struct.sk_msg }
%struct.sk_msg = type { i32 }
%struct.sock = type { i32 }
%struct.tls_context = type { %struct.tls_prot_info }
%struct.tls_prot_info = type { i32 }
%struct.tls_sw_context_tx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tls_rec* (%struct.sock*)* @tls_get_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tls_rec* @tls_get_rec(%struct.sock* %0) #0 {
  %2 = alloca %struct.tls_rec*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca %struct.tls_prot_info*, align 8
  %6 = alloca %struct.tls_sw_context_tx*, align 8
  %7 = alloca %struct.sk_msg*, align 8
  %8 = alloca %struct.sk_msg*, align 8
  %9 = alloca %struct.tls_rec*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %11)
  store %struct.tls_context* %12, %struct.tls_context** %4, align 8
  %13 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %14 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %13, i32 0, i32 0
  store %struct.tls_prot_info* %14, %struct.tls_prot_info** %5, align 8
  %15 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %16 = call %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context* %15)
  store %struct.tls_sw_context_tx* %16, %struct.tls_sw_context_tx** %6, align 8
  %17 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %6, align 8
  %18 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @crypto_aead_reqsize(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = add i64 32, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.tls_rec* @kzalloc(i32 %24, i32 %27)
  store %struct.tls_rec* %28, %struct.tls_rec** %9, align 8
  %29 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %30 = icmp ne %struct.tls_rec* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store %struct.tls_rec* null, %struct.tls_rec** %2, align 8
  br label %82

32:                                               ; preds = %1
  %33 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %34 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %33, i32 0, i32 4
  store %struct.sk_msg* %34, %struct.sk_msg** %7, align 8
  %35 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %36 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %35, i32 0, i32 3
  store %struct.sk_msg* %36, %struct.sk_msg** %8, align 8
  %37 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %38 = call i32 @sk_msg_init(%struct.sk_msg* %37)
  %39 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %40 = call i32 @sk_msg_init(%struct.sk_msg* %39)
  %41 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %42 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @sg_init_table(i32* %43, i32 2)
  %45 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %46 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %50 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tls_prot_info*, %struct.tls_prot_info** %5, align 8
  %53 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sg_set_buf(i32* %48, i32 %51, i32 %54)
  %56 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %57 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i32 @sg_unmark_end(i32* %59)
  %61 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %62 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @sg_init_table(i32* %63, i32 2)
  %65 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %66 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %70 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tls_prot_info*, %struct.tls_prot_info** %5, align 8
  %73 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sg_set_buf(i32* %68, i32 %71, i32 %74)
  %76 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  %77 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = call i32 @sg_unmark_end(i32* %79)
  %81 = load %struct.tls_rec*, %struct.tls_rec** %9, align 8
  store %struct.tls_rec* %81, %struct.tls_rec** %2, align 8
  br label %82

82:                                               ; preds = %32, %31
  %83 = load %struct.tls_rec*, %struct.tls_rec** %2, align 8
  ret %struct.tls_rec* %83
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_tx* @tls_sw_ctx_tx(%struct.tls_context*) #1

declare dso_local i32 @crypto_aead_reqsize(i32) #1

declare dso_local %struct.tls_rec* @kzalloc(i32, i32) #1

declare dso_local i32 @sk_msg_init(%struct.sk_msg*) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_set_buf(i32*, i32, i32) #1

declare dso_local i32 @sg_unmark_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
