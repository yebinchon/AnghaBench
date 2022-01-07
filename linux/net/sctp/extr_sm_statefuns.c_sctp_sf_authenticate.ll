; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_authenticate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64 }
%struct.sctp_chunk = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { %struct.sctp_authhdr* }
%struct.sctp_authhdr = type { i32*, i32, i32 }
%struct.sctp_shared_key = type { i32 }
%struct.sctp_hmac = type { i32 }
%struct.sctp_auth_chunk = type { i32 }

@SCTP_IERROR_AUTH_BAD_HMAC = common dso_local global i32 0, align 4
@SCTP_IERROR_AUTH_BAD_KEYID = common dso_local global i32 0, align 4
@SCTP_IERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_IERROR_BAD_SIG = common dso_local global i32 0, align 4
@SCTP_IERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_IERROR_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.sctp_chunk*)* @sctp_sf_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_authenticate(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_shared_key*, align 8
  %7 = alloca %struct.sctp_authhdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sctp_hmac*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store %struct.sctp_shared_key* null, %struct.sctp_shared_key** %6, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.sctp_authhdr*
  store %struct.sctp_authhdr* %18, %struct.sctp_authhdr** %7, align 8
  %19 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %7, align 8
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.sctp_authhdr* %19, %struct.sctp_authhdr** %22, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 @skb_pull(%struct.TYPE_7__* %25, i32 16)
  %27 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %28 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sctp_auth_asoc_verify_hmac_id(%struct.sctp_association* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @SCTP_IERROR_AUTH_BAD_HMAC, align 4
  store i32 %34, i32* %3, align 4
  br label %123

35:                                               ; preds = %2
  %36 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call %struct.sctp_shared_key* @sctp_auth_get_shkey(%struct.sctp_association* %46, i64 %47)
  store %struct.sctp_shared_key* %48, %struct.sctp_shared_key** %6, align 8
  %49 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %50 = icmp ne %struct.sctp_shared_key* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @SCTP_IERROR_AUTH_BAD_KEYID, align 4
  store i32 %52, i32* %3, align 4
  br label %123

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %56 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntohs(i32 %59)
  %61 = sub i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ntohs(i32 %65)
  %67 = call %struct.sctp_hmac* @sctp_auth_get_hmac(i64 %66)
  store %struct.sctp_hmac* %67, %struct.sctp_hmac** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.sctp_hmac*, %struct.sctp_hmac** %10, align 8
  %70 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %54
  %74 = load i32, i32* @SCTP_IERROR_PROTO_VIOLATION, align 4
  store i32 %74, i32* %3, align 4
  br label %123

75:                                               ; preds = %54
  %76 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %7, align 8
  %77 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %9, align 8
  %79 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %80 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @skb_pull(%struct.TYPE_7__* %81, i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call i32* @kmemdup(i32* %84, i32 %85, i32 %86)
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %75
  br label %121

91:                                               ; preds = %75
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @memset(i32* %92, i32 0, i32 %93)
  %95 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %96 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %97 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %100 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = bitcast %struct.TYPE_6__* %101 to %struct.sctp_auth_chunk*
  %103 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %104 = load i32, i32* @GFP_ATOMIC, align 4
  %105 = call i32 @sctp_auth_calculate_hmac(%struct.sctp_association* %95, %struct.TYPE_7__* %98, %struct.sctp_auth_chunk* %102, %struct.sctp_shared_key* %103, i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i64 @memcmp(i32* %106, i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %91
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @kfree(i32* %112)
  %114 = load i32, i32* @SCTP_IERROR_BAD_SIG, align 4
  store i32 %114, i32* %3, align 4
  br label %123

115:                                              ; preds = %91
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %119 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @SCTP_IERROR_NO_ERROR, align 4
  store i32 %120, i32* %3, align 4
  br label %123

121:                                              ; preds = %90
  %122 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %115, %111, %73, %51, %33
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @skb_pull(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sctp_auth_asoc_verify_hmac_id(%struct.sctp_association*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_shared_key* @sctp_auth_get_shkey(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_hmac* @sctp_auth_get_hmac(i64) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sctp_auth_calculate_hmac(%struct.sctp_association*, %struct.TYPE_7__*, %struct.sctp_auth_chunk*, %struct.sctp_shared_key*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
