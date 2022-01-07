; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_decode_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_decode_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }

@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i8**)* @decode_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_bitmap(%struct.xdr_stream* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_inline_decode(%struct.xdr_stream* %8, i32 4)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %17 = call i32 @htonl(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @ntohl(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 2
  %26 = call i32* @xdr_inline_decode(%struct.xdr_stream* %23, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %34 = call i32 @htonl(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = icmp ugt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i8* @ntohl(i32 %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %41, %35
  %49 = load i32, i32* %7, align 4
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ntohl(i32 %53)
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %51, %48
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %32, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
