; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_setup_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_setup_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry* }
%struct.nfs4_readdir_arg = type { i32, i8, i32, i32, i32* }

@FATTR4_WORD0_FILEID = common dso_local global i32 0, align 4
@FATTR4_WORD0_TYPE = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i8* null, align 8
@xdr_zero = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".\00\00\00\00", align 1
@NF4DIR = common dso_local global i32 0, align 4
@xdr_two = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"..\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.dentry*, %struct.nfs4_readdir_arg*)* @nfs4_setup_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_setup_readdir(i32 %0, i8* %1, %struct.dentry* %2, %struct.nfs4_readdir_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.nfs4_readdir_arg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.nfs4_readdir_arg* %3, %struct.nfs4_readdir_arg** %8, align 8
  %12 = load i32, i32* @FATTR4_WORD0_FILEID, align 4
  %13 = load i32, i32* @FATTR4_WORD0_TYPE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %20 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %22 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %21, i32 0, i32 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @memcpy(i8* %22, i8* %23, i32 1)
  br label %149

25:                                               ; preds = %4
  %26 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %27 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %29 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %28, i32 0, i32 1
  %30 = call i32 @memset(i8* %29, i32 0, i32 1)
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %149

34:                                               ; preds = %25
  %35 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %36 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @kmap_atomic(i32 %38)
  store i8* %39, i8** %11, align 8
  store i8* %39, i8** %10, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %34
  %43 = load i8*, i8** @xdr_one, align 8
  %44 = ptrtoint i8* %43 to i8
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %11, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i8*, i8** @xdr_zero, align 8
  %48 = ptrtoint i8* %47 to i8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8*, i8** @xdr_one, align 8
  %52 = ptrtoint i8* %51 to i8
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8*, i8** @xdr_one, align 8
  %56 = ptrtoint i8* %55 to i8
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @memcpy(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** @xdr_one, align 8
  %64 = ptrtoint i8* %63 to i8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %11, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i32, i32* %9, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = ptrtoint i8* %68 to i8
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %11, align 8
  store i8 %69, i8* %70, align 1
  %72 = call i8* @htonl(i32 12)
  %73 = ptrtoint i8* %72 to i8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %11, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* @NF4DIR, align 4
  %77 = call i8* @htonl(i32 %76)
  %78 = ptrtoint i8* %77 to i8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8*, i8** %11, align 8
  %82 = load %struct.dentry*, %struct.dentry** %7, align 8
  %83 = call i32 @d_inode(%struct.dentry* %82)
  %84 = call i32 @NFS_FILEID(i32 %83)
  %85 = call i8* @xdr_encode_hyper(i8* %81, i32 %84)
  store i8* %85, i8** %11, align 8
  br label %86

86:                                               ; preds = %42, %34
  %87 = load i8*, i8** @xdr_one, align 8
  %88 = ptrtoint i8* %87 to i8
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i8*, i8** @xdr_zero, align 8
  %92 = ptrtoint i8* %91 to i8
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %11, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i8*, i8** @xdr_two, align 8
  %96 = ptrtoint i8* %95 to i8
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i8*, i8** @xdr_two, align 8
  %100 = ptrtoint i8* %99 to i8
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %11, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @memcpy(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  %107 = load i8*, i8** @xdr_one, align 8
  %108 = ptrtoint i8* %107 to i8
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %11, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i32, i32* %9, align 4
  %112 = call i8* @htonl(i32 %111)
  %113 = ptrtoint i8* %112 to i8
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  store i8 %113, i8* %114, align 1
  %116 = call i8* @htonl(i32 12)
  %117 = ptrtoint i8* %116 to i8
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %11, align 8
  store i8 %117, i8* %118, align 1
  %120 = load i32, i32* @NF4DIR, align 4
  %121 = call i8* @htonl(i32 %120)
  %122 = ptrtoint i8* %121 to i8
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %11, align 8
  store i8 %122, i8* %123, align 1
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.dentry*, %struct.dentry** %7, align 8
  %127 = getelementptr inbounds %struct.dentry, %struct.dentry* %126, i32 0, i32 0
  %128 = load %struct.dentry*, %struct.dentry** %127, align 8
  %129 = call i32 @d_inode(%struct.dentry* %128)
  %130 = call i32 @NFS_FILEID(i32 %129)
  %131 = call i8* @xdr_encode_hyper(i8* %125, i32 %130)
  store i8* %131, i8** %11, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %139 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %141 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.nfs4_readdir_arg*, %struct.nfs4_readdir_arg** %8, align 8
  %144 = getelementptr inbounds %struct.nfs4_readdir_arg, %struct.nfs4_readdir_arg* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @kunmap_atomic(i8* %147)
  br label %149

149:                                              ; preds = %86, %33, %17
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @xdr_encode_hyper(i8*, i32) #1

declare dso_local i32 @NFS_FILEID(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
