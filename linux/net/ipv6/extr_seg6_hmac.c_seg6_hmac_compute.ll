; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_compute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_hmac_info = type { i32 }
%struct.ipv6_sr_hdr = type { i32, i8*, i32 }
%struct.in6_addr = type opaque

@SEG6_HMAC_MAX_DIGESTSIZE = common dso_local global i32 0, align 4
@SEG6_HMAC_RING_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@hmac_ring = common dso_local global i32 0, align 4
@SEG6_HMAC_FIELD_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_hmac_compute(%struct.seg6_hmac_info* %0, %struct.ipv6_sr_hdr* %1, %struct.in6_addr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.seg6_hmac_info*, align 8
  %7 = alloca %struct.ipv6_sr_hdr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.seg6_hmac_info* %0, %struct.seg6_hmac_info** %6, align 8
  store %struct.ipv6_sr_hdr* %1, %struct.ipv6_sr_hdr** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %6, align 8
  %21 = getelementptr inbounds %struct.seg6_hmac_info, %struct.seg6_hmac_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call signext i8 @cpu_to_be32(i32 %22)
  store i8 %23, i8* %10, align 1
  %24 = load i32, i32* @SEG6_HMAC_MAX_DIGESTSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = mul nsw i32 %31, 16
  %33 = add nsw i32 22, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @SEG6_HMAC_RING_SIZE, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EMSGSIZE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %113

40:                                               ; preds = %4
  %41 = call i32 (...) @local_bh_disable()
  %42 = load i32, i32* @hmac_ring, align 4
  %43 = call i8* @this_cpu_ptr(i32 %42)
  store i8* %43, i8** %17, align 8
  %44 = load i8*, i8** %17, align 8
  store i8* %44, i8** %18, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %47 = bitcast %struct.in6_addr* %46 to i8*
  %48 = call i32 @memcpy(i8* %45, i8* %47, i32 16)
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 16
  store i8* %50, i8** %18, align 8
  %51 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %18, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %18, align 8
  store i8 %54, i8* %55, align 1
  %57 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %58 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %18, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %18, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i8*, i8** %18, align 8
  %64 = call i32 @memcpy(i8* %63, i8* %10, i32 4)
  %65 = load i8*, i8** %18, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %66, i8** %18, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %85, %40
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %70 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load i8*, i8** %18, align 8
  %76 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %77 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = call i32 @memcpy(i8* %75, i8* %81, i32 16)
  %83 = load i8*, i8** %18, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 16
  store i8* %84, i8** %18, align 8
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %67

88:                                               ; preds = %67
  %89 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %6, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @SEG6_HMAC_MAX_DIGESTSIZE, align 4
  %93 = call i32 @__do_hmac(%struct.seg6_hmac_info* %89, i8* %90, i32 %91, i8* %27, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = call i32 (...) @local_bh_enable()
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %113

99:                                               ; preds = %88
  %100 = load i32, i32* @SEG6_HMAC_FIELD_LEN, align 4
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* @SEG6_HMAC_FIELD_LEN, align 4
  %109 = call i32 @memset(i8* %107, i32 0, i32 %108)
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @memcpy(i8* %110, i8* %27, i32 %111)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %113

113:                                              ; preds = %106, %97, %37
  %114 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local signext i8 @cpu_to_be32(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @__do_hmac(%struct.seg6_hmac_info*, i8*, i32, i8*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
