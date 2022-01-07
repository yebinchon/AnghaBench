; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c__sctp_make_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c__sctp_make_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i8**, i32, %struct.sctp_chunkhdr* }
%struct.sctp_chunkhdr = type { i32, i8*, i8* }
%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@SCTP_MAX_CHUNK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, i8*, i8*, i32, i32)* @_sctp_make_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @_sctp_make_chunk(%struct.sctp_association* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_chunkhdr*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 24, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @SCTP_PAD4(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* @SCTP_MAX_CHUNK_LEN, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %84

26:                                               ; preds = %5
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.sk_buff* @alloc_skb(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %14, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %84

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %35 = call i64 @skb_put(%struct.sk_buff* %34, i32 24)
  %36 = inttoptr i64 %35 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %36, %struct.sctp_chunkhdr** %12, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %12, align 8
  %39 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %12, align 8
  %42 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = call i32 @htons(i32 24)
  %44 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %12, align 8
  %45 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %47 = icmp ne %struct.sctp_association* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.sock*, %struct.sock** %51, align 8
  br label %54

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi %struct.sock* [ %52, %48 ], [ null, %53 ]
  store %struct.sock* %55, %struct.sock** %15, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %57 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %58 = load %struct.sock*, %struct.sock** %15, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call %struct.sctp_chunk* @sctp_chunkify(%struct.sk_buff* %56, %struct.sctp_association* %57, %struct.sock* %58, i32 %59)
  store %struct.sctp_chunk* %60, %struct.sctp_chunk** %13, align 8
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %62 = icmp ne %struct.sctp_chunk* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %84

66:                                               ; preds = %54
  %67 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %12, align 8
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %69 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %68, i32 0, i32 2
  store %struct.sctp_chunkhdr* %67, %struct.sctp_chunkhdr** %69, align 8
  %70 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %12, align 8
  %71 = bitcast %struct.sctp_chunkhdr* %70 to i8**
  %72 = getelementptr inbounds i8*, i8** %71, i64 24
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %74 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %73, i32 0, i32 0
  store i8** %72, i8*** %74, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %77 = call i64 @sctp_auth_send_cid(i8* %75, %struct.sctp_association* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %81 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %66
  %83 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  store %struct.sctp_chunk* %83, %struct.sctp_chunk** %6, align 8
  br label %85

84:                                               ; preds = %63, %32, %25
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %6, align 8
  br label %85

85:                                               ; preds = %84, %82
  %86 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  ret %struct.sctp_chunk* %86
}

declare dso_local i32 @SCTP_PAD4(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_chunkify(%struct.sk_buff*, %struct.sctp_association*, %struct.sock*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @sctp_auth_send_cid(i8*, %struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
