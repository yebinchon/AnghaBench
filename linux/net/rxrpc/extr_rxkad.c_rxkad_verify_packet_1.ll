; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.rxkad_level1_hdr = type { i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rxkad_1_hdr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"V1H\00", align 1
@RXKADSEALEDINCON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"rxkad_1_len\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"XV1\00", align 1
@RXKADDATALEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"rxkad_1_check\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"V1C\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"rxkad_1_datalen\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"V1L\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" = 0 [dlen=%x]\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, %struct.skcipher_request*)* @rxkad_verify_packet_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_verify_packet_1(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, %struct.skcipher_request* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxrpc_call*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.skcipher_request*, align 8
  %14 = alloca %struct.rxkad_level1_hdr, align 4
  %15 = alloca %struct.rxrpc_crypt, align 4
  %16 = alloca [16 x %struct.scatterlist], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.skcipher_request* %5, %struct.skcipher_request** %13, align 8
  %22 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %11, align 4
  %24 = icmp ult i32 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load i32, i32* @RXKADSEALEDINCON, align 4
  %29 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %26, %struct.sk_buff* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %17, align 4
  br label %120

30:                                               ; preds = %6
  %31 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %16, i64 0, i64 0
  %32 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %16, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(%struct.scatterlist* %32)
  %34 = call i32 @sg_init_table(%struct.scatterlist* %31, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %16, i64 0, i64 0
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @skb_to_sgvec(%struct.sk_buff* %35, %struct.scatterlist* %36, i32 %37, i32 8)
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %21, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %7, align 4
  br label %129

46:                                               ; preds = %30
  %47 = call i32 @memset(%struct.rxrpc_crypt* %15, i32 0, i32 4)
  %48 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %49 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %50 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %48, i32 %53)
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %56 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %55, i32 0, i32* null, i32* null)
  %57 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %58 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %16, i64 0, i64 0
  %59 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %16, i64 0, i64 0
  %60 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %15, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %57, %struct.scatterlist* %58, %struct.scatterlist* %59, i32 8, i32 %61)
  %63 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %64 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %63)
  %65 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %66 = call i32 @skcipher_request_zero(%struct.skcipher_request* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @skb_copy_bits(%struct.sk_buff* %67, i32 %68, %struct.rxkad_level1_hdr* %14, i32 4)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %46
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = load i32, i32* @RXKADDATALEN, align 4
  %75 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %72, %struct.sk_buff* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %17, align 4
  br label %120

76:                                               ; preds = %46
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = sub i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = getelementptr inbounds %struct.rxkad_level1_hdr, %struct.rxkad_level1_hdr* %14, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ntohl(i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = and i32 %88, 65535
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = ashr i32 %90, 16
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %94 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 %92, %95
  %97 = load i32, i32* %20, align 4
  %98 = xor i32 %97, %96
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = and i32 %99, 65535
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %76
  %104 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = load i32, i32* @RXKADSEALEDINCON, align 4
  %107 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %104, %struct.sk_buff* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  store i32 %107, i32* %17, align 4
  br label %120

108:                                              ; preds = %76
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = load i32, i32* @RXKADDATALEN, align 4
  %116 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %113, %struct.sk_buff* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  store i32 %116, i32* %17, align 4
  br label %120

117:                                              ; preds = %108
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %118)
  store i32 0, i32* %7, align 4
  br label %129

120:                                              ; preds = %112, %103, %71, %25
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %125 = call i32 @rxrpc_send_abort_packet(%struct.rxrpc_call* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* @EPROTO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %126, %117, %44
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @rxrpc_abort_eproto(%struct.rxrpc_call*, %struct.sk_buff*, i8*, i8*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.scatterlist*) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_zero(%struct.skcipher_request*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxkad_level1_hdr*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @rxrpc_send_abort_packet(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
