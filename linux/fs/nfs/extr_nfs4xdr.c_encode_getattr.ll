; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@nfs4_fattr_bitmap_maxsz = common dso_local global i32 0, align 4
@OP_GETATTR = common dso_local global i32 0, align 4
@decode_getattr_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, i32*, i32*, i64, %struct.compound_hdr*)* @encode_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_getattr(%struct.xdr_stream* %0, i32* %1, i32* %2, i64 %3, %struct.compound_hdr* %4) #0 {
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.compound_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.compound_hdr* %4, %struct.compound_hdr** %10, align 8
  %13 = load i32, i32* @nfs4_fattr_bitmap_maxsz, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %18 = load i32, i32* @OP_GETATTR, align 4
  %19 = load i32, i32* @decode_getattr_maxsz, align 4
  %20 = load %struct.compound_hdr*, %struct.compound_hdr** %10, align 8
  %21 = call i32 @encode_op_hdr(%struct.xdr_stream* %17, i32 %18, i32 %19, %struct.compound_hdr* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @ARRAY_SIZE(i32* %16)
  %27 = icmp ugt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i64 @ARRAY_SIZE(i32* %16)
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @mask_bitmap4(i32* %34, i32* %35, i32* %16, i64 %36)
  store i64 %37, i64* %9, align 8
  store i32* %16, i32** %7, align 8
  br label %38

38:                                               ; preds = %33, %5
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @xdr_encode_bitmap4(%struct.xdr_stream* %39, i32* %40, i64 %41)
  %43 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @mask_bitmap4(i32*, i32*, i32*, i64) #2

declare dso_local i32 @xdr_encode_bitmap4(%struct.xdr_stream*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
