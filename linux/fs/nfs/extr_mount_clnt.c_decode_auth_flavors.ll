; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_decode_auth_flavors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_decode_auth_flavors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.mountres = type { i32*, i8** }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFS: received %u auth flavors\0A\00", align 1
@NFS_MAX_SECFLAVORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"NFS:   auth flavor[%u]: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.mountres*)* @decode_auth_flavors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_auth_flavors(%struct.xdr_stream* %0, %struct.mountres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.mountres*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.mountres* %1, %struct.mountres** %5, align 8
  %11 = load %struct.mountres*, %struct.mountres** %5, align 8
  %12 = getelementptr inbounds %struct.mountres, %struct.mountres* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %6, align 8
  %14 = load %struct.mountres*, %struct.mountres** %5, align 8
  %15 = getelementptr inbounds %struct.mountres, %struct.mountres* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = call i32* @xdr_inline_decode(%struct.xdr_stream* %22, i32 4)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %90

32:                                               ; preds = %21
  %33 = load i32*, i32** %10, align 8
  %34 = call i8* @be32_to_cpup(i32* %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @NFS_MAX_SECFLAVORS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @NFS_MAX_SECFLAVORS, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %32
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 4, %45
  %47 = call i32* @xdr_inline_decode(%struct.xdr_stream* %44, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %90

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ugt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %56
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %10, align 8
  %72 = call i8* @be32_to_cpup(i32* %70)
  %73 = load i8**, i8*** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %72, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i8**, i8*** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %77, i8* %82)
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %65

87:                                               ; preds = %65
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %53, %29, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
