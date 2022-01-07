; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_compound_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_compound_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i8*, i32, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.compound_hdr*)* @decode_compound_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_compound_hdr(%struct.xdr_stream* %0, %struct.compound_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.compound_hdr*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.compound_hdr* %1, %struct.compound_hdr** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = call i32* @xdr_inline_decode(%struct.xdr_stream* %7, i32 8)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = call i8* @be32_to_cpup(i32* %19)
  %22 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i8* @be32_to_cpup(i32* %24)
  %26 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %29 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 4
  %33 = ptrtoint i8* %32 to i32
  %34 = call i32* @xdr_inline_decode(%struct.xdr_stream* %28, i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %18
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %74

44:                                               ; preds = %18
  %45 = load i32*, i32** %6, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @XDR_QUADLEN(i8* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @be32_to_cpup(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %60 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %62 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %44
  %69 = load %struct.compound_hdr*, %struct.compound_hdr** %5, align 8
  %70 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @nfs4_stat_to_errno(i8* %71)
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %41, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @XDR_QUADLEN(i8*) #1

declare dso_local i32 @nfs4_stat_to_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
