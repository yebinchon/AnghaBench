; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_calculate_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_calculate_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.sctp_association = type { i64, %struct.TYPE_7__*, %struct.sctp_auth_bytes* }
%struct.TYPE_7__ = type { %struct.crypto_shash** }
%struct.sctp_auth_bytes = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.sctp_auth_chunk = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.sctp_shared_key = type { i32 }

@desc = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_auth_calculate_hmac(%struct.sctp_association* %0, %struct.sk_buff* %1, %struct.sctp_auth_chunk* %2, %struct.sctp_shared_key* %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sctp_auth_chunk*, align 8
  %9 = alloca %struct.sctp_shared_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_auth_bytes*, align 8
  %12 = alloca %struct.crypto_shash*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sctp_auth_chunk* %2, %struct.sctp_auth_chunk** %8, align 8
  store %struct.sctp_shared_key* %3, %struct.sctp_shared_key** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %19 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %24 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ntohs(i32 %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 2
  %36 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %35, align 8
  store %struct.sctp_auth_bytes* %36, %struct.sctp_auth_bytes** %11, align 8
  br label %46

37:                                               ; preds = %5
  %38 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %39 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.sctp_auth_bytes* @sctp_auth_asoc_create_secret(%struct.sctp_association* %38, %struct.sctp_shared_key* %39, i32 %40)
  store %struct.sctp_auth_bytes* %41, %struct.sctp_auth_bytes** %11, align 8
  %42 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %43 = icmp ne %struct.sctp_auth_bytes* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %99

45:                                               ; preds = %37
  store i32 1, i32* %16, align 4
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i8* @skb_tail_pointer(%struct.sk_buff* %47)
  store i8* %48, i8** %15, align 8
  %49 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.crypto_shash**, %struct.crypto_shash*** %52, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds %struct.crypto_shash*, %struct.crypto_shash** %53, i64 %54
  %56 = load %struct.crypto_shash*, %struct.crypto_shash** %55, align 8
  store %struct.crypto_shash* %56, %struct.crypto_shash** %12, align 8
  %57 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %58 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %17, align 8
  %61 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %62 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %63 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %67 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @crypto_shash_setkey(%struct.crypto_shash* %61, i32* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %46
  br label %93

72:                                               ; preds = %46
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %74 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %75 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_9__* %73, %struct.crypto_shash* %74)
  %76 = load %struct.crypto_shash*, %struct.crypto_shash** %12, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.crypto_shash* %76, %struct.crypto_shash** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %80 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %81 = bitcast %struct.sctp_auth_chunk* %80 to i32*
  %82 = load i8*, i8** %15, align 8
  %83 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %8, align 8
  %84 = bitcast %struct.sctp_auth_chunk* %83 to i8*
  %85 = ptrtoint i8* %82 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @crypto_shash_digest(%struct.TYPE_9__* %79, i32* %81, i32 %88, i32* %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %92 = call i32 @shash_desc_zero(%struct.TYPE_9__* %91)
  br label %93

93:                                               ; preds = %72, %71
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %98 = call i32 @sctp_auth_key_put(%struct.sctp_auth_bytes* %97)
  br label %99

99:                                               ; preds = %44, %96, %93
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_asoc_create_secret(%struct.sctp_association*, %struct.sctp_shared_key*, i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @crypto_shash_setkey(%struct.crypto_shash*, i32*, i32) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_9__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_9__*, i32*, i32, i32*) #1

declare dso_local i32 @shash_desc_zero(%struct.TYPE_9__*) #1

declare dso_local i32 @sctp_auth_key_put(%struct.sctp_auth_bytes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
