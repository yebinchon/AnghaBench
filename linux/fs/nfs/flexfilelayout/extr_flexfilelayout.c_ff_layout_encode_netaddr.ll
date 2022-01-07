; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_netaddr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_netaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_pnfs_ds_addr = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@RPCBIND_MAXUADDRPLEN = common dso_local global i32 0, align 4
@RPCBIND_MAXUADDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c".%u.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_pnfs_ds_addr*)* @ff_layout_encode_netaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_encode_netaddr(%struct.xdr_stream* %0, %struct.nfs4_pnfs_ds_addr* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs4_pnfs_ds_addr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs4_pnfs_ds_addr* %1, %struct.nfs4_pnfs_ds_addr** %4, align 8
  %15 = load %struct.nfs4_pnfs_ds_addr*, %struct.nfs4_pnfs_ds_addr** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, %struct.nfs4_pnfs_ds_addr* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %5, align 8
  %18 = load i32, i32* @RPCBIND_MAXUADDRPLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %52 [
    i32 129, label %28
    i32 128, label %40
  ]

28:                                               ; preds = %2
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %30 = trunc i64 %23 to i32
  %31 = call i32 @ff_layout_ntop4(%struct.sockaddr* %29, i8* %24, i32 %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %14, align 4
  br label %82

34:                                               ; preds = %28
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in*
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call zeroext i16 @ntohs(i32 %38)
  store i16 %39, i16* %10, align 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 3, i32* %12, align 4
  br label %54

40:                                               ; preds = %2
  %41 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %42 = trunc i64 %23 to i32
  %43 = call i32 @ff_layout_ntop6_noscopeid(%struct.sockaddr* %41, i8* %24, i32 %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %14, align 4
  br label %82

46:                                               ; preds = %40
  %47 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %48 = bitcast %struct.sockaddr* %47 to %struct.sockaddr_in6*
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call zeroext i16 @ntohs(i32 %50)
  store i16 %51, i16* %10, align 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i32 4, i32* %12, align 4
  br label %54

52:                                               ; preds = %2
  %53 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 1, i32* %14, align 4
  br label %82

54:                                               ; preds = %46, %34
  %55 = trunc i64 %19 to i32
  %56 = load i16, i16* %10, align 2
  %57 = zext i16 %56 to i32
  %58 = ashr i32 %57, 8
  %59 = trunc i32 %58 to i16
  %60 = load i16, i16* %10, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i16
  %64 = call i32 @snprintf(i8* %21, i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %59, i16 zeroext %63)
  %65 = trunc i64 %23 to i32
  %66 = call i32 @strlcat(i8* %24, i8* %21, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 4, %68
  %70 = call i32* @xdr_reserve_space(%struct.xdr_stream* %67, i32 %69)
  store i32* %70, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @xdr_encode_opaque(i32* %71, i8* %72, i32 %73)
  %75 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 4, %76
  %78 = call i32* @xdr_reserve_space(%struct.xdr_stream* %75, i32 %77)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @xdr_encode_opaque(i32* %79, i8* %24, i32 %80)
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %54, %52, %45, %33
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %14, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_layout_ntop4(%struct.sockaddr*, i8*, i32) #2

declare dso_local zeroext i16 @ntohs(i32) #2

declare dso_local i32 @ff_layout_ntop6_noscopeid(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext, i16 zeroext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #2

declare dso_local i32 @xdr_encode_opaque(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
